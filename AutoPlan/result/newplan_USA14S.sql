
delete t_pp_subprcparam where SUBBILLPRCID = 'usa14s01';

insert into  t_pp_subprcparam values('usa14s01','adjust','11','0');
insert into  t_pp_subprcparam values('usa14s01','addtime','*','0');
insert into  t_pp_subprcparam values('usa14s01','cross_flag','0','0');
insert into  t_pp_subprcparam values('usa14s01','area_codes','*','0');
insert into  t_pp_subprcparam values('usa14s01','roam_types','L','0');
insert into  t_pp_subprcparam values('usa14s01','call_types','01','0');
insert into  t_pp_subprcparam values('usa14s01','fee_types','*','0');
insert into  t_pp_subprcparam values('usa14s01','system_types','ss','0');
insert into  t_pp_subprcparam values('usa14s01','billrebillflag','1','0');
insert into  t_pp_subprcparam values('usa14s01','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('usa14s01','gtfavortype','5','0');
insert into  t_pp_subprcparam values('usa14s01','ltfavorcap','0','0');
insert into  t_pp_subprcparam values('usa14s01','ltfavortype','8','0');
insert into  t_pp_subprcparam values('usa14s01','thresholdval','1000','0');
insert into  t_pp_subprcparam values('usa14s01','thresholdtype','4','0');
insert into  t_pp_subprcparam values('usa14s01','accumulateID','usa14s01','0');
insert into  t_pp_subprcparam values('usa14s01','feetypes','10000000','0');
insert into  t_pp_subprcparam values('usa14s01','CUG_US_SHARE','1','0');
insert into  t_pp_subprcparam values('usa14s01','units','1','0');


delete t_pp_subprcparam where SUBBILLPRCID = 'usa14s02';

insert into  t_pp_subprcparam values('usa14s02','adjust','11','0');
insert into  t_pp_subprcparam values('usa14s02','addtime','*','0');
insert into  t_pp_subprcparam values('usa14s02','cross_flag','0','0');
insert into  t_pp_subprcparam values('usa14s02','area_codes','*','0');
insert into  t_pp_subprcparam values('usa14s02','roam_types','A,B','0');
insert into  t_pp_subprcparam values('usa14s02','call_types','01','0');
insert into  t_pp_subprcparam values('usa14s02','fee_types','*','0');
insert into  t_pp_subprcparam values('usa14s02','system_types','ss','0');
insert into  t_pp_subprcparam values('usa14s02','billrebillflag','1','0');
insert into  t_pp_subprcparam values('usa14s02','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('usa14s02','gtfavortype','5','0');
insert into  t_pp_subprcparam values('usa14s02','ltfavorcap','0','0');
insert into  t_pp_subprcparam values('usa14s02','ltfavortype','8','0');
insert into  t_pp_subprcparam values('usa14s02','thresholdval','1000','0');
insert into  t_pp_subprcparam values('usa14s02','thresholdtype','4','0');
insert into  t_pp_subprcparam values('usa14s02','accumulateID','usa14s02','0');
insert into  t_pp_subprcparam values('usa14s02','feetypes','10000000','0');
insert into  t_pp_subprcparam values('usa14s02','CUG_US_SHARE','1','0');
insert into  t_pp_subprcparam values('usa14s02','units','1','0');

delete t_pp_subprcplan where SUBBILLPRCID = 'usa14s01';
insert into t_pp_subprcplan values('usa14s01','1','ss','F431','00000','20180901000000','20500101000000','0','多地共用短信包，漫游美国，发短信，免费1000条');

delete t_pp_subprcplan where SUBBILLPRCID = 'usa14s02';
insert into t_pp_subprcplan values('usa14s02','1','ss','F431','00000','20180901000000','20500101000000','0','多地共用，漫游中港，发漫游地本地短信，套餐内抵扣1000条');

delete t_pp_billprcplan where BILLPRCID = 'USA14S';
insert into t_pp_billprcplan values('USA14S','USA14S','1','ss','s','1',1,30,?,'00000','20180901000000','20500101000000','0','Text (Allowed Text units) $0/1000') <lob>='mut(usa14s01,usa14s02)';

delete from t_pp_fav_index where FAV_INDEX = 'usa14s01';
insert into t_pp_fav_index(FAV_TYPE,FAV_INDEX,UNIT_CODE,BUSI_CODE,BILL_CODE,FAV_CODE,FEE_RATE,REMIND_CODE,FREE_SUM,FREE_TYPE,PERIOD,OTHER_FAV_INDEX,EFF_DATE,EXP_DATE,location,cycle_type,cycle_day)values ('USA14S','usa14s01','1','2','0','5','0','0','1000','001000','0','','20180901000000','20500101000000','L','0','0');

delete from t_pp_fav_index where FAV_INDEX = 'usa14s02';
insert into t_pp_fav_index(FAV_TYPE,FAV_INDEX,UNIT_CODE,BUSI_CODE,BILL_CODE,FAV_CODE,FEE_RATE,REMIND_CODE,FREE_SUM,FREE_TYPE,PERIOD,OTHER_FAV_INDEX,EFF_DATE,EXP_DATE,location,cycle_type,cycle_day)values ('USA14S','usa14s02','1','2','0','5','0','0','1000','001000','0','','20180901000000','20500101000000','e','0','0');

delete from PD_TRANSPRODPRC where prod_prc = 'USA14S';
insert into PD_TRANSPRODPRC(region_code,user_prc,pricing_id,prod_prc,state,note) values ('0','USCAF0030','458850002','USA14S','0','XGLT-20180704104433435-Text (Allowed Text units) $0/1000');

delete from SBILLMODEDETAIL where mode_code = 'USA14S';
insert into SBILLMODEDETAIL(owner_type,REGION_CODE,DETAIL_CODE,detail_type,mode_code,fav_order,MODE_TIME,TIME_FLAG,BEGIN_TIME,END_TIME,EFF_TIME,EXP_TIME) values ('0','0','USA14S','0','USA14S',1,'0','0','20180901000000','20500101000000','20180901000000','20500101000000');

insert into SBILLMODEDETAIL(owner_type,REGION_CODE,DETAIL_CODE,detail_type,mode_code,fav_order,MODE_TIME,TIME_FLAG,BEGIN_TIME,END_TIME,EFF_TIME,EXP_TIME) values ('0','0','458850002','1','USA14S',1,'0','0','20180901000000','20500101000000','20180901000000','20500101000000');

