#!/usr/bin/python
# coding: utf-8

from PublicCfg import *

class CreatePlan:
	def __init__( self, feeplanmodefile, dst_newplanfile ):
		self.feeplanmodefile = feeplanmodefile
		self.dst_newplanfile = dst_newplanfile
		self.MyConfigParser = MyConfigParser()
		self.MyConfigParser.read( feeplanmodefile )

		self.dst_newplanfile_fw = open( dst_newplanfile, 'a' )

		self.result_code_replace_flag = 1
		self.sbillmodedetail_flag = 1

	def __del__( self ):
		self.dst_newplanfile_fw.close()

	def Write2File( self, content ):
		self.dst_newplanfile_fw.write( content )

	def AddSubPlanParams( self ):
		for feeplanid in self.MyConfigParser.sections():
			if cmp( feeplanid[0:1], 'F' ) == 0:

				try:
					subplanid = self.MyConfigParser.get( feeplanid, 'subplanid' )
				except:
					logging.error( '[%s]文件缺少 subplanid or note!' % self.feeplanmodefile )
					sys.exit()
				clear_sql = "\ndelete t_pp_subprcparam where SUBBILLPRCID = \'%s\';\n\n" % subplanid
				self.Write2File( clear_sql )
				for subparam in self.MyConfigParser.options( feeplanid ):
					try:
						if (cmp( subparam, 'note') == 0) or (cmp( subparam, 'subplanid' ) == 0):
							continue
						subparam_sql = "insert into  t_pp_subprcparam values('"+ subplanid +"','"+ subparam +"','"+ \
										self.MyConfigParser.get( feeplanid, subparam ) +"','0');\n"
					except:
						 logging.error( '生成sql失败，退出程序！' )
						 sys.exit()
					self.Write2File( subparam_sql )
				self.Write2File( '\n' )

			elif 't_pp_billprcplan' in feeplanid:
				self.AddBillPlan( feeplanid )
			elif 't_pp_subprcplan' in feeplanid:
				self.AddSubBillplan( feeplanid )
			elif 't_pp_fav_index' in feeplanid:
				self.Add_t_pp_fav_index( feeplanid )
			elif 't_pp_mainprodprc_brand' in feeplanid:
				self.Add_t_pp_mainprodprc_brand( feeplanid )
			elif 'pd_transprodprc' in feeplanid:
				self.Add_pd_transprodprc( feeplanid )
			elif 'sbillmodedetail' in feeplanid:
				self.Add_sbillmodedetail( feeplanid )
			elif 'short_term_product' in feeplanid:
				self.Add_short_term_product( feeplanid )
			elif 'result_code_replace' in feeplanid:
				self.Add_result_code_replace( feeplanid )
			else:
				logging.error( 'unknown cfg!' )
				sys.exit()

	#insert into t_pp_billprcplan values('WG4019','WG4019','1','gg,gs','g','1',1,20,?,'00000','20180501000000','20500101000000','0','电渠准后付中港套餐1GB($118)') <lob>='WG401901';
	def AddBillPlan( self, feeplanid ):
		priority       = self.MyConfigParser.get( feeplanid, 'priority' )
		billprcfavtype = self.MyConfigParser.get( feeplanid, 'billprcfavtype' )
		billprcsubtype = self.MyConfigParser.get( feeplanid, 'billprcsubtype' )
		billprcid      = self.MyConfigParser.get( feeplanid, 'billprcid' )
		eff_date       = self.MyConfigParser.get( feeplanid, 'eff_date' )
		billprctype    = self.MyConfigParser.get( feeplanid, 'billprctype' )
		note           = self.MyConfigParser.get( feeplanid, 'note' )
		prcexpr        = self.MyConfigParser.get( feeplanid, 'prcexpr' )
		exp_date       = self.MyConfigParser.get( feeplanid, 'exp_date' )
		subpriority    = self.MyConfigParser.get( feeplanid, 'subpriority' )
		billtype       = self.MyConfigParser.get( feeplanid, 'billtype' )
		audit_flag     = self.MyConfigParser.get( feeplanid, 'audit_flag' )
		billprcname    = self.MyConfigParser.get( feeplanid, 'billprcname' )
		attr           = self.MyConfigParser.get( feeplanid, 'attr' )

		clear_sql = "delete t_pp_billprcplan where BILLPRCID = '%s';\n" % billprcid
		self.Write2File( clear_sql )
		try:
			param_sql = "insert into t_pp_billprcplan values('%s','%s','%s','%s','%s','%s',%d,%d,?,'%s','%s','%s','%s','%s') <lob>='%s';\n" % ( billprcid,billprcname,billprctype,billprcsubtype,billprcfavtype,billtype,int(priority),int(subpriority),attr,eff_date,exp_date,audit_flag,note,prcexpr )
		except:
			logging.error( '上一步生成的模板文件后面的字段解释没有删除，退出程序!' )
			self.dst_newplanfile_fw.close()
			sys.exit()
		self.Write2File( param_sql )
		self.Write2File( '\n' )

	def AddSubBillplan( self, planid ):
		feeplanid     =	 self.MyConfigParser.get( planid, 'feeplanid' )
		attr          =	 self.MyConfigParser.get( planid, 'attr' )
		eff_date      =	 self.MyConfigParser.get( planid, 'eff_date' )
		audit_flag    =	 self.MyConfigParser.get( planid, 'audit_flag' )
		subbillprcid  =	 self.MyConfigParser.get( planid, 'subbillprcid' )
		note          =	 self.MyConfigParser.get( planid, 'note' )
		suboperation  =	 self.MyConfigParser.get( planid, 'suboperation' )
		exp_date      =	 self.MyConfigParser.get( planid, 'exp_date' )
		type          =	 self.MyConfigParser.get( planid, 'type' )

		clear_sql = "delete t_pp_subprcplan where SUBBILLPRCID = '%s';\n" % subbillprcid
		self.Write2File( clear_sql )

		param_sql = "insert into t_pp_subprcplan values('%s','%s','%s','%s','%s','%s','%s','%s','%s');\n" % ( subbillprcid,type,suboperation,feeplanid,attr,eff_date,exp_date,audit_flag,note )
		self.Write2File( param_sql )
		self.Write2File( '\n' )

	def Add_t_pp_fav_index( self, feeplanid ):
		fav_type			=	self.MyConfigParser.get( feeplanid, 'fav_type' )
		fav_index           =	self.MyConfigParser.get( feeplanid, 'fav_index' )
		unit_code           =	self.MyConfigParser.get( feeplanid, 'unit_code' )
		busi_code           =	self.MyConfigParser.get( feeplanid, 'busi_code' )
		bill_code           =	self.MyConfigParser.get( feeplanid, 'bill_code' )
		fav_code            =	self.MyConfigParser.get( feeplanid, 'fav_code' )
		fee_rate            =	self.MyConfigParser.get( feeplanid, 'fee_rate' )
		remind_code         =	self.MyConfigParser.get( feeplanid, 'remind_code' )
		free_sum            =	self.MyConfigParser.get( feeplanid, 'free_sum' )
		free_type           =	self.MyConfigParser.get( feeplanid, 'free_type' )
		period              =	self.MyConfigParser.get( feeplanid, 'period' )
		other_fav_index     =	self.MyConfigParser.get( feeplanid, 'other_fav_index' )
		eff_date            =	self.MyConfigParser.get( feeplanid, 'eff_date' )
		exp_date            =	self.MyConfigParser.get( feeplanid, 'exp_date' )
		location            =	self.MyConfigParser.get( feeplanid, 'location' )
		cycle_type          =	self.MyConfigParser.get( feeplanid, 'cycle_type' )
		cycle_day           =	self.MyConfigParser.get( feeplanid, 'cycle_day' )

		#delete from t_pp_fav_index where FAV_INDEX = 'VG6019HM';
		clear_sql = "delete from t_pp_fav_index where FAV_INDEX = '%s';\n" % fav_index
		self.Write2File( clear_sql )

		param_sql =	"insert into t_pp_fav_index(FAV_TYPE,FAV_INDEX,UNIT_CODE,BUSI_CODE,BILL_CODE,FAV_CODE,FEE_RATE,REMIND_CODE,FREE_SUM,FREE_TYPE,PERIOD,OTHER_FAV_INDEX,EFF_DATE,EXP_DATE,location,cycle_type,cycle_day)values ('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s');\n" % ( fav_type,fav_index,unit_code,busi_code,bill_code,fav_code,fee_rate,remind_code,free_sum,free_type,period,other_fav_index,eff_date,exp_date,location,cycle_type,cycle_day )

		self.Write2File( param_sql )
		self.Write2File( '\n' )

	def Add_t_pp_mainprodprc_brand( self, feeplanid ):
		user_brand			=	self.MyConfigParser.get( feeplanid, 'user_brand' )
		prod_prcid          =	self.MyConfigParser.get( feeplanid, 'prod_prcid' )
		prod_prcid_param    =	self.MyConfigParser.get( feeplanid, 'prod_prcid_param' )
		billprcid           =	self.MyConfigParser.get( feeplanid, 'billprcid' )
		note                =	self.MyConfigParser.get( feeplanid, 'note' )

		clear_sql = "delete from T_PP_MAINPRODPRC_BRAND where prod_prcid = '%s';\n" % prod_prcid
		self.Write2File( clear_sql )

		param_sql =	"insert into T_PP_MAINPRODPRC_BRAND(user_brand,prod_prcid,prod_prcid_param,billprcid,note) values('%s','%s','%s','%s','%s');\n" % ( user_brand,prod_prcid,prod_prcid_param,billprcid,note )
		self.Write2File( param_sql )
		self.Write2File( '\n' )

	def Add_pd_transprodprc( self, feeplanid ):
		region_code			=	self.MyConfigParser.get( feeplanid, 'region_code' )
		user_prc            =	self.MyConfigParser.get( feeplanid, 'user_prc' )
		pricing_id          =	self.MyConfigParser.get( feeplanid, 'pricing_id' )
		prod_prc            =	self.MyConfigParser.get( feeplanid, 'prod_prc' )
		state               =	self.MyConfigParser.get( feeplanid, 'state' )
		note                =	self.MyConfigParser.get( feeplanid, 'note' )

		clear_sql = "delete from PD_TRANSPRODPRC where prod_prc = '%s';\n" % prod_prc
		self.Write2File( clear_sql )

		param_sql = "insert into PD_TRANSPRODPRC(region_code,user_prc,pricing_id,prod_prc,state,note) values ('%s','%s','%s','%s','%s','%s');\n" % ( region_code,user_prc,pricing_id,prod_prc,state,note )

		self.Write2File( param_sql )
		self.Write2File( '\n' )

	def Add_sbillmodedetail( self, feeplanid ):
		owner_type			=	self.MyConfigParser.get( feeplanid, 'owner_type' )
		region_code         =	self.MyConfigParser.get( feeplanid, 'region_code' )
		detail_code         =	self.MyConfigParser.get( feeplanid, 'detail_code' )
		detail_type         =	self.MyConfigParser.get( feeplanid, 'detail_type' )
		mode_code           =	self.MyConfigParser.get( feeplanid, 'mode_code' )
		fav_order           =	self.MyConfigParser.get( feeplanid, 'fav_order' )
		mode_time           =	self.MyConfigParser.get( feeplanid, 'mode_time' )
		time_flag           =	self.MyConfigParser.get( feeplanid, 'time_flag' )
		begin_time          =	self.MyConfigParser.get( feeplanid, 'begin_time' )
		end_time            =	self.MyConfigParser.get( feeplanid, 'end_time' )
		eff_time            =	self.MyConfigParser.get( feeplanid, 'eff_time' )
		exp_time            =	self.MyConfigParser.get( feeplanid, 'exp_time' )

		if self.sbillmodedetail_flag:
			clear_sql = "delete from SBILLMODEDETAIL where mode_code = '%s';\n" % mode_code
			self.Write2File( clear_sql )
			self.sbillmodedetail_flag = 0

		param_sql = "insert into SBILLMODEDETAIL(owner_type,REGION_CODE,DETAIL_CODE,detail_type,mode_code,fav_order,MODE_TIME,TIME_FLAG,BEGIN_TIME,END_TIME,EFF_TIME,EXP_TIME) values ('%s','%s','%s','%s','%s',%d,'%s','%s','%s','%s','%s','%s');\n" % ( owner_type,region_code,detail_code,detail_type,mode_code,int(fav_order),mode_time,time_flag,begin_time,end_time,eff_time,exp_time )
		self.Write2File( param_sql )
		self.Write2File( '\n' )

	def Add_short_term_product( self, feeplanid ):
		prod_prcid			=	self.MyConfigParser.get( feeplanid, 'prod_prcid' )

		clear_sql = "delete from short_term_product where prod_prcid = '%s';\n" % prod_prcid
		self.Write2File( clear_sql )

		param_sql = "insert into short_term_product(prod_prcid) values('%s');\n" % prod_prcid
		self.Write2File( param_sql )
		self.Write2File( '\n' )

	def Add_result_code_replace( self, feeplanid ):
		prod_prcid			=	self.MyConfigParser.get( feeplanid, 'prod_prcid' )
		old_result_code     =	self.MyConfigParser.get( feeplanid, 'old_result_code' )
		new_result_code     =	self.MyConfigParser.get( feeplanid, 'new_result_code' )
		note                =	self.MyConfigParser.get( feeplanid, 'note' )

		if self.result_code_replace_flag :
			clear_sql = "delete from RESULT_CODE_REPLACE where prod_prcid = '%s';\n" % prod_prcid
			self.Write2File( clear_sql )
			self.result_code_replace_flag = 0

		param_sql = "insert into RESULT_CODE_REPLACE(prod_prcid,OLD_RESULT_CODE,NEW_RESULT_CODE,NOTE) values('%s','%s','%s','%s');\n" %( prod_prcid,old_result_code,new_result_code,note )
		self.Write2File( param_sql )
		self.Write2File( '\n' )

def Usage():
	print "\n\t Usage: python CreateNewPlan.py [1] [2]"
	print "\t\t param[1]: 上一步生成的模板，配置资费的源模板"
	print "\t\t param[2]: 生成最终目标资费的SQL文件路径"
	print "\n\t Demo: python CreateNewPlan.py ../result/a.mode ../result/newplan.sql\n"
	sys.exit()

def main():
	if len(sys.argv) != 3:
		Usage()
	try:
		feeplanmodefile = sys.argv[1]
		dst_newplanfile = sys.argv[2]
	except:
		Usage()

	RemoveFile( dst_newplanfile )

	deal_CreatePlan = CreatePlan( feeplanmodefile, dst_newplanfile )
	deal_CreatePlan.AddSubPlanParams()

if __name__=="__main__":
	main()
