delete t_pp_billprcplan where BILLPRCID = '140006';
insert into t_pp_billprcplan values('140006','140006','8','ss,si','s','0',1,75,?,'00000','20180801000000','20500101000000','0','漫游任何地方的数据标批资费，未订购二批资费，拒绝使用') <lob>='14000601';

delete from short_term_product where prod_prcid = 'HKPMF4AJK003H06';
insert into short_term_product(prod_prcid) values('HKPMF4AJK003H06');

delete t_pp_billprcplan where BILLPRCID = '830134';
insert into t_pp_billprcplan values('830134','830134','1','gg,gs,vc,ss','g,v,s','1',1,50,?,'0A000','20180801000000','20500101000000','0','XGLT-201807271330219774G日韓6日通話上網卡-4G日韓6天話音及數據卡$118') <lob>='mut(83013401,mut(83013402,mut(83013403,mut(83013404,mut(83013421,mut(83013411,83013412))))))';

delete t_pp_billprcplan where BILLPRCID = '140007';
insert into t_pp_billprcplan values('140007','140007','4','vc','v','0',1,75,?,'00000','20180801000000','20500101000000','0','漫游任何地方的语音标批资费，未订购二批资费，拒绝使用') <lob>='14000701';

delete t_pp_billprcplan where BILLPRCID = '140005';
insert into t_pp_billprcplan values('140005','140005','8','gg,gs','g','0',1,75,?,'00000','20180801000000','20500101000000','0','漫游任何地方的数据标批资费，未订购二批资费，拒绝使用') <lob>='14000501';

delete from SBILLMODEDETAIL where mode_code = '830134';
insert into SBILLMODEDETAIL(owner_type,REGION_CODE,DETAIL_CODE,detail_type,mode_code,fav_order,MODE_TIME,TIME_FLAG,BEGIN_TIME,END_TIME,EFF_TIME,EXP_TIME) values ('0','0','468800741','1','830134',1,'0','0','20180801000000','20500101000000','20180801000000','20500101000000');

insert into SBILLMODEDETAIL(owner_type,REGION_CODE,DETAIL_CODE,detail_type,mode_code,fav_order,MODE_TIME,TIME_FLAG,BEGIN_TIME,END_TIME,EFF_TIME,EXP_TIME) values ('0','0','830134','0','830134',1,'0','0','20180801000000','20500101000000','20180801000000','20500101000000');

delete t_pp_subprcplan where SUBBILLPRCID = '14000601';
insert into t_pp_subprcplan values('14000601','0','ss,si','F101','0000c','20180801000000','20500101000000','0','漫游任何地方的短信标批资费，未订购二批资费，拒绝使用');

delete t_pp_subprcplan where SUBBILLPRCID = '14000501';
insert into t_pp_subprcplan values('14000501','0','gg,gs','F101','0000c','20180801000000','20500101000000','0','漫游任何地方的数据标批资费，未订购二批资费，拒绝使用');

delete t_pp_subprcplan where SUBBILLPRCID = '14000701';
insert into t_pp_subprcplan values('14000701','0','vc','F101','0000c','20180801000000','20500101000000','0','漫游任何地方的语音标批资费，未订购二批资费，拒绝使用');

delete from PD_TRANSPRODPRC where prod_prc = '830134';
insert into PD_TRANSPRODPRC(region_code,user_prc,pricing_id,prod_prc,state,note) values ('0','HKPMF4AJK003H06','468800741','830134','0','XGLT-201807271330219774G日韓6日通話上網卡');


delete t_pp_subprcparam where SUBBILLPRCID = '14000601';

insert into  t_pp_subprcparam values('14000601','fee_types','*','0');
insert into  t_pp_subprcparam values('14000601','billrebillflag','0','0');
insert into  t_pp_subprcparam values('14000601','system_types','ss,si','0');
insert into  t_pp_subprcparam values('14000601','Main_ProdId_Params','830134','0');
insert into  t_pp_subprcparam values('14000601','favorcap','0','0');
insert into  t_pp_subprcparam values('14000601','user_brands','*','0');
insert into  t_pp_subprcparam values('14000601','feetypes','10000000','0');
insert into  t_pp_subprcparam values('14000601','favortype','8','0');
insert into  t_pp_subprcparam values('14000601','area_codes','*','0');
insert into  t_pp_subprcparam values('14000601','chat_types','*','0');
insert into  t_pp_subprcparam values('14000601','roam_types','*','0');
insert into  t_pp_subprcparam values('14000601','call_types','01','0');
insert into  t_pp_subprcparam values('14000601','user_types','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = '83013421';

insert into  t_pp_subprcparam values('83013421','fee_types','*','0');
insert into  t_pp_subprcparam values('83013421','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013421','system_types','ss','0');
insert into  t_pp_subprcparam values('83013421','Main_ProdId_Params','*','0');
insert into  t_pp_subprcparam values('83013421','favorcap','1000','0');
insert into  t_pp_subprcparam values('83013421','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013421','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013421','favortype','8','0');
insert into  t_pp_subprcparam values('83013421','area_codes','*','0');
insert into  t_pp_subprcparam values('83013421','chat_types','*','0');
insert into  t_pp_subprcparam values('83013421','roam_types','1,2,3,A,B,I,J,0','0');
insert into  t_pp_subprcparam values('83013421','call_types','01','0');
insert into  t_pp_subprcparam values('83013421','user_types','*','0');

delete from t_pp_fav_index where FAV_INDEX = '83013411';
insert into t_pp_fav_index(FAV_TYPE,FAV_INDEX,UNIT_CODE,BUSI_CODE,BILL_CODE,FAV_CODE,FEE_RATE,REMIND_CODE,FREE_SUM,FREE_TYPE,PERIOD,OTHER_FAV_INDEX,EFF_DATE,EXP_DATE,location,cycle_type,cycle_day)values ('830134','83013411','4','3','0','D','0','0','999999999','001000','0','','20180801000000','20500101000000','v','1','6');

delete from t_pp_fav_index where FAV_INDEX = '83013412';
insert into t_pp_fav_index(FAV_TYPE,FAV_INDEX,UNIT_CODE,BUSI_CODE,BILL_CODE,FAV_CODE,FEE_RATE,REMIND_CODE,FREE_SUM,FREE_TYPE,PERIOD,OTHER_FAV_INDEX,EFF_DATE,EXP_DATE,location,cycle_type,cycle_day)values ('830134','83013412','4','3','0','D','0','0','102400','001000','0','','20180801000000','20500101000000','e','1','6');


delete t_pp_subprcparam where SUBBILLPRCID = '83013401';

insert into  t_pp_subprcparam values('83013401','dial_types','*','0');
insert into  t_pp_subprcparam values('83013401','fee_types','I,0','0');
insert into  t_pp_subprcparam values('83013401','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013401','system_types','vc','0');
insert into  t_pp_subprcparam values('83013401','Main_ProdId_Params','*','0');
insert into  t_pp_subprcparam values('83013401','favorcap','1000','0');
insert into  t_pp_subprcparam values('83013401','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013401','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013401','favortype','8','0');
insert into  t_pp_subprcparam values('83013401','units','60','0');
insert into  t_pp_subprcparam values('83013401','chat_types','*','0');
insert into  t_pp_subprcparam values('83013401','roam_types','I,0','0');
insert into  t_pp_subprcparam values('83013401','call_types','01','0');
insert into  t_pp_subprcparam values('83013401','service_codes','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = '83013402';

insert into  t_pp_subprcparam values('83013402','dial_types','*','0');
insert into  t_pp_subprcparam values('83013402','fee_types','A,B','0');
insert into  t_pp_subprcparam values('83013402','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013402','system_types','vc','0');
insert into  t_pp_subprcparam values('83013402','Main_ProdId_Params','*','0');
insert into  t_pp_subprcparam values('83013402','favorcap','2000','0');
insert into  t_pp_subprcparam values('83013402','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013402','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013402','favortype','8','0');
insert into  t_pp_subprcparam values('83013402','units','60','0');
insert into  t_pp_subprcparam values('83013402','chat_types','*','0');
insert into  t_pp_subprcparam values('83013402','roam_types','1,2,3,A,B,J,I,0','0');
insert into  t_pp_subprcparam values('83013402','call_types','01','0');
insert into  t_pp_subprcparam values('83013402','service_codes','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = '83013403';

insert into  t_pp_subprcparam values('83013403','dial_types','*','0');
insert into  t_pp_subprcparam values('83013403','fee_types','J,0','0');
insert into  t_pp_subprcparam values('83013403','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013403','system_types','vc','0');
insert into  t_pp_subprcparam values('83013403','Main_ProdId_Params','*','0');
insert into  t_pp_subprcparam values('83013403','favorcap','1000','0');
insert into  t_pp_subprcparam values('83013403','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013403','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013403','favortype','8','0');
insert into  t_pp_subprcparam values('83013403','units','60','0');
insert into  t_pp_subprcparam values('83013403','chat_types','*','0');
insert into  t_pp_subprcparam values('83013403','roam_types','J,0','0');
insert into  t_pp_subprcparam values('83013403','call_types','01','0');
insert into  t_pp_subprcparam values('83013403','service_codes','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = '83013404';

insert into  t_pp_subprcparam values('83013404','dial_types','*','0');
insert into  t_pp_subprcparam values('83013404','fee_types','*','0');
insert into  t_pp_subprcparam values('83013404','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013404','system_types','vc','0');
insert into  t_pp_subprcparam values('83013404','Main_ProdId_Params','*','0');
insert into  t_pp_subprcparam values('83013404','favorcap','1000','0');
insert into  t_pp_subprcparam values('83013404','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013404','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013404','favortype','8','0');
insert into  t_pp_subprcparam values('83013404','units','60','0');
insert into  t_pp_subprcparam values('83013404','chat_types','*','0');
insert into  t_pp_subprcparam values('83013404','roam_types','1,2,3,A,B,J,I,0','0');
insert into  t_pp_subprcparam values('83013404','call_types','02','0');
insert into  t_pp_subprcparam values('83013404','service_codes','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = '14000701';

insert into  t_pp_subprcparam values('14000701','dial_types','*','0');
insert into  t_pp_subprcparam values('14000701','fee_types','*','0');
insert into  t_pp_subprcparam values('14000701','billrebillflag','0','0');
insert into  t_pp_subprcparam values('14000701','system_types','vc','0');
insert into  t_pp_subprcparam values('14000701','Main_ProdId_Params','830134','0');
insert into  t_pp_subprcparam values('14000701','favorcap','0','0');
insert into  t_pp_subprcparam values('14000701','user_brands','*','0');
insert into  t_pp_subprcparam values('14000701','feetypes','10000000','0');
insert into  t_pp_subprcparam values('14000701','favortype','8','0');
insert into  t_pp_subprcparam values('14000701','units','60','0');
insert into  t_pp_subprcparam values('14000701','chat_types','*','0');
insert into  t_pp_subprcparam values('14000701','roam_types','*','0');
insert into  t_pp_subprcparam values('14000701','call_types','*','0');
insert into  t_pp_subprcparam values('14000701','service_codes','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = '14000501';

insert into  t_pp_subprcparam values('14000501','billrebillflag','0','0');
insert into  t_pp_subprcparam values('14000501','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('14000501','Main_ProdId_Params','830134','0');
insert into  t_pp_subprcparam values('14000501','favorcap','0','0');
insert into  t_pp_subprcparam values('14000501','user_brands','*','0');
insert into  t_pp_subprcparam values('14000501','feetypes','10000000','0');
insert into  t_pp_subprcparam values('14000501','favortype','8','0');
insert into  t_pp_subprcparam values('14000501','units','1024','0');
insert into  t_pp_subprcparam values('14000501','roam_types','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = '83013412';

insert into  t_pp_subprcparam values('83013412','AOC_flag','1','0');
insert into  t_pp_subprcparam values('83013412','addtime','*','0');
insert into  t_pp_subprcparam values('83013412','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013412','gtfavortype','5','0');
insert into  t_pp_subprcparam values('83013412','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013412','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('83013412','ltfavortype','8','0');
insert into  t_pp_subprcparam values('83013412','Main_ProdId_Params','*','0');
insert into  t_pp_subprcparam values('83013412','thresholdval','102400','0');
insert into  t_pp_subprcparam values('83013412','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('83013412','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013412','adjust','11','0');
insert into  t_pp_subprcparam values('83013412','thresholdtype','3','0');
insert into  t_pp_subprcparam values('83013412','accumulateID','83013412','0');
insert into  t_pp_subprcparam values('83013412','cross_flag','0','0');
insert into  t_pp_subprcparam values('83013412','units','1024','0');
insert into  t_pp_subprcparam values('83013412','warnflag','0','0');
insert into  t_pp_subprcparam values('83013412','roam_types','1,2,3,A,B,0','0');
insert into  t_pp_subprcparam values('83013412','ltfavorcap','0','0');


delete t_pp_subprcparam where SUBBILLPRCID = '83013411';

insert into  t_pp_subprcparam values('83013411','AOC_flag','1','0');
insert into  t_pp_subprcparam values('83013411','addtime','*','0');
insert into  t_pp_subprcparam values('83013411','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013411','gtfavortype','8','0');
insert into  t_pp_subprcparam values('83013411','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013411','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('83013411','ltfavortype','8','0');
insert into  t_pp_subprcparam values('83013411','Main_ProdId_Params','*','0');
insert into  t_pp_subprcparam values('83013411','thresholdval','999999999','0');
insert into  t_pp_subprcparam values('83013411','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('83013411','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013411','adjust','11','0');
insert into  t_pp_subprcparam values('83013411','thresholdtype','3','0');
insert into  t_pp_subprcparam values('83013411','accumulateID','83013411','0');
insert into  t_pp_subprcparam values('83013411','cross_flag','0','0');
insert into  t_pp_subprcparam values('83013411','units','1024','0');
insert into  t_pp_subprcparam values('83013411','warnflag','0','0');
insert into  t_pp_subprcparam values('83013411','roam_types','I,J,0','0');
insert into  t_pp_subprcparam values('83013411','ltfavorcap','0','0');

delete from T_PP_MAINPRODPRC_BRAND where prod_prcid = 'HKPMF4AJK003H06';
insert into T_PP_MAINPRODPRC_BRAND(user_brand,prod_prcid,prod_prcid_param,billprcid,note) values('oy','HKPMF4AJK003H06','830134','830134','XGLT-201807271330219774G日韓6日通話上網卡-4G日韓6天話音及數據卡$118');

delete from RESULT_CODE_REPLACE where prod_prcid = 'HKPMF4AJK003H06';
insert into RESULT_CODE_REPLACE(prod_prcid,OLD_RESULT_CODE,NEW_RESULT_CODE,NOTE) values('HKPMF4AJK003H06','4012','4010','830134,XGLT-201807271330219774G日韓6日通話上網卡-4G日韓6天話音及數據卡$118结果码4012替换为无语音提示的4010');

insert into RESULT_CODE_REPLACE(prod_prcid,OLD_RESULT_CODE,NEW_RESULT_CODE,NOTE) values('HKPMF4AJK003H06','2203','2001','830134,XGLT-201807271330219774G日韓6日通話上網卡余额不足结果码2203替换为无语音提示的2001');

insert into RESULT_CODE_REPLACE(prod_prcid,OLD_RESULT_CODE,NEW_RESULT_CODE,NOTE) values('HKPMF4AJK003H06','4202','4204','830134,XGLT-201807271330219774G日韓6日通話上網卡余额不足结果码4202替换为无语音提示的4204');

delete t_pp_subprcplan where SUBBILLPRCID = '83013404';
insert into t_pp_subprcplan values('83013404','1','vc','F101','00000','20180801000000','20500101000000','0','于日本,韩国,中国内地,香港被叫,$1/min;');

delete t_pp_subprcplan where SUBBILLPRCID = '83013421';
insert into t_pp_subprcplan values('83013421','1','ss','F101','00000','20180801000000','20500101000000','0','于日本,韩国,中国内地,香港发送短信至任何地方,$1/min;');

delete t_pp_subprcplan where SUBBILLPRCID = '83013411';
insert into t_pp_subprcplan values('83013411','1','gg,gs','F431','0A000','20180801000000','20500101000000','0','漫游日本,韩国,数据无限使用/6日;');

delete t_pp_subprcplan where SUBBILLPRCID = '83013412';
insert into t_pp_subprcplan values('83013412','1','gg,gs','F431','00000','20180801000000','20500101000000','0','漫游中国内地,香港,$0/100MB/6日;');

delete t_pp_subprcplan where SUBBILLPRCID = '83013401';
insert into t_pp_subprcplan values('83013401','1','vc','F101','00000','20180801000000','20500101000000','0','于日本主叫日本,$1/min;');

delete t_pp_subprcplan where SUBBILLPRCID = '83013402';
insert into t_pp_subprcplan values('83013402','1','vc','F101','00000','20180801000000','20500101000000','0','于日本,韩国,中国内地,香港主叫中国内地，香港，$2/min;');

delete t_pp_subprcplan where SUBBILLPRCID = '83013403';
insert into t_pp_subprcplan values('83013403','1','vc','F101','00000','20180801000000','20500101000000','0','于韩国,主叫韩国,$1/min;');

