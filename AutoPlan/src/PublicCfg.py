#!/usr/bin/python
# coding: utf-8

import sys
import ConfigParser
import logging
import os

PUBLIC_PATH = "../public"
FEEPLANMODE = "feeplanidmode"
BASE_MODE_PATH = "../public/base_mode.cfg"
BASE_MODE_HK = "../public/mode_HK.cfg"
BASE_MODE = "base_mode" # base_cfg field sections name
# 除了资费配置3表之外的表，都要记录在这个字段里面
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
