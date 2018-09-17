#!/usr/bin/python
# coding: utf-8

from PublicCfg import *

class CreateFeePlan:
	def __init__( self, feeplanmodefile, feeplanlist, dstfeeplanfilename, planid_num, prodmode ):
		self.feeplanlist = feeplanlist # 费率计划列表
		self.dstfeeplanfilename = dstfeeplanfilename
		self.planid_num = planid_num
		self.prodmode = prodmode

		self.MyConfigParser = MyConfigParser()
		self.MyConfigParser.read( feeplanmodefile )
		self.subplanid_num = self.GetSubPlanId()

		self.dst_file = open( self.dstfeeplanfilename, 'a' )

	def __del__( self ):
		self.dst_file.close()

	def GetSubPlanId( self ):
		count = 0
		feeplan_list = self.feeplanlist.split( ',' )
		for feeplan in feeplan_list:
			feeplan_num = feeplan.split( '/' )[1].strip()
			count += int(feeplan_num)
		return count

	def GetRecordNumForFavIndex( self ):
		''' 获取t_pp_fav_index 表的记录数，根据除了F101之外的费率计划总和 '''
		count = 0
		feeplan_list = self.feeplanlist.split( ',' )
		for feeplan in feeplan_list:
			feeplan_name = feeplan.split( '/' )[0].strip()
			if "F101" in feeplan_name:
				continue
			feeplan_num = feeplan.split( '/' )[1].strip()
			count += int(feeplan_num)
		return count

	def PrintParams( self ):
		print self.feeplanlist, self.dstfeeplanfilename

	def Write2DstFile( self, feeplan_id, feeplan_num ):
		for i in range( int(feeplan_num) ):
			subparams = self.MyConfigParser.options( feeplan_id )
			self.dst_file.write( '\n[' + feeplan_id + '_%d]\n' % int(i+1) )
			self.dst_file.write( 'subplanid = \nnote = \n' )
			for param in subparams:
				content = "%-20s =\t %-12s\n" % ( param, self.MyConfigParser.get( feeplan_id, param ) )
				self.dst_file.write( content )
		self.dst_file.write( '\n' )

	def Add_t_pp_fav_index( self ):
		for i in range( int( self.GetRecordNumForFavIndex() ) ): # 非F101的数量
			self.dst_file.write( '\n[t_pp_fav_index_%d]\n' % int(i+1) )
			table_section = 't_pp_fav_index/' + self.prodmode
			for section in self.MyConfigParser.options( table_section ):
				content = "%-20s =\t %-12s\n" % ( section, self.MyConfigParser.get( table_section, section ) )
				self.dst_file.write( content )
		self.dst_file.write( '\n' )

	def Add_t_pp_mainprodprc_brand( self ):
		for i in range( int(self.planid_num) ):
			self.dst_file.write( '\n[t_pp_mainprodprc_brand_%d]\n' % int(i+1) )
			table_section = 't_pp_mainprodprc_brand/' + self.prodmode
			for section in self.MyConfigParser.options( table_section ):
				content = "%-20s =\t %-12s\n" % ( section, self.MyConfigParser.get( table_section, section ) )
				self.dst_file.write( content )
		self.dst_file.write( '\n' )

	def Add_pd_transprodprc( self ):
		for i in range( int(self.planid_num) ):
			self.dst_file.write( '\n[pd_transprodprc_%d]\n' % int(i+1) )
			table_section = 'pd_transprodprc/' + self.prodmode
			for section in self.MyConfigParser.options( table_section ):
				content = "%-20s =\t %-12s\n" % ( section, self.MyConfigParser.get( table_section, section ) )
				self.dst_file.write( content )
		self.dst_file.write( '\n' )

	def Add_sbillmodedetail( self ):
		for i in range( int(self.planid_num)*2 ):
			self.dst_file.write( '\n[sbillmodedetail_%d]\n' % int(i+1) )
			table_section = 'sbillmodedetail/' + self.prodmode
			for section in self.MyConfigParser.options( table_section ):
				content = "%-20s =\t %-12s\n" % ( section, self.MyConfigParser.get( table_section, section ) )
				self.dst_file.write( content )
		self.dst_file.write( '\n' )

	def Add_short_term_product( self ):
		for i in range( int(self.planid_num) ):
			self.dst_file.write( '\n[short_term_product_%d]\n' % int(i+1) )
			table_section = 'short_term_product/' + self.prodmode
			for section in self.MyConfigParser.options( table_section ):
				content = "%-20s =\t %-12s\n" % ( section, self.MyConfigParser.get( table_section, section ) )
				self.dst_file.write( content )
		self.dst_file.write( '\n' )

	def Add_result_code_replace( self ):
		for i in range( int(self.planid_num)*3 ):
			self.dst_file.write( '\n[result_code_replace_%d]\n' % int(i+1) )
			table_section = 'result_code_replace/' + self.prodmode
			for section in self.MyConfigParser.options( table_section ):
				content = "%-20s =\t %-12s\n" % ( section, self.MyConfigParser.get( table_section, section ) )
				self.dst_file.write( content )
		self.dst_file.write( '\n' )


	def DealSplitFeePlane( self ):
		feeplan_list = self.feeplanlist.split( ',' )
		for feeplan in feeplan_list:
			feeplan_id = feeplan.split( '/' )[0].strip()
			feeplan_num = feeplan.split( '/' )[1].strip()
			self.Write2DstFile( feeplan_id, feeplan_num )

	def AddTableMode2File( self ):
		#t_pp_subprcplan
		for i in range( int( self.subplanid_num ) ):
			self.dst_file.write( '\n[t_pp_subprcplan_%d]\n' % int(i+1) )
			for section in self.MyConfigParser.options( 't_pp_subprcplan' ):
				content = "%-20s =\t %-12s\n" % ( section, self.MyConfigParser.get( 't_pp_subprcplan', section ) )
				self.dst_file.write( content )
		self.dst_file.write( '\n' )

		#t_pp_billprcplan
		for i in range( int(self.planid_num) ):
			self.dst_file.write( '\n[t_pp_billprcplan_%d]\n' % int(i+1) )
			for section in self.MyConfigParser.options( 't_pp_billprcplan' ):
				content = "%-20s =\t %-12s\n" % ( section, self.MyConfigParser.get( 't_pp_billprcplan', section ) )
				self.dst_file.write( content )
		self.dst_file.write( '\n' )

		for table_section in self.MyConfigParser.sections():
			if self.prodmode in table_section:
				tablename = table_section.split('/')[0]
				if 't_pp_fav_index' in tablename:
					self.Add_t_pp_fav_index()
				elif 't_pp_mainprodprc_brand' in tablename:
					self.Add_t_pp_mainprodprc_brand()
				elif 'pd_transprodprc' in tablename:
					self.Add_pd_transprodprc()
				elif 'sbillmodedetail' in tablename:
					self.Add_sbillmodedetail()
				elif 'short_term_product' in tablename:
					self.Add_short_term_product()
				elif 'result_code_replace' in tablename:
					self.Add_result_code_replace()
				else:
					logging.error( '未知模板！' )
					sys.exit()
			else:
				continue

def Usage():
	print "\n\t Usage: python CreateFeePlanPattern.py [1] [2] [3] [4] [5]"
	print "\t\t param[1]: 指系统 HK/US/EU"
	print "\t\t param[2]: 指费率计划 '/' 前面的是费率计划，后面的是需要几个这样的费率计划"
	print "\t\t param[3]: 指需要几个产品主资费ID"
	print "\t\t param[4]: 指是主产品、短效卡还是附加产品，对应 mprods/sprods/aprods, 欧分美分这三个值都一样"
	print "\t\t param[5]: 指生成最终目标的配置模板文件路径"
	print "\n\t Demo: python CreateFeePlanPattern.py HK F101_vc/3,F101_gs/2 3 mprods ../result/a.mode\n"
	sys.exit()

def main():
	if len(sys.argv) != 6:
		Usage()
	try:
		region = sys.argv[1]
		feeplanmodefile = PUBLIC_PATH + "/" + FEEPLANMODE + "_" + region + ".cfg"
		feeplanlist = sys.argv[2]
		dstfeeplanfilename = sys.argv[5]
		planid_num = sys.argv[3]
		prodmode = sys.argv[4]
	except:
		Usage()

	RemoveFile( dstfeeplanfilename )

	deal_CreateFeePlan = CreateFeePlan( feeplanmodefile, feeplanlist, dstfeeplanfilename, planid_num, prodmode )
	deal_CreateFeePlan.DealSplitFeePlane()
	deal_CreateFeePlan.AddTableMode2File()

if __name__=="__main__":
	main()
