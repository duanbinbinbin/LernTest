#include "skip_list.h"
#include <stdlib.h>

typedef struct data_s *data_t;

typedef struct node_s *node_t;

//��ʾ�ڵ��д洢�ļ�ֵ��
struct data_s {
	int key;
	void *value;
};

//��ʾ�����еĽڵ�
struct node_s {
	node_t right;
	node_t down;
	data_t data;	//ע��ͬһ�е����нڵ㶼ָ��ͬһ��data
};

//���ն���������ĸ��ʷֲ��������һ���ڵ�߶�
static inline int
rand_level() {
	int level = 1;
	while(rand()&1) {
		level++;
	}
	return level;
}

//��node�ұ߿�ʼ������²���key��Ӧ�ļ�ֵ��
//��ĳһ���ҵ��Ժ��������أ�����߲����ٶ�
//node����ΪNULL
static inline data_t
search_data(node_t node, int key) {
	for(; node; node = node->down) {
		for(; node->right && key > node->right->data->key; node = node->right);
		//��ʱnode->data->key < key <= node->right->data->key
		if(node->right && key == node->right->data->key) {
			return node->right->data;
		}
	}
	return NULL;
}

//��node�ұ߿�ʼ������²���key��Ӧ�ļ�ֵ�ԣ�������ֱ·����¼��upadte������
//�����ߵ���ײ��Ժ�ŷ��أ��Ա��¼������update·��
//node��update����ΪNULL
static inline data_t
search_data_update(node_t node, int key, node_t *update) {
	for(;; node = node->down) {
		for(; node->right && key > node->right->data->key; node = node->right);
		//node->data->key < key <= node->right->data->key
		//��֤��ǰnodeһ����Ŀ��key����ߣ��Ա�removeʱ����
		*update++ = node;
		if(!node->down) {
			break;
		}
	}
	if(node->right && key == node->right->data->key) {
		return node->right->data;
	}
	return NULL;
}

//�����������������һЩ�ղ�
//top_left����ΪNULL�����ܿ��ԸĽ�
static inline int
gain_empty_top_lines(node_t top_left, int count) {
	int i;
	for(i = 0; i < count; i++) {
		node_t tmp;
		tmp = (node_t)malloc(sizeof(struct node_s));
		tmp->right = top_left->right;
		tmp->down = top_left->down;
		top_left->right = NULL;
		top_left->down = tmp;
	}
	return i;
}

//����������ļ����ղ�
//top_left����ΪNULL�����ܿ��ԸĽ�
static inline int
clean_empty_top_lines(node_t top_left) {
	int count;
	for(count = 0; !top_left->right; count++) {
		node_t tmp = top_left->down;
		if(!tmp) {
			break;
		}
		top_left->right = tmp->right;
		top_left->down = tmp->down;
		free(tmp);
	}
	return count;
}

//��������Ϊ�µļ�ֵ������һ��λ��
//data��update����ΪNULL
static inline void
add_key_column(data_t data, node_t *update, int length) {
	int i;
	for(i=0; i<length; i++) {
		node_t tmp;
		tmp = (node_t)malloc(sizeof(struct node_s));
		tmp->data = data;
		tmp->right = update[i]->right;
		update[i]->right = tmp;
	}
	for(i=0; i<length-1; i++) {
		update[i]->right->down = update[i+1]->right;
	}
	update[length-1]->right->down = NULL;
}

//��������ɾ��key���ڵ���
//update����ΪNULL
static inline void
remove_key_column(int key, node_t *update, int length) {
	int i;
	for(i = 0; i < length; i++) {
		node_t right = update[i]->right;
		if(right && right->data->key == key) {
			update[i]->right = right->right;
			free(right);
		}
	}
}

//�ͷŽڵ㲢����������һ�����ұ߻��±ߣ��ڵ�
static inline node_t
free_and_next(node_t node, node_t next) {
	free(node);
	return next;
}

struct skip_list_s {
	struct node_s top_left;	//�������ϽǵĽڵ�
	int level;	//�������
	int count;	//�����м�ֵ�Ե�����
};

skip_list_t
skip_list_create() {
	skip_list_t sl;
	sl = (skip_list_t)malloc(sizeof(struct skip_list_s));
	sl->top_left.right = NULL;
	sl->top_left.down = NULL;
	sl->level = 1;
	sl->count = 0;
	return sl;
}

void
skip_list_destroy(skip_list_t sl) {
	node_t left, node;
	for(left = &sl->top_left; left->down; left = left->down) {
		for(node = left->right; node; node = free_and_next(node, node->right));
	}
	for(node = left->right; node; node = free_and_next(node, node->right));
	for(left = sl->top_left.down; left; left = free_and_next(left, left->down));
	free(sl);
}

void*
skip_list_get(skip_list_t sl, int key) {
	data_t data;
	data = search_data(&sl->top_left, key);
	if(data) {
		return data->value;
	}
	return NULL;
}


void*
skip_list_put(skip_list_t sl, int key, void *value) {
	void *old_value = NULL;
	data_t data;
	data = search_data(&sl->top_left, key);
	if(data) {
		old_value = data->value;
		data->value = value;
	} else {
		node_t *update;
		int target_level;
		target_level = rand_level();
		if(target_level > sl->level) {
			sl->level += gain_empty_top_lines(&sl->top_left, target_level-sl->level);
		}
		update = (node_t*)malloc(sizeof(node_t)*sl->level);
		search_data_update(&sl->top_left, key, update);
		data = (data_t)malloc(sizeof(struct data_s));
		data->key = key;
		data->value = value;
		//target_level<=sl->level
		add_key_column(data, update+(sl->level-target_level), target_level);
		free(update);
		sl->count++;
	}
	return old_value;
}

void*
skip_list_remove(skip_list_t sl, int key) {
	void *old_value = NULL;
	node_t *update;
	data_t data;
	update = (node_t*)malloc(sizeof(node_t)*sl->level);
	data = search_data_update(&sl->top_left, key, update);
	if(data) {
		//ɾ��key������
		remove_key_column(key, update, sl->level);
		//�����ɾ��key�������Ժ�������ֵĿ���
		sl->level -= clean_empty_top_lines(&sl->top_left);
		old_value = data->value;
		free(data);
		sl->count--;
	}
	free(update);
	return old_value;
}

int
skip_list_contains(skip_list_t sl, int key) {
	return !!search_data(&sl->top_left, key);
}


int
skip_list_count(skip_list_t sl) {
	return sl->count;
}

int
skip_list_key_set(skip_list_t sl, int keys[], int length) {
	int i;
	node_t left, node;
	for(left = &sl->top_left; left->down; left = left->down);
	for(i = 0, node = left->right; i<length && node; i++, node = node->right) {
		keys[i] = node->data->key;
	}
	return i;
}

int
skip_list_value_set(skip_list_t sl, void *values[], int length) {
	int i;
	node_t left, node;
	for(left = &sl->top_left; left->down; left = left->down);
	for(i = 0, node = left->right; i<length && node; i++, node = node->right) {
		values[i] = node->data->value;
	}
	return i;
}
