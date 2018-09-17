delete from short_term_product where prod_prcid = 'HKPMF4DAP004U12';
insert into short_term_product(prod_prcid) values('HKPMF4DAP004U12');

delete from t_pp_fav_index where FAV_INDEX = '83013801';
insert into t_pp_fav_index(FAV_TYPE,FAV_INDEX,UNIT_CODE,BUSI_CODE,BILL_CODE,FAV_CODE,FEE_RATE,REMIND_CODE,FREE_SUM,FREE_TYPE,PERIOD,OTHER_FAV_INDEX,EFF_DATE,EXP_DATE,location,cycle_type,cycle_day)values ('830138','83013801','4','3','0','D','0','0','999999999','001000','0','','20180701000000','20500101000000','t','1','12');

delete t_pp_billprcplan where BILLPRCID = '830138';
insert into t_pp_billprcplan values('830138','830138','1','gg,gs','g','1',1,25,?,'0A000','20180701000000','20500101000000','0','XGLT-20180718171744355亞洲12日上網卡') <lob>='83013801';


delete t_pp_subprcparam where SUBBILLPRCID = '83013801';

insert into  t_pp_subprcparam values('83013801','AOC_flag','1','0');
insert into  t_pp_subprcparam values('83013801','addtime','*','0');
insert into  t_pp_subprcparam values('83013801','feetypes','10000000','0');
insert into  t_pp_subprcparam values('83013801','gtfavortype','8','0');
insert into  t_pp_subprcparam values('83013801','billrebillflag','1','0');
insert into  t_pp_subprcparam values('83013801','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('83013801','ltfavortype','8','0');
insert into  t_pp_subprcparam values('83013801','visit_area_codes','856,84,852,853,886,81,82,65,66,60,62,63,855,95','0');
insert into  t_pp_subprcparam values('83013801','Main_ProdId_Params','*','0');
insert into  t_pp_subprcparam values('83013801','thresholdval','999999999','0');
insert into  t_pp_subprcparam values('83013801','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('83013801','user_brands','oy','0');
insert into  t_pp_subprcparam values('83013801','adjust','11','0');
insert into  t_pp_subprcparam values('83013801','thresholdtype','3','0');
insert into  t_pp_subprcparam values('83013801','accumulateID','83013801','0');
insert into  t_pp_subprcparam values('83013801','cross_flag','0','0');
insert into  t_pp_subprcparam values('83013801','units','1024','0');
insert into  t_pp_subprcparam values('83013801','warnflag','0','0');
insert into  t_pp_subprcparam values('83013801','roam_types','*','0');
insert into  t_pp_subprcparam values('83013801','ltfavorcap','0','0');

delete t_pp_subprcplan where SUBBILLPRCID = '83013801';
insert into t_pp_subprcplan values('83013801','1','gg,gs','F431','0A000','20180701000000','20500101000000','0','亞洲12日上網卡');

delete from RESULT_CODE_REPLACE where prod_prcid = 'HKPMF4DAP004U12';
insert into RESULT_CODE_REPLACE(prod_prcid,OLD_RESULT_CODE,NEW_RESULT_CODE,NOTE) values('HKPMF4DAP004U12','4012','4010','830138,XGLT-20180718171744355亞洲12日上網卡余额不足结果码4012替换为无语音提示的4010');

insert into RESULT_CODE_REPLACE(prod_prcid,OLD_RESULT_CODE,NEW_RESULT_CODE,NOTE) values('HKPMF4DAP004U12','4202','4204','830138,XGLT-20180718171744355亞洲12日上網卡4202替换为4204');

insert into RESULT_CODE_REPLACE(prod_prcid,OLD_RESULT_CODE,NEW_RESULT_CODE,NOTE) values('HKPMF4DAP004U12','2203','2001','830138,XGLT-20180718171744355亞洲12日上網卡2203替换为2001');

delete from SBILLMODEDETAIL where mode_code = '830138';
insert into SBILLMODEDETAIL(owner_type,REGION_CODE,DETAIL_CODE,detail_type,mode_code,fav_order,MODE_TIME,TIME_FLAG,BEGIN_TIME,END_TIME,EFF_TIME,EXP_TIME) values ('0','0','468800721','1','830138',1,'0','0','20180701000000','20500101000000','20180701000000','20500101000000');

insert into SBILLMODEDETAIL(owner_type,REGION_CODE,DETAIL_CODE,detail_type,mode_code,fav_order,MODE_TIME,TIME_FLAG,BEGIN_TIME,END_TIME,EFF_TIME,EXP_TIME) values ('0','0','830138','0','830138',1,'0','0','20180701000000','20500101000000','20180701000000','20500101000000');

delete from PD_TRANSPRODPRC where prod_prc = '830138';
insert into PD_TRANSPRODPRC(region_code,user_prc,pricing_id,prod_prc,state,note) values ('0','HKPMF4DAP004U12','468800721','830138','0','XGLT-20180718171744355亞洲12日上網卡');

delete from T_PP_MAINPRODPRC_BRAND where prod_prcid = 'HKPMF4DAP004U12';
insert into T_PP_MAINPRODPRC_BRAND(user_brand,prod_prcid,prod_prcid_param,billprcid,note) values('oy','HKPMF4DAP004U12','830138','830138','XGLT-20180718171744355亞洲12日上網卡');

