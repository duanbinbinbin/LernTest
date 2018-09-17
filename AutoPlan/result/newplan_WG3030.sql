delete from t_pp_fav_index where FAV_INDEX = 'WG3030HM';
insert into t_pp_fav_index(FAV_TYPE,FAV_INDEX,UNIT_CODE,BUSI_CODE,BILL_CODE,FAV_CODE,FEE_RATE,REMIND_CODE,FREE_SUM,FREE_TYPE,PERIOD,OTHER_FAV_INDEX,EFF_DATE,EXP_DATE,location,cycle_type,cycle_day)values ('WG3030','WG3030HM','6','3','0','1','0','0','999999999','001000','0','','20180701000000','20500101000000','e','0','0');

delete t_pp_billprcplan where BILLPRCID = 'WG3030';
insert into t_pp_billprcplan values('WG3030','WG3030','1','gg,gs','g','1',1,10,?,'00000','20180701000000','20500101000000','0','XGLT-20180724164216878-中港數據共享0.5TB套餐 (海外專用)企业主套餐') <lob>='WG3030HM';


delete t_pp_subprcparam where SUBBILLPRCID = 'WG3030HM';

insert into  t_pp_subprcparam values('WG3030HM','3favorcap','0','0');
insert into  t_pp_subprcparam values('WG3030HM','2favorcap','0','0');
insert into  t_pp_subprcparam values('WG3030HM','addtime','*','0');
insert into  t_pp_subprcparam values('WG3030HM','3favortype','8','0');
insert into  t_pp_subprcparam values('WG3030HM','1favortype','8','0');
insert into  t_pp_subprcparam values('WG3030HM','1thresholdval','524288','0');
insert into  t_pp_subprcparam values('WG3030HM','service_codes','*','0');
insert into  t_pp_subprcparam values('WG3030HM','adjust','1','0');
insert into  t_pp_subprcparam values('WG3030HM','count_value','3','0');
insert into  t_pp_subprcparam values('WG3030HM','billrebillflag','1','0');
insert into  t_pp_subprcparam values('WG3030HM','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('WG3030HM','2favortype','8','0');
insert into  t_pp_subprcparam values('WG3030HM','Main_ProdId_Params','*','0');
insert into  t_pp_subprcparam values('WG3030HM','user_brands','*','0');
insert into  t_pp_subprcparam values('WG3030HM','feetypes','10000000','0');
insert into  t_pp_subprcparam values('WG3030HM','1favorcap','0','0');
insert into  t_pp_subprcparam values('WG3030HM','accumulateID','WG3030HM','0');
insert into  t_pp_subprcparam values('WG3030HM','area_codes','*','0');
insert into  t_pp_subprcparam values('WG3030HM','units','1048576','0');
insert into  t_pp_subprcparam values('WG3030HM','thresholdtype','3','0');
insert into  t_pp_subprcparam values('WG3030HM','roam_types','1,2,3,A,B','0');
insert into  t_pp_subprcparam values('WG3030HM','2thresholdval','999999999','0');
insert into  t_pp_subprcparam values('WG3030HM','user_types','*','0');

delete t_pp_subprcplan where SUBBILLPRCID = 'WG3030HM';
insert into t_pp_subprcplan values('WG3030HM','1','gg,gs','F478','00000','20180701000000','20500101000000','0','中港數據共享0.5TB套餐 (海外專用)企业主套餐');

delete from PD_TRANSPRODPRC where prod_prc = 'WG3030';
insert into PD_TRANSPRODPRC(region_code,user_prc,pricing_id,prod_prc,state,note) values ('0','JPEMS4DCKPO5TAA','468601771','WG3030','0','XGLT-20180724164216878-中港數據共享0.5TB套餐 (海外專用)企业主套餐');

delete from SBILLMODEDETAIL where mode_code = 'WG3030';
insert into SBILLMODEDETAIL(owner_type,REGION_CODE,DETAIL_CODE,detail_type,mode_code,fav_order,MODE_TIME,TIME_FLAG,BEGIN_TIME,END_TIME,EFF_TIME,EXP_TIME) values ('0','0','WG3030','0','WG3030',1,'0','0','20180701000000','20500101000000','20180701000000','20500101000000');

insert into SBILLMODEDETAIL(owner_type,REGION_CODE,DETAIL_CODE,detail_type,mode_code,fav_order,MODE_TIME,TIME_FLAG,BEGIN_TIME,END_TIME,EFF_TIME,EXP_TIME) values ('0','0','468601771','1','WG3030',1,'0','0','20180701000000','20500101000000','20180701000000','20500101000000');

delete from T_PP_MAINPRODPRC_BRAND where prod_prcid = 'JPEMS4DCKPO5TAA';
insert into T_PP_MAINPRODPRC_BRAND(user_brand,prod_prcid,prod_prcid_param,billprcid,note) values('oh','JPEMS4DCKPO5TAA','WG3030','WG3030','XGLT-20180724164216878-中港數據共享0.5TB套餐 (海外專用)企业主套餐');

