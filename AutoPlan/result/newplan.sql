delete from short_term_product where prod_prcid = 'HKPMF4AKR003H06';
insert into short_term_product(prod_prcid) values('HKPMF4AKR003H06');

delete t_pp_billprcplan where BILLPRCID = '830134';
insert into t_pp_billprcplan values('830134','830134','1','gg,gs,vc,ss','g,s,v','1',1,50,?,'0A000','20180701000000','20500101000000','0','XGLT-201807061449122674G韓國6日通話上網卡,韩国无限,中港100MB') <lob>='mut(83013401,mut(83013402,mut(83013411,mut(83013412,mut(83013413,mut(83013414,83013421))))))';

delete from t_pp_fav_index where FAV_INDEX = 83013401;
insert into t_pp_fav_index(FAV_TYPE,FAV_INDEX,UNIT_CODE,BUSI_CODE,BILL_CODE,FAV_CODE,FEE_RATE,REMIND_CODE,FREE_SUM,FREE_TYPE,PERIOD,OTHER_FAV_INDEX,EFF_DATE,EXP_DATE,location,cycle_type,cycle_day)values ('830134','83013401','4','3','0','D','0','0','999999999','001000','0','','20180701000000','20500101000000','J','1','6');

delete from SBILLMODEDETAIL where mode_code = '830134';
insert into SBILLMODEDETAIL(owner_type,REGION_CODE,DETAIL_CODE,detail_type,mode_code,fav_order,MODE_TIME,TIME_FLAG,BEGIN_TIME,END_TIME,EFF_TIME,EXP_TIME) values ('0','0','468800741','1','830134',1,'0','0','20180701000000','20500101000000','20180701000000','20500101000000');

delete from SBILLMODEDETAIL where mode_code = '830134';
insert into SBILLMODEDETAIL(owner_type,REGION_CODE,DETAIL_CODE,detail_type,mode_code,fav_order,MODE_TIME,TIME_FLAG,BEGIN_TIME,END_TIME,EFF_TIME,EXP_TIME) values ('0','0','830134','0','830134',1,'0','0','20180701000000','20500101000000','20180701000000','20500101000000');

select * from PD_TRANSPRODPRC where prod_prc = '830134';
insert into PD_TRANSPRODPRC(region_code,user_prc,pricing_id,prod_prc,state,note) values ('0','HKPMF4AKR003H06','468800741','830134','0','XGLT-201807061449122674G韓國6日通話上網卡,韩国无限,中港100MB');


delete t_pp_subprcparam where SUBBILLPRCID = '83013421';

insert into  t_pp_subprcparam values('83013421','fee_types','*','0');
insert into  t_pp_subprcparam values('83013421','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013421','system_types','ss','0');
insert into  t_pp_subprcparam values('83013421','main_prodid_params','*','0');
insert into  t_pp_subprcparam values('83013421','favorcap','1000','0');
insert into  t_pp_subprcparam values('83013421','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013421','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013421','favortype','8','0');
insert into  t_pp_subprcparam values('83013421','area_codes','*','0');
insert into  t_pp_subprcparam values('83013421','chat_types','*','0');
insert into  t_pp_subprcparam values('83013421','roam_types','0,1,2,3,A,B,J','0');
insert into  t_pp_subprcparam values('83013421','call_types','01','0');
insert into  t_pp_subprcparam values('83013421','user_types','*','0');

delete from t_pp_fav_index where FAV_INDEX = 83013402;
insert into t_pp_fav_index(FAV_TYPE,FAV_INDEX,UNIT_CODE,BUSI_CODE,BILL_CODE,FAV_CODE,FEE_RATE,REMIND_CODE,FREE_SUM,FREE_TYPE,PERIOD,OTHER_FAV_INDEX,EFF_DATE,EXP_DATE,location,cycle_type,cycle_day)values ('830134','83013402','4','3','0','D','0','0','102400','001000','0','','20180701000000','20500101000000','e','1','6');


delete t_pp_subprcparam where SUBBILLPRCID = '83013411';

insert into  t_pp_subprcparam values('83013411','dial_types','*','0');
insert into  t_pp_subprcparam values('83013411','fee_types','J','0');
insert into  t_pp_subprcparam values('83013411','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013411','system_types','vc','0');
insert into  t_pp_subprcparam values('83013411','main_prodid_params','*','0');
insert into  t_pp_subprcparam values('83013411','favorcap','1000','0');
insert into  t_pp_subprcparam values('83013411','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013411','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013411','favortype','8','0');
insert into  t_pp_subprcparam values('83013411','units','60','0');
insert into  t_pp_subprcparam values('83013411','chat_types','*','0');
insert into  t_pp_subprcparam values('83013411','roam_types','0,1,2,3,A,B,J','0');
insert into  t_pp_subprcparam values('83013411','call_types','01','0');
insert into  t_pp_subprcparam values('83013411','service_codes','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = '83013412';

insert into  t_pp_subprcparam values('83013412','dial_types','*','0');
insert into  t_pp_subprcparam values('83013412','fee_types','A,B','0');
insert into  t_pp_subprcparam values('83013412','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013412','system_types','vc','0');
insert into  t_pp_subprcparam values('83013412','main_prodid_params','*','0');
insert into  t_pp_subprcparam values('83013412','favorcap','2000','0');
insert into  t_pp_subprcparam values('83013412','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013412','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013412','favortype','8','0');
insert into  t_pp_subprcparam values('83013412','units','60','0');
insert into  t_pp_subprcparam values('83013412','chat_types','*','0');
insert into  t_pp_subprcparam values('83013412','roam_types','0,1,2,3,A,B,J','0');
insert into  t_pp_subprcparam values('83013412','call_types','01','0');
insert into  t_pp_subprcparam values('83013412','service_codes','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = '83013413';

insert into  t_pp_subprcparam values('83013413','dial_types','*','0');
insert into  t_pp_subprcparam values('83013413','fee_types','*','0');
insert into  t_pp_subprcparam values('83013413','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013413','system_types','vc','0');
insert into  t_pp_subprcparam values('83013413','main_prodid_params','*','0');
insert into  t_pp_subprcparam values('83013413','favorcap','0','0');
insert into  t_pp_subprcparam values('83013413','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013413','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013413','favortype','8','0');
insert into  t_pp_subprcparam values('83013413','units','60','0');
insert into  t_pp_subprcparam values('83013413','chat_types','*','0');
insert into  t_pp_subprcparam values('83013413','roam_types','0,1,2,3,A,B,J','0');
insert into  t_pp_subprcparam values('83013413','call_types','01','0');
insert into  t_pp_subprcparam values('83013413','service_codes','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = '83013414';

insert into  t_pp_subprcparam values('83013414','dial_types','*','0');
insert into  t_pp_subprcparam values('83013414','fee_types','*','0');
insert into  t_pp_subprcparam values('83013414','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013414','system_types','vc','0');
insert into  t_pp_subprcparam values('83013414','main_prodid_params','*','0');
insert into  t_pp_subprcparam values('83013414','favorcap','1000','0');
insert into  t_pp_subprcparam values('83013414','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013414','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013414','favortype','8','0');
insert into  t_pp_subprcparam values('83013414','units','60','0');
insert into  t_pp_subprcparam values('83013414','chat_types','*','0');
insert into  t_pp_subprcparam values('83013414','roam_types','0,1,2,3,A,B,J','0');
insert into  t_pp_subprcparam values('83013414','call_types','02','0');
insert into  t_pp_subprcparam values('83013414','service_codes','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = '83013402';

insert into  t_pp_subprcparam values('83013402','adjust','11','0');
insert into  t_pp_subprcparam values('83013402','addtime','*','0');
insert into  t_pp_subprcparam values('83013402','gtfavortype','8','0');
insert into  t_pp_subprcparam values('83013402','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013402','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('83013402','ltfavortype','8','0');
insert into  t_pp_subprcparam values('83013402','aoc_flag','1','0');
insert into  t_pp_subprcparam values('83013402','main_prodid_params','*','0');
insert into  t_pp_subprcparam values('83013402','thresholdval','102400','0');
insert into  t_pp_subprcparam values('83013402','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('83013402','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013402','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013402','thresholdtype','3','0');
insert into  t_pp_subprcparam values('83013402','accumulateid','83013402','0');
insert into  t_pp_subprcparam values('83013402','cross_flag','0','0');
insert into  t_pp_subprcparam values('83013402','units','1024','0');
insert into  t_pp_subprcparam values('83013402','warnflag','0','0');
insert into  t_pp_subprcparam values('83013402','roam_types','1,2,3,B,0','0');
insert into  t_pp_subprcparam values('83013402','ltfavorcap','0','0');


delete t_pp_subprcparam where SUBBILLPRCID = '83013401';

insert into  t_pp_subprcparam values('83013401','addtime','*','0');
insert into  t_pp_subprcparam values('83013401','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013401','gtfavortype','8','0');
insert into  t_pp_subprcparam values('83013401','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013401','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('83013401','ltfavortype','8','0');
insert into  t_pp_subprcparam values('83013401','main_prodid_params','*','0');
insert into  t_pp_subprcparam values('83013401','thresholdval','999999999','0');
insert into  t_pp_subprcparam values('83013401','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('83013401','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013401','adjust','11','0');
insert into  t_pp_subprcparam values('83013401','thresholdtype','3','0');
insert into  t_pp_subprcparam values('83013401','accumulateid','83013401','0');
insert into  t_pp_subprcparam values('83013401','cross_flag','0','0');
insert into  t_pp_subprcparam values('83013401','units','1024','0');
insert into  t_pp_subprcparam values('83013401','warnflag','0','0');
insert into  t_pp_subprcparam values('83013401','roam_types','J','0');
insert into  t_pp_subprcparam values('83013401','ltfavorcap','0','0');

delete from T_PP_MAINPRODPRC_BRAND where prod_prcid = 'HKPMF4AKR003H06';
insert into T_PP_MAINPRODPRC_BRAND(user_brand,prod_prcid,prod_prcid_param,billprcid,note) values('oy','HKPMF4AKR003H06','830134','830134','XGLT-201807061449122674G韓國6日通話上網卡,韩国无限,中港100MB');

delete from RESULT_CODE_REPLACE where prod_prcid = 'HKPMF4AKR003H06';
insert into RESULT_CODE_REPLACE(prod_prcid,OLD_RESULT_CODE,NEW_RESULT_CODE,NOTE) values('HKPMF4AKR003H06','4012','4010','830134,韓國6日通話上網卡余额不足结果码4012替换为无语音提示的4010');

delete from RESULT_CODE_REPLACE where prod_prcid = 'HKPMF4AKR003H06';
insert into RESULT_CODE_REPLACE(prod_prcid,OLD_RESULT_CODE,NEW_RESULT_CODE,NOTE) values('HKPMF4AKR003H06','4202','4204','830134,韓國6日通話上網卡4202替换为4204');

delete from RESULT_CODE_REPLACE where prod_prcid = 'HKPMF4AKR003H06';
insert into RESULT_CODE_REPLACE(prod_prcid,OLD_RESULT_CODE,NEW_RESULT_CODE,NOTE) values('HKPMF4AKR003H06','2203','2001','830134,韓國6日通話上網卡2203替换为2001');

delete t_pp_subprcplan where SUBBILLPRCID = '83013414';
insert into t_pp_subprcplan values('83013414','1','vc','F101','00000','20180701000000','20500101000000','0','于韩国香港中国内地接听，$1/min;');

delete t_pp_subprcplan where SUBBILLPRCID = '83013401';
insert into t_pp_subprcplan values('83013401','1','gg,gs','F431','0A000','20180701000000','20500101000000','0','韓國數據組合：$25/無限/6日');

delete t_pp_subprcplan where SUBBILLPRCID = '83013402';
insert into t_pp_subprcplan values('83013402','1','gg,gs','F431','00000','20180701000000','20500101000000','0','中港數據組合：$0/100MB/6日');

delete t_pp_subprcplan where SUBBILLPRCID = '83013421';
insert into t_pp_subprcplan values('83013421','1','ss','F101','00000','20180701000000','20500101000000','0','于中国内地，香港和韩国发送任何地区，$1/条');

delete t_pp_subprcplan where SUBBILLPRCID = '83013411';
insert into t_pp_subprcplan values('83013411','1','vc','F431','00000','20180701000000','20500101000000','0','于韩国香港中国内地拨打至韩国，$1/min;');

delete t_pp_subprcplan where SUBBILLPRCID = '83013412';
insert into t_pp_subprcplan values('83013412','1','vc','F101','00000','20180701000000','20500101000000','0','于韩国香港中国内地拨打至中港，$2/min;');

delete t_pp_subprcplan where SUBBILLPRCID = '83013413';
insert into t_pp_subprcplan values('83013413','1','vc','F101','0000c','20180701000000','20500101000000','0','于韩国和香港中国内地拨打其他地区禁止使用;');

