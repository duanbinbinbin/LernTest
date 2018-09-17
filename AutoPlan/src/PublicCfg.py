#!/usr/bin/python
# coding: utf-8

import sys
import ConfigParser
import logging
import os

PUBLIC_PATH = "../public"
FEEPLANMODE = "feeplanidmode"
# �����ʷ�����3��֮��ı���Ҫ��¼������ֶ�����
TABLESTRING = "t_pp_fav_index/t_pp_mainprodprc_brand/pd_transprodprc/sbillmodedetail/short_term_product\
				/result_code_replace"

logging.basicConfig(level=logging.DEBUG,
                    format='%(asctime)s - %(filename)s[%(lineno)d] - %(levelname)s: %(message)s', \
					datefmt='%Y-%m-%d %H:%M:%S')

def RemoveFile( filename ):
	if os.path.exists( filename ):
		os.remove( filename )

class MyConfigParser(ConfigParser.ConfigParser):
    def __init__(self, defaults=None):
        ConfigParser.ConfigParser.__init__(self, defaults=None)

    def optionxform(self, optionstr):
        return optionstr
