delete t_pp_billprcplan where BILLPRCID = 'YUK05V';
insert into t_pp_billprcplan values('YUK05V','YUK05V','1','vc','v','1',1,20,?,'00000','20170101000000','20500101000000','0','欧分二期预付费英国基础套餐16英镑30天套餐语音资费') <lob>='mut(yuk05v01,mut(yuk05v02,mut(yuk05v03,mut(yuk05v04,mut(yuk05v05,mut(yuk05v06,yuk05v07)))))';

delete t_pp_billprcplan where BILLPRCID = 'YUK05G';
insert into t_pp_billprcplan values('YUK05G','YUK05G','1','gg,gs','g','1',1,20,?,'00000','20170101000000','20500101000000','0','欧分二期预付费英国基础套餐16英镑30天套餐数据资费') <lob>='mut(yuk05g11,mut(yuk05g02,mut(yuk05g03,mut(yuk05g04,yuk05g01))))';

delete t_pp_billprcplan where BILLPRCID = 'YUK06V';
insert into t_pp_billprcplan values('YUK06V','YUK06V','1','vc','v','1',1,20,?,'00000','20170101000000','20500101000000','0','欧分二期预付费英国基础套餐20英镑30天套餐语音资费') <lob>='mut(yuk06v01,mut(yuk06v02,mut(yuk06v03,mut(yuk06v04,mut(yuk06v05,mut(yuk06v06,yuk06v07)))))';

delete t_pp_billprcplan where BILLPRCID = 'YUK02G';
insert into t_pp_billprcplan values('YUK02G','YUK02G','1','gg,gs','g','1',1,20,?,'00000','20170101000000','20500101000000','0','欧分二期预付费英国基础套餐10英镑1G/3G变来变去30天套餐语音资费') <lob>='mut(yuk02g11,mut(yuk02g02,mut(yuk02g03,mut(yuk02g04,yuk02g01))))';

delete t_pp_billprcplan where BILLPRCID = 'YUK04V';
insert into t_pp_billprcplan values('YUK04V','YUK04V','1','vc','v','1',1,20,?,'00000','20170101000000','20500101000000','0','欧分二期预付费英国基础套餐12英镑30天套餐语音资费') <lob>='mut(yuk04v01,mut(yuk04v02,mut(yuk04v03,mut(yuk04v04,mut(yuk04v05,mut(yuk04v06,yuk04v07)))))';

delete t_pp_billprcplan where BILLPRCID = 'YUK04G';
insert into t_pp_billprcplan values('YUK04G','YUK04G','1','gg,gs','g','1',1,20,?,'00000','20170101000000','20500101000000','0','欧分二期预付费英国基础套餐12英镑30天套餐音资费') <lob>='mut(yuk04g11,mut(yuk04g02,mut(yuk04g03,mut(yuk04g04,yuk04g01))))';

delete t_pp_billprcplan where BILLPRCID = 'YUK06G';
insert into t_pp_billprcplan values('YUK06G','YUK06G','1','gg,gs','g','1',1,20,?,'00000','20170101000000','20500101000000','0','欧分二期预付费英国基础套餐20英镑30天套餐数据资费') <lob>='mut(yuk06g11,mut(yuk06g02,mut(yuk06g03,mut(yuk06g04,yuk06g01))))';

delete t_pp_billprcplan where BILLPRCID = 'YCH02G';
insert into t_pp_billprcplan values('YCH02G','YCH02G','1','gg,gs','g','1',1,20,?,'00000','20170101000000','20500101000000','0','欧分二期预付费中港￡10流量包1/3GB变来变去30天套餐') <lob>='mut(ych02g01,mut(ych02g02,ych02g03))';

delete t_pp_subprcplan where SUBBILLPRCID = 'ych02g03';
insert into t_pp_subprcplan values('ych02g03','1','gg,gs','F431','00000','20190201000000','20500101000000','0','漫游中港，数据流量1GB/30天');

delete t_pp_billprcplan where BILLPRCID = 'YAS01G';
insert into t_pp_billprcplan values('YAS01G','YAS01G','1','gg,gs','g','1',1,20,?,'00000','20170101000000','20500101000000','0','欧分二期预付费亚太￡10流量包1/3GB变来变去30天套餐') <lob>='mut(yas01g01,mut(yas01g02,yas01g03))';

delete t_pp_subprcplan where SUBBILLPRCID = 'yas01g03';
insert into t_pp_subprcplan values('yas01g03','1','gg,gs','F431','00000','20190201000000','20500101000000','0','漫游亚太，数据流量1GB/30天');

delete from t_pp_fav_index where FAV_INDEX = 'yuk04g11';
insert into t_pp_fav_index(FAV_TYPE,FAV_INDEX,UNIT_CODE,BUSI_CODE,BILL_CODE,FAV_CODE,FEE_RATE,REMIND_CODE,FREE_SUM,FREE_TYPE,PERIOD,OTHER_FAV_INDEX,EFF_DATE,EXP_DATE,location,cycle_type,cycle_day)values ('YUK04G','yuk04g11','4','3','0','D','0','0','41943040','001000','0','','20110301000000','20190131235959','0','0','0');


delete t_pp_subprcparam where SUBBILLPRCID = 'yuk06v07';

insert into  t_pp_subprcparam values('yuk06v07','dial_types','*','0');
insert into  t_pp_subprcparam values('yuk06v07','fee_types','C,0','0');
insert into  t_pp_subprcparam values('yuk06v07','feetypes','10000000','0');
insert into  t_pp_subprcparam values('yuk06v07','gtfavortype','8','0');
insert into  t_pp_subprcparam values('yuk06v07','billrebillflag','1','0');
insert into  t_pp_subprcparam values('yuk06v07','system_types','vc','0');
insert into  t_pp_subprcparam values('yuk06v07','gtfavorcap','50','0');
insert into  t_pp_subprcparam values('yuk06v07','thresholdval','1200','0');
insert into  t_pp_subprcparam values('yuk06v07','ltfavortype','8','0');
insert into  t_pp_subprcparam values('yuk06v07','adjust','9','0');
insert into  t_pp_subprcparam values('yuk06v07','thresholdtype','2','0');
insert into  t_pp_subprcparam values('yuk06v07','accumulateID','yuk06v01','0');
insert into  t_pp_subprcparam values('yuk06v07','cross_flag','0','0');
insert into  t_pp_subprcparam values('yuk06v07','units','60','0');
insert into  t_pp_subprcparam values('yuk06v07','chat_types','000','0');
insert into  t_pp_subprcparam values('yuk06v07','roam_types','C','0');
insert into  t_pp_subprcparam values('yuk06v07','call_types','01','0');
insert into  t_pp_subprcparam values('yuk06v07','ltfavorcap','0','0');
insert into  t_pp_subprcparam values('yuk06v07','service_codes','*','0');

delete from t_pp_fav_index where FAV_INDEX = 'yuk02g11';
insert into t_pp_fav_index(FAV_TYPE,FAV_INDEX,UNIT_CODE,BUSI_CODE,BILL_CODE,FAV_CODE,FEE_RATE,REMIND_CODE,FREE_SUM,FREE_TYPE,PERIOD,OTHER_FAV_INDEX,EFF_DATE,EXP_DATE,location,cycle_type,cycle_day)values ('YUK02G','yuk02g11','4','3','0','D','0','0','41943040','001000','0','','20110301000000','20190131235959','0','0','0');

delete from t_pp_fav_index where FAV_INDEX = 'yuk05g11';
insert into t_pp_fav_index(FAV_TYPE,FAV_INDEX,UNIT_CODE,BUSI_CODE,BILL_CODE,FAV_CODE,FEE_RATE,REMIND_CODE,FREE_SUM,FREE_TYPE,PERIOD,OTHER_FAV_INDEX,EFF_DATE,EXP_DATE,location,cycle_type,cycle_day)values ('YUK05G','yuk05g11','4','3','0','D','0','0','104857600','001000','0','','20110301000000','20190131235959','0','0','0');


delete t_pp_subprcparam where SUBBILLPRCID = 'ych02g03';

insert into  t_pp_subprcparam values('ych02g03','addtime','30','0');
insert into  t_pp_subprcparam values('ych02g03','feetypes','10000000','0');
insert into  t_pp_subprcparam values('ych02g03','gtfavortype','5','0');
insert into  t_pp_subprcparam values('ych02g03','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('ych02g03','ltfavortype','8','0');
insert into  t_pp_subprcparam values('ych02g03','thresholdval','1048576','0');
insert into  t_pp_subprcparam values('ych02g03','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('ych02g03','adjust','9','0');
insert into  t_pp_subprcparam values('ych02g03','thresholdtype','3','0');
insert into  t_pp_subprcparam values('ych02g03','accumulateID','ych02g01','0');
insert into  t_pp_subprcparam values('ych02g03','units','1024','0');
insert into  t_pp_subprcparam values('ych02g03','warnflag','2','0');
insert into  t_pp_subprcparam values('ych02g03','roam_types','A,B','0');
insert into  t_pp_subprcparam values('ych02g03','ltfavorcap','0','0');


delete t_pp_subprcparam where SUBBILLPRCID = 'ych02g02';

insert into  t_pp_subprcparam values('ych02g02','addtime','30','0');
insert into  t_pp_subprcparam values('ych02g02','feetypes','10000000','0');
insert into  t_pp_subprcparam values('ych02g02','gtfavortype','5','0');
insert into  t_pp_subprcparam values('ych02g02','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('ych02g02','ltfavortype','8','0');
insert into  t_pp_subprcparam values('ych02g02','thresholdval','3145728','0');
insert into  t_pp_subprcparam values('ych02g02','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('ych02g02','adjust','9','0');
insert into  t_pp_subprcparam values('ych02g02','thresholdtype','3','0');
insert into  t_pp_subprcparam values('ych02g02','accumulateID','ych02g01','0');
insert into  t_pp_subprcparam values('ych02g02','units','1024','0');
insert into  t_pp_subprcparam values('ych02g02','warnflag','2','0');
insert into  t_pp_subprcparam values('ych02g02','roam_types','A,B','0');
insert into  t_pp_subprcparam values('ych02g02','ltfavorcap','0','0');


delete t_pp_subprcparam where SUBBILLPRCID = 'yuk06g11';

insert into  t_pp_subprcparam values('yuk06g11','addtime','30','0');
insert into  t_pp_subprcparam values('yuk06g11','feetypes','10000000','0');
insert into  t_pp_subprcparam values('yuk06g11','gtfavortype','5','0');
insert into  t_pp_subprcparam values('yuk06g11','billrebillflag','1','0');
insert into  t_pp_subprcparam values('yuk06g11','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('yuk06g11','ltfavortype','8','0');
insert into  t_pp_subprcparam values('yuk06g11','thresholdval','104857600','0');
insert into  t_pp_subprcparam values('yuk06g11','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('yuk06g11','adjust','9','0');
insert into  t_pp_subprcparam values('yuk06g11','thresholdtype','3','0');
insert into  t_pp_subprcparam values('yuk06g11','accumulateID','yuk06g11','0');
insert into  t_pp_subprcparam values('yuk06g11','cross_flag','2','0');
insert into  t_pp_subprcparam values('yuk06g11','units','1024','0');
insert into  t_pp_subprcparam values('yuk06g11','warnflag','0','0');
insert into  t_pp_subprcparam values('yuk06g11','roam_types','C','0');
insert into  t_pp_subprcparam values('yuk06g11','ltfavorcap','0','0');


delete t_pp_subprcparam where SUBBILLPRCID = 'yuk05g11';

insert into  t_pp_subprcparam values('yuk05g11','addtime','30','0');
insert into  t_pp_subprcparam values('yuk05g11','feetypes','10000000','0');
insert into  t_pp_subprcparam values('yuk05g11','gtfavortype','5','0');
insert into  t_pp_subprcparam values('yuk05g11','billrebillflag','1','0');
insert into  t_pp_subprcparam values('yuk05g11','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('yuk05g11','ltfavortype','8','0');
insert into  t_pp_subprcparam values('yuk05g11','thresholdval','104857600','0');
insert into  t_pp_subprcparam values('yuk05g11','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('yuk05g11','adjust','9','0');
insert into  t_pp_subprcparam values('yuk05g11','thresholdtype','3','0');
insert into  t_pp_subprcparam values('yuk05g11','accumulateID','yuk05g11','0');
insert into  t_pp_subprcparam values('yuk05g11','cross_flag','2','0');
insert into  t_pp_subprcparam values('yuk05g11','units','1024','0');
insert into  t_pp_subprcparam values('yuk05g11','warnflag','0','0');
insert into  t_pp_subprcparam values('yuk05g11','roam_types','C','0');
insert into  t_pp_subprcparam values('yuk05g11','ltfavorcap','0','0');


delete t_pp_subprcparam where SUBBILLPRCID = 'yuk06v06';

insert into  t_pp_subprcparam values('yuk06v06','dial_types','*','0');
insert into  t_pp_subprcparam values('yuk06v06','fee_types','C,0','0');
insert into  t_pp_subprcparam values('yuk06v06','feetypes','10000000','0');
insert into  t_pp_subprcparam values('yuk06v06','gtfavortype','8','0');
insert into  t_pp_subprcparam values('yuk06v06','billrebillflag','1','0');
insert into  t_pp_subprcparam values('yuk06v06','system_types','vc','0');
insert into  t_pp_subprcparam values('yuk06v06','gtfavorcap','50','0');
insert into  t_pp_subprcparam values('yuk06v06','thresholdval','3000','0');
insert into  t_pp_subprcparam values('yuk06v06','ltfavortype','8','0');
insert into  t_pp_subprcparam values('yuk06v06','adjust','9','0');
insert into  t_pp_subprcparam values('yuk06v06','thresholdtype','2','0');
insert into  t_pp_subprcparam values('yuk06v06','accumulateID','yuk06v01','0');
insert into  t_pp_subprcparam values('yuk06v06','cross_flag','0','0');
insert into  t_pp_subprcparam values('yuk06v06','units','60','0');
insert into  t_pp_subprcparam values('yuk06v06','chat_types','000','0');
insert into  t_pp_subprcparam values('yuk06v06','roam_types','C','0');
insert into  t_pp_subprcparam values('yuk06v06','call_types','01','0');
insert into  t_pp_subprcparam values('yuk06v06','ltfavorcap','0','0');
insert into  t_pp_subprcparam values('yuk06v06','service_codes','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = 'yas01g02';

insert into  t_pp_subprcparam values('yas01g02','addtime','30','0');
insert into  t_pp_subprcparam values('yas01g02','feetypes','10000000','0');
insert into  t_pp_subprcparam values('yas01g02','gtfavortype','5','0');
insert into  t_pp_subprcparam values('yas01g02','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('yas01g02','ltfavortype','8','0');
insert into  t_pp_subprcparam values('yas01g02','thresholdval','3145728','0');
insert into  t_pp_subprcparam values('yas01g02','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('yas01g02','adjust','9','0');
insert into  t_pp_subprcparam values('yas01g02','thresholdtype','3','0');
insert into  t_pp_subprcparam values('yas01g02','accumulateID','yas01g01','0');
insert into  t_pp_subprcparam values('yas01g02','units','1024','0');
insert into  t_pp_subprcparam values('yas01g02','warnflag','2','0');
insert into  t_pp_subprcparam values('yas01g02','roam_types','D,E,F,G,H,I,J,K','0');
insert into  t_pp_subprcparam values('yas01g02','ltfavorcap','0','0');


delete t_pp_subprcparam where SUBBILLPRCID = 'yuk04v06';

insert into  t_pp_subprcparam values('yuk04v06','dial_types','*','0');
insert into  t_pp_subprcparam values('yuk04v06','fee_types','C,0','0');
insert into  t_pp_subprcparam values('yuk04v06','feetypes','10000000','0');
insert into  t_pp_subprcparam values('yuk04v06','gtfavortype','8','0');
insert into  t_pp_subprcparam values('yuk04v06','billrebillflag','1','0');
insert into  t_pp_subprcparam values('yuk04v06','system_types','vc','0');
insert into  t_pp_subprcparam values('yuk04v06','gtfavorcap','50','0');
insert into  t_pp_subprcparam values('yuk04v06','thresholdval','1500','0');
insert into  t_pp_subprcparam values('yuk04v06','ltfavortype','8','0');
insert into  t_pp_subprcparam values('yuk04v06','adjust','9','0');
insert into  t_pp_subprcparam values('yuk04v06','thresholdtype','2','0');
insert into  t_pp_subprcparam values('yuk04v06','accumulateID','yuk04v01','0');
insert into  t_pp_subprcparam values('yuk04v06','cross_flag','0','0');
insert into  t_pp_subprcparam values('yuk04v06','units','60','0');
insert into  t_pp_subprcparam values('yuk04v06','chat_types','000','0');
insert into  t_pp_subprcparam values('yuk04v06','roam_types','C','0');
insert into  t_pp_subprcparam values('yuk04v06','call_types','01','0');
insert into  t_pp_subprcparam values('yuk04v06','ltfavorcap','0','0');
insert into  t_pp_subprcparam values('yuk04v06','service_codes','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = 'yuk04v07';

insert into  t_pp_subprcparam values('yuk04v07','dial_types','*','0');
insert into  t_pp_subprcparam values('yuk04v07','fee_types','C,0','0');
insert into  t_pp_subprcparam values('yuk04v07','feetypes','10000000','0');
insert into  t_pp_subprcparam values('yuk04v07','gtfavortype','8','0');
insert into  t_pp_subprcparam values('yuk04v07','billrebillflag','1','0');
insert into  t_pp_subprcparam values('yuk04v07','system_types','vc','0');
insert into  t_pp_subprcparam values('yuk04v07','gtfavorcap','50','0');
insert into  t_pp_subprcparam values('yuk04v07','thresholdval','500','0');
insert into  t_pp_subprcparam values('yuk04v07','ltfavortype','8','0');
insert into  t_pp_subprcparam values('yuk04v07','adjust','9','0');
insert into  t_pp_subprcparam values('yuk04v07','thresholdtype','2','0');
insert into  t_pp_subprcparam values('yuk04v07','accumulateID','yuk04v01','0');
insert into  t_pp_subprcparam values('yuk04v07','cross_flag','0','0');
insert into  t_pp_subprcparam values('yuk04v07','units','60','0');
insert into  t_pp_subprcparam values('yuk04v07','chat_types','000','0');
insert into  t_pp_subprcparam values('yuk04v07','roam_types','C','0');
insert into  t_pp_subprcparam values('yuk04v07','call_types','01','0');
insert into  t_pp_subprcparam values('yuk04v07','ltfavorcap','0','0');
insert into  t_pp_subprcparam values('yuk04v07','service_codes','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = 'yuk05v06';

insert into  t_pp_subprcparam values('yuk05v06','dial_types','*','0');
insert into  t_pp_subprcparam values('yuk05v06','fee_types','C,0','0');
insert into  t_pp_subprcparam values('yuk05v06','feetypes','10000000','0');
insert into  t_pp_subprcparam values('yuk05v06','gtfavortype','8','0');
insert into  t_pp_subprcparam values('yuk05v06','billrebillflag','1','0');
insert into  t_pp_subprcparam values('yuk05v06','system_types','vc','0');
insert into  t_pp_subprcparam values('yuk05v06','gtfavorcap','50','0');
insert into  t_pp_subprcparam values('yuk05v06','thresholdval','1500','0');
insert into  t_pp_subprcparam values('yuk05v06','ltfavortype','8','0');
insert into  t_pp_subprcparam values('yuk05v06','adjust','9','0');
insert into  t_pp_subprcparam values('yuk05v06','thresholdtype','2','0');
insert into  t_pp_subprcparam values('yuk05v06','accumulateID','yuk05v01','0');
insert into  t_pp_subprcparam values('yuk05v06','cross_flag','0','0');
insert into  t_pp_subprcparam values('yuk05v06','units','60','0');
insert into  t_pp_subprcparam values('yuk05v06','chat_types','000','0');
insert into  t_pp_subprcparam values('yuk05v06','roam_types','C','0');
insert into  t_pp_subprcparam values('yuk05v06','call_types','01','0');
insert into  t_pp_subprcparam values('yuk05v06','ltfavorcap','0','0');
insert into  t_pp_subprcparam values('yuk05v06','service_codes','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = 'yuk05v07';

insert into  t_pp_subprcparam values('yuk05v07','dial_types','*','0');
insert into  t_pp_subprcparam values('yuk05v07','fee_types','C,0','0');
insert into  t_pp_subprcparam values('yuk05v07','feetypes','10000000','0');
insert into  t_pp_subprcparam values('yuk05v07','gtfavortype','8','0');
insert into  t_pp_subprcparam values('yuk05v07','billrebillflag','1','0');
insert into  t_pp_subprcparam values('yuk05v07','system_types','vc','0');
insert into  t_pp_subprcparam values('yuk05v07','gtfavorcap','50','0');
insert into  t_pp_subprcparam values('yuk05v07','thresholdval','1000','0');
insert into  t_pp_subprcparam values('yuk05v07','ltfavortype','8','0');
insert into  t_pp_subprcparam values('yuk05v07','adjust','9','0');
insert into  t_pp_subprcparam values('yuk05v07','thresholdtype','2','0');
insert into  t_pp_subprcparam values('yuk05v07','accumulateID','yuk05v01','0');
insert into  t_pp_subprcparam values('yuk05v07','cross_flag','0','0');
insert into  t_pp_subprcparam values('yuk05v07','units','60','0');
insert into  t_pp_subprcparam values('yuk05v07','chat_types','000','0');
insert into  t_pp_subprcparam values('yuk05v07','roam_types','C','0');
insert into  t_pp_subprcparam values('yuk05v07','call_types','01','0');
insert into  t_pp_subprcparam values('yuk05v07','ltfavorcap','0','0');
insert into  t_pp_subprcparam values('yuk05v07','service_codes','*','0');


delete t_pp_subprcparam where SUBBILLPRCID = 'yuk04g11';

insert into  t_pp_subprcparam values('yuk04g11','addtime','30','0');
insert into  t_pp_subprcparam values('yuk04g11','feetypes','10000000','0');
insert into  t_pp_subprcparam values('yuk04g11','gtfavortype','5','0');
insert into  t_pp_subprcparam values('yuk04g11','billrebillflag','1','0');
insert into  t_pp_subprcparam values('yuk04g11','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('yuk04g11','ltfavortype','8','0');
insert into  t_pp_subprcparam values('yuk04g11','thresholdval','41943040','0');
insert into  t_pp_subprcparam values('yuk04g11','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('yuk04g11','adjust','9','0');
insert into  t_pp_subprcparam values('yuk04g11','thresholdtype','3','0');
insert into  t_pp_subprcparam values('yuk04g11','accumulateID','yuk04g11','0');
insert into  t_pp_subprcparam values('yuk04g11','cross_flag','2','0');
insert into  t_pp_subprcparam values('yuk04g11','units','1024','0');
insert into  t_pp_subprcparam values('yuk04g11','warnflag','0','0');
insert into  t_pp_subprcparam values('yuk04g11','roam_types','C','0');
insert into  t_pp_subprcparam values('yuk04g11','ltfavorcap','0','0');


delete t_pp_subprcparam where SUBBILLPRCID = 'yuk02g11';

insert into  t_pp_subprcparam values('yuk02g11','addtime','30','0');
insert into  t_pp_subprcparam values('yuk02g11','feetypes','10000000','0');
insert into  t_pp_subprcparam values('yuk02g11','gtfavortype','5','0');
insert into  t_pp_subprcparam values('yuk02g11','billrebillflag','1','0');
insert into  t_pp_subprcparam values('yuk02g11','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('yuk02g11','ltfavortype','8','0');
insert into  t_pp_subprcparam values('yuk02g11','thresholdval','41943040','0');
insert into  t_pp_subprcparam values('yuk02g11','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('yuk02g11','adjust','9','0');
insert into  t_pp_subprcparam values('yuk02g11','thresholdtype','3','0');
insert into  t_pp_subprcparam values('yuk02g11','accumulateID','yuk02g11','0');
insert into  t_pp_subprcparam values('yuk02g11','cross_flag','2','0');
insert into  t_pp_subprcparam values('yuk02g11','units','1024','0');
insert into  t_pp_subprcparam values('yuk02g11','warnflag','0','0');
insert into  t_pp_subprcparam values('yuk02g11','roam_types','C','0');
insert into  t_pp_subprcparam values('yuk02g11','ltfavorcap','0','0');

delete t_pp_subprcplan where SUBBILLPRCID = 'yas01g02';
insert into t_pp_subprcplan values('yas01g02','1','gg,gs','F431','00000','20180831000000','20190131235959','0','漫游亚太，数据流量3GB/30天');

delete from t_pp_fav_index where FAV_INDEX = 'yuk06g11';
insert into t_pp_fav_index(FAV_TYPE,FAV_INDEX,UNIT_CODE,BUSI_CODE,BILL_CODE,FAV_CODE,FEE_RATE,REMIND_CODE,FREE_SUM,FREE_TYPE,PERIOD,OTHER_FAV_INDEX,EFF_DATE,EXP_DATE,location,cycle_type,cycle_day)values ('YUK06G','yuk06g11','4','3','0','D','0','0','104857600','001000','0','','20110301000000','20190131235959','0','0','0');


delete t_pp_subprcparam where SUBBILLPRCID = 'yas01g03';

insert into  t_pp_subprcparam values('yas01g03','addtime','30','0');
insert into  t_pp_subprcparam values('yas01g03','feetypes','10000000','0');
insert into  t_pp_subprcparam values('yas01g03','gtfavortype','5','0');
insert into  t_pp_subprcparam values('yas01g03','system_types','gg,gs','0');
insert into  t_pp_subprcparam values('yas01g03','ltfavortype','8','0');
insert into  t_pp_subprcparam values('yas01g03','thresholdval','1048576','0');
insert into  t_pp_subprcparam values('yas01g03','gtfavorcap','0','0');
insert into  t_pp_subprcparam values('yas01g03','adjust','9','0');
insert into  t_pp_subprcparam values('yas01g03','thresholdtype','3','0');
insert into  t_pp_subprcparam values('yas01g03','accumulateID','yas01g01','0');
insert into  t_pp_subprcparam values('yas01g03','units','1024','0');
insert into  t_pp_subprcparam values('yas01g03','warnflag','2','0');
insert into  t_pp_subprcparam values('yas01g03','roam_types','D,E,F,G,H,I,J,K','0');
insert into  t_pp_subprcparam values('yas01g03','ltfavorcap','0','0');

delete t_pp_subprcplan where SUBBILLPRCID = 'yuk06g11';
insert into t_pp_subprcplan values('yuk06g11','1','gg,gs','F461','00000','20180831000000','20190131235959','0','漫游英国100GB，超出后禁止使用');

delete t_pp_subprcplan where SUBBILLPRCID = 'ych02g02';
insert into t_pp_subprcplan values('ych02g02','1','gg,gs','F431','00000','20180831000000','20190131235959','0','漫游中港，数据流量3GB/30天');

delete t_pp_subprcplan where SUBBILLPRCID = 'yuk04g11';
insert into t_pp_subprcplan values('yuk04g11','1','gg,gs','F461','00000','20180831000000','20190131235959','0','漫游英国40GB，超出后禁止使用');

delete t_pp_subprcplan where SUBBILLPRCID = 'yuk05v06';
insert into t_pp_subprcplan values('yuk05v06','1','vc','F431','0000d','20180831000000','20190131235959','0','漫游英国，拨打英国手机（不含特殊号码）分钟数1500分钟/30天');

delete t_pp_subprcplan where SUBBILLPRCID = 'yuk05g11';
insert into t_pp_subprcplan values('yuk05g11','1','gg,gs','F461','00000','20180831000000','20190131235959','0','漫游英国100GB，超出后禁止使用');

delete t_pp_subprcplan where SUBBILLPRCID = 'yuk06v06';
insert into t_pp_subprcplan values('yuk06v06','1','vc','F431','0000d','20180831000000','20190131235959','0','漫游英国，拨打英国手机（不含特殊号码）分钟数3000分钟/30天');

delete t_pp_subprcplan where SUBBILLPRCID = 'yuk04v06';
insert into t_pp_subprcplan values('yuk04v06','1','vc','F431','0000d','20180831000000','20190131235959','0','漫游英国，拨打英国手机（不含特殊号码）分钟数1500分钟/30天');

delete t_pp_subprcplan where SUBBILLPRCID = 'yuk04v07';
insert into t_pp_subprcplan values('yuk04v07','1','vc','F431','0000d','20190201000000','20500101000000','0','漫游英国，拨打英国手机（不含特殊号码）分钟数500分钟/30天');

delete t_pp_subprcplan where SUBBILLPRCID = 'yuk02g11';
insert into t_pp_subprcplan values('yuk02g11','1','gg,gs','F461','00000','20180831000000','20190131235959','0','漫游英国40GB，超出后禁止使用');

