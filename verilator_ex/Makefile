all:
	verilator -O3 -Wall -Wno-DECLFILENAME --cc conv_3_1.v --exe sim_DesignTop_main.cpp --top-module DesignTop
	make -C obj_dir -j -f VDesignTop.mk VDesignTop
	./obj_dir/VDesignTop
