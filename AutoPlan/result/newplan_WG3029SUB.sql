

delete from PD_TRANSPRODPRC where prod_prc = 'WG3029SUB';
insert into PD_TRANSPRODPRC(region_code,user_prc,pricing_id,prod_prc,state,note) values ('0','JPPMS4DCKPO03AA','468601781','WG3029SUB','0','XGLT-20180724164216878-中港數據共享3TB套餐 (海外專用)普通成员');

delete from SBILLMODEDETAIL where mode_code = 'WG3029SUB';
insert into SBILLMODEDETAIL(owner_type,REGION_CODE,DETAIL_CODE,detail_type,mode_code,fav_order,MODE_TIME,TIME_FLAG,BEGIN_TIME,END_TIME,EFF_TIME,EXP_TIME) values ('0','0','468601781','1','WG3029SUB',1,'0','0','20180701000000','20500101000000','20180701000000','20500101000000');

delete from T_PP_MAINPRODPRC_BRAND where prod_prcid = 'JPPMS4DCKPO03AA';
insert into T_PP_MAINPRODPRC_BRAND(user_brand,prod_prcid,prod_prcid_param,billprcid,note) values('oh','JPPMS4DCKPO03AA','WG3029SUB','WG3029SUB','XGLT-20180724164216878-中港數據共享3TB套餐 (海外專用)普通成员');

