delete from short_term_product where prod_prcid = 'HKPMF4DAP003H06';
insert into short_term_product(prod_prcid) values('HKPMF4DAP003H06');

delete from t_pp_fav_index where FAV_INDEX = '83013701';
insert into t_pp_fav_index(FAV_TYPE,FAV_INDEX,UNIT_CODE,BUSI_CODE,BILL_CODE,FAV_CODE,FEE_RATE,REMIND_CODE,FREE_SUM,FREE_TYPE,PERIOD,OTHER_FAV_INDEX,EFF_DATE,EXP_DATE,location,cycle_type,cycle_day)values ('830137','83013701','4','3','0','D','0','0','999999999','001000','0','','20180701000000','20500101000000','t','1','4');

delete t_pp_billprcplan where BILLPRCID = '830137';
insert into t_pp_billprcplan values('830137','830137','1','gg,gs','g','1',1,25,?,'0A000','20180701000000','20500101000000','0','XGLT-20180706143438512亞洲6日上網卡') <lob>='83013701';


delete t_pp_subprcparam where SUBBILLPRCID = '83013701';

insert into  t_pp_subprcparam values('83013701','AOC_flag','1','0');
insert into  t_pp_subprcparam values('83013701','addtime','*','0');
insert into  t_pp_subprcparam values('83013701','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013701','gtfavortype','8','0');
insert into  t_pp_subprcparam values('83013701','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013701','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('83013701','ltfavortype','8','0');
insert into  t_pp_subprcparam values('83013701','visit_area_codes','856,84,852,853,886,81,82,65,66,60,62,63,855,95','0');
insert into  t_pp_subprcparam values('83013701','Main_ProdId_Params','*','0');
insert into  t_pp_subprcparam values('83013701','thresholdval','999999999','0');
insert into  t_pp_subprcparam values('83013701','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('83013701','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013701','adjust','11','0');
insert into  t_pp_subprcparam values('83013701','thresholdtype','3','0');
insert into  t_pp_subprcparam values('83013701','accumulateID','83013701','0');
insert into  t_pp_subprcparam values('83013701','cross_flag','0','0');
insert into  t_pp_subprcparam values('83013701','units','1024','0');
insert into  t_pp_subprcparam values('83013701','warnflag','0','0');
insert into  t_pp_subprcparam values('83013701','roam_types','*','0');
insert into  t_pp_subprcparam values('83013701','ltfavorcap','0','0');

delete t_pp_subprcplan where SUBBILLPRCID = '83013701';
insert into t_pp_subprcplan values('83013701','1','gg,gs','F431','0A000','20180701000000','20500101000000','0','亞洲6日上網卡');

delete from RESULT_CODE_REPLACE where prod_prcid = 'HKPMF4DAP003H06';
insert into RESULT_CODE_REPLACE(prod_prcid,OLD_RESULT_CODE,NEW_RESULT_CODE,NOTE) values('HKPMF4DAP003H06','4012','4010','830137,XGLT-20180706143438512亞洲6日上網卡余额不足结果码4012替换为无语音提示的4010');

insert into RESULT_CODE_REPLACE(prod_prcid,OLD_RESULT_CODE,NEW_RESULT_CODE,NOTE) values('HKPMF4DAP003H06','4202','4204','830137,XGLT-20180706143438512亞洲6日上網卡4202替换为4204');

insert into RESULT_CODE_REPLACE(prod_prcid,OLD_RESULT_CODE,NEW_RESULT_CODE,NOTE) values('HKPMF4DAP003H06','2203','2001','830137,XGLT-20180706143438512亞洲6日上網卡2203替换为2001');

delete from SBILLMODEDETAIL where mode_code = '830137';
insert into SBILLMODEDETAIL(owner_type,REGION_CODE,DETAIL_CODE,detail_type,mode_code,fav_order,MODE_TIME,TIME_FLAG,BEGIN_TIME,END_TIME,EFF_TIME,EXP_TIME) values ('0','0','468800711','1','830137',1,'0','0','20180701000000','20500101000000','20180701000000','20500101000000');

insert into SBILLMODEDETAIL(owner_type,REGION_CODE,DETAIL_CODE,detail_type,mode_code,fav_order,MODE_TIME,TIME_FLAG,BEGIN_TIME,END_TIME,EFF_TIME,EXP_TIME) values ('0','0','830137','0','830137',1,'0','0','20180701000000','20500101000000','20180701000000','20500101000000');

delete from PD_TRANSPRODPRC where prod_prc = '830137';
insert into PD_TRANSPRODPRC(region_code,user_prc,pricing_id,prod_prc,state,note) values ('0','HKPMF4DAP003H06','468800711','830137','0','XGLT-20180706143438512亞洲6日上網卡');

delete from T_PP_MAINPRODPRC_BRAND where prod_prcid = 'HKPMF4DAP003H06';
insert into T_PP_MAINPRODPRC_BRAND(user_brand,prod_prcid,prod_prcid_param,billprcid,note) values('oy','HKPMF4DAP003H06','830137','830137','XGLT-20180706143438512亞洲6日上網卡');

