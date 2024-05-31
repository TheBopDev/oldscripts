#!/bin/sh
PROJECT=example
TOP_LEVEL_FILE=example.vhdl
FAMILY="MAX 10"
PART=partnumber
PACKING_OPTION=minimize_area
quartus_map $PROJECT --source=$TOP_LEVEL_FILE --family=$FAMILY
quartus_fit $PROJECT --part=$PART --pack_register=$PACKING_OPTION
quartus_asm $PROJECT
quartus_sta $PROJECT
