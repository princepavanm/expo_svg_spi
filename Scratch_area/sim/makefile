LSB_8BIT_DATA_TEST=lsb_8bit_data_test
LSB_16BIT_DATA_TEST=lsb_16bit_data_test
LSB_32BIT_DATA_TEST=lsb_32bit_data_test
LSB_64BIT_DATA_TEST=lsb_64bit_data_test
LSB_128BIT_DATA_TEST=lsb_128bit_data_test
MSB_8BIT_DATA_TEST=msb_8bit_data_test
MSB_16BIT_DATA_TEST=msb_16bit_data_test
MSB_32BIT_DATA_TEST=msb_32bit_data_test
MSB_64BIT_DATA_TEST=msb_64bit_data_test
MSB_128BIT_DATA_TEST=msb_128bit_data_test
RX_RAISING_TX_FALLING_TEST=Rx_raising_Tx_falling_test
RX_FALLING_TX_RAISING_TEST=Rx_falling_Tx_raising_test

#MODULE_PATH=/cygdrive/c/cygwin64/home/ashig/Documents/SPI
MODULE_PATH=../../../SPI

SEED=10
DUMP_OPTS=DUMP_ON

DUT_DIR=$(MODULE_PATH)/Project_area/rtl
DUT_FILE=$(DUT_DIR)/spi_top.v

TB_DIR=$(MODULE_PATH)/Project_area/vrf/tb
#TOP_DIR=$(TB_DIR)/tb/
ENV_DIR=$(MODULE_PATH)/Project_area/vrf/tb/spi_env
AGENT_DIR=$(MODULE_PATH)/Project_area/vrf/agents
SEQ_DIR=$(MODULE_PATH)/Project_area/vrf/Seqs

TOP_FILE=$(TB_DIR)/tb_top.sv

TEST_DIR=$(MODULE_PATH)/Project_area/vrf/tests

LOG_DIR=$(MODULE_PATH)/Scratch_area/log
SIM_DIR=$(MODULE_PATH)/Scratch_area/sim


INC_DIR=+incdir+$(DUT_DIR) +incdir+$(AGENT_DIR) +incdir+$(AGENT_DIR)/wb_agent +incdir+$(AGENT_DIR)/spi_slave_agent +incdir+$(AGENT_DIR)/reset_agent +incdir+$(TEST_DIR) +incdir+$(SEQ_DIR)  +incdir+$(ENV_DIR)  +incdir+$(TB_DIR) +incdir+$(LOG_DIR) +incdir+$(SIM_DIR)


comp:
	vlog -coveropt 3 +cover -L $(QUESTA_HOME)/uvm-1.2 +define+$(DUMP_OPTS) $(INC_DIR) $(DUT_FILE) $(TOP_FILE)

vsim:
	rm -rf $(LOG_DIR)/$(TEST_NAME)_$(SEED)
	rm -rf $(TEST_NAME)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(TEST_NAME)_$(SEED)
	vsim -c -debugDB -sv_seed $(SEED) -cvgperinstance -voptargs=+acc -coverage -voptargs="+cover=all" +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(TEST_NAME) -l $(LOG_DIR)/$(TEST_NAME)_$(SEED)/$(TEST_NAME)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(TEST_NAME)_$(SEED)/$(TEST_NAME)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all; exit" work.top

run:	comp vsim

###################################################################### individual test cases #######################################################################
###################################################################### LSB_8 BIT_DATA_TEST #######################################################################

run_lsb_8bit_data_test: comp
	rm -rf $(LOG_DIR)/$(LSB_8BIT_DATA_TEST)_$(SEED)
	rm -rf $(LSB_8BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(LSB_8BIT_DATA_TEST)_$(SEED)
	
	vsim -c -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(LSB_8BIT_DATA_TEST) -l $(LOG_DIR)/$(LSB_8BIT_DATA_TEST)_$(SEED)/$(LSB_8BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(LSB_8BIT_DATA_TEST)_$(SEED)/$(LSB_8BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top

run_lsb_8bit_data_test_qs: comp
	rm -rf $(LOG_DIR)/$(LSB_8BIT_DATA_TEST)_$(SEED)
	rm -rf $(LSB_8BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(LSB_8BIT_DATA_TEST)_$(SEED)
	
	vsim -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(LSB_8BIT_DATA_TEST) -l $(LOG_DIR)/$(LSB_8BIT_DATA_TEST)_$(SEED)/$(LSB_8BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(LSB_8BIT_DATA_TEST)_$(SEED)/$(LSB_8BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top

###################################################################### LSB_16 BIT_DATA_TEST #######################################################################

run_lsb_16bit_data_test: comp
	rm -rf $(LOG_DIR)/$(LSB_16BIT_DATA_TEST)_$(SEED)
	rm -rf $(LSB_16BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(LSB_16BIT_DATA_TEST)_$(SEED)
	
	vsim -c -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(LSB_16BIT_DATA_TEST) -l $(LOG_DIR)/$(LSB_16BIT_DATA_TEST)_$(SEED)/$(LSB_16BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(LSB_16BIT_DATA_TEST)_$(SEED)/$(LSB_16BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top

run_lsb_16bit_data_test_qs: comp
	rm -rf $(LOG_DIR)/$(LSB_16BIT_DATA_TEST)_$(SEED)
	rm -rf $(LSB_16BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(LSB_16BIT_DATA_TEST)_$(SEED)
	
	vsim -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(LSB_16BIT_DATA_TEST) -l $(LOG_DIR)/$(LSB_16BIT_DATA_TEST)_$(SEED)/$(LSB_16BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(LSB_16BIT_DATA_TEST)_$(SEED)/$(LSB_16BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top


###################################################################### LSB_32 BIT_DATA_TEST #######################################################################

run_lsb_32bit_data_test: comp
	rm -rf $(LOG_DIR)/$(LSB_32BIT_DATA_TEST)_$(SEED)
	rm -rf $(LSB_32BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(LSB_32BIT_DATA_TEST)_$(SEED)
	
	vsim -c -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(LSB_32BIT_DATA_TEST) -l $(LOG_DIR)/$(LSB_32BIT_DATA_TEST)_$(SEED)/$(LSB_32BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(LSB_32BIT_DATA_TEST)_$(SEED)/$(LSB_32BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top

run_lsb_32bit_data_test_qs: comp
	rm -rf $(LOG_DIR)/$(LSB_32BIT_DATA_TEST)_$(SEED)
	rm -rf $(LSB_32BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(LSB_32BIT_DATA_TEST)_$(SEED)
	
	vsim -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(LSB_32BIT_DATA_TEST) -l $(LOG_DIR)/$(LSB_32BIT_DATA_TEST)_$(SEED)/$(LSB_32BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(LSB_32BIT_DATA_TEST)_$(SEED)/$(LSB_32BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top


###################################################################### LSB_64 BIT_DATA_TEST #######################################################################

run_lsb_64bit_data_test: comp
	rm -rf $(LOG_DIR)/$(LSB_64BIT_DATA_TEST)_$(SEED)
	rm -rf $(LSB_64BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(LSB_64BIT_DATA_TEST)_$(SEED)
	
	vsim -c -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(LSB_64BIT_DATA_TEST) -l $(LOG_DIR)/$(LSB_64BIT_DATA_TEST)_$(SEED)/$(LSB_64BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(LSB_64BIT_DATA_TEST)_$(SEED)/$(LSB_64BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top

run_lsb_64bit_data_test_qs: comp
	rm -rf $(LOG_DIR)/$(LSB_64BIT_DATA_TEST)_$(SEED)
	rm -rf $(LSB_64BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(LSB_64BIT_DATA_TEST)_$(SEED)
	
	vsim -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(LSB_64BIT_DATA_TEST) -l $(LOG_DIR)/$(LSB_64BIT_DATA_TEST)_$(SEED)/$(LSB_64BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(LSB_64BIT_DATA_TEST)_$(SEED)/$(LSB_64BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top

###################################################################### LSB_128 BIT_DATA_TEST #######################################################################

run_lsb_128bit_data_test: comp
	rm -rf $(LOG_DIR)/$(LSB_128BIT_DATA_TEST)_$(SEED)
	rm -rf $(LSB_128BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(LSB_128BIT_DATA_TEST)_$(SEED)
	
	vsim -c -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(LSB_128BIT_DATA_TEST) -l $(LOG_DIR)/$(LSB_128BIT_DATA_TEST)_$(SEED)/$(LSB_128BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(LSB_128BIT_DATA_TEST)_$(SEED)/$(LSB_128BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top

run_lsb_128bit_data_test_qs: comp
	rm -rf $(LOG_DIR)/$(LSB_128BIT_DATA_TEST)_$(SEED)
	rm -rf $(LSB_128BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(LSB_128BIT_DATA_TEST)_$(SEED)
	
	vsim -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(LSB_128BIT_DATA_TEST) -l $(LOG_DIR)/$(LSB_128BIT_DATA_TEST)_$(SEED)/$(LSB_128BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(LSB_128BIT_DATA_TEST)_$(SEED)/$(LSB_128BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top



###################################################################### MSB_8 BIT_DATA_TEST #######################################################################

run_msb_8bit_data_test: comp
	rm -rf $(LOG_DIR)/$(MSB_8BIT_DATA_TEST)_$(SEED)
	rm -rf $(MSB_8BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(MSB_8BIT_DATA_TEST)_$(SEED)
	vsim -c -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(MSB_8BIT_DATA_TEST) -l $(LOG_DIR)/$(MSB_8BIT_DATA_TEST)_$(SEED)/$(MSB_8BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(MSB_8BIT_DATA_TEST)_$(SEED)/$(MSB_8BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top


run_msb_8bit_data_test_qs: comp
	rm -rf $(LOG_DIR)/$(MSB_8BIT_DATA_TEST)_$(SEED)
	rm -rf $(MSB_8BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(MSB_8BIT_DATA_TEST)_$(SEED)
	vsim -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(MSB_8BIT_DATA_TEST) -l $(LOG_DIR)/$(MSB_8BIT_DATA_TEST)_$(SEED)/$(MSB_8BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(MSB_8BIT_DATA_TEST)_$(SEED)/$(MSB_8BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top


###################################################################### MSB_16 BIT_DATA_TEST #######################################################################

run_msb_16bit_data_test: comp
	rm -rf $(LOG_DIR)/$(MSB_16BIT_DATA_TEST)_$(SEED)
	rm -rf $(MSB_16BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(MSB_16BIT_DATA_TEST)_$(SEED)
	vsim -c -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(MSB_16BIT_DATA_TEST) -l $(LOG_DIR)/$(MSB_16BIT_DATA_TEST)_$(SEED)/$(MSB_16BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(MSB_16BIT_DATA_TEST)_$(SEED)/$(MSB_16BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top


run_msb_16bit_data_test_qs: comp
	rm -rf $(LOG_DIR)/$(MSB_16BIT_DATA_TEST)_$(SEED)
	rm -rf $(MSB_16BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(MSB_16BIT_DATA_TEST)_$(SEED)
	vsim -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(MSB_16BIT_DATA_TEST) -l $(LOG_DIR)/$(MSB_16BIT_DATA_TEST)_$(SEED)/$(MSB_16BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(MSB_16BIT_DATA_TEST)_$(SEED)/$(MSB_16BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top

###################################################################### MSB_32 BIT_DATA_TEST #######################################################################

run_msb_32bit_data_test: comp
	rm -rf $(LOG_DIR)/$(MSB_32BIT_DATA_TEST)_$(SEED)
	rm -rf $(MSB_32BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(MSB_32BIT_DATA_TEST)_$(SEED)
	vsim -c -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(MSB_32BIT_DATA_TEST) -l $(LOG_DIR)/$(MSB_32BIT_DATA_TEST)_$(SEED)/$(MSB_32BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(MSB_32BIT_DATA_TEST)_$(SEED)/$(MSB_32BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top


run_msb_32bit_data_test_qs: comp
	rm -rf $(LOG_DIR)/$(MSB_32BIT_DATA_TEST)_$(SEED)
	rm -rf $(MSB_32BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(MSB_32BIT_DATA_TEST)_$(SEED)
	vsim -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(MSB_32BIT_DATA_TEST) -l $(LOG_DIR)/$(MSB_32BIT_DATA_TEST)_$(SEED)/$(MSB_32BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(MSB_32BIT_DATA_TEST)_$(SEED)/$(MSB_32BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top

###################################################################### MSB_64 BIT_DATA_TEST #######################################################################

run_msb_64bit_data_test: comp
	rm -rf $(LOG_DIR)/$(MSB_64BIT_DATA_TEST)_$(SEED)
	rm -rf $(MSB_64BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(MSB_64BIT_DATA_TEST)_$(SEED)
	vsim -c -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(MSB_64BIT_DATA_TEST) -l $(LOG_DIR)/$(MSB_64BIT_DATA_TEST)_$(SEED)/$(MSB_64BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(MSB_64BIT_DATA_TEST)_$(SEED)/$(MSB_64BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top


run_msb_64bit_data_test_qs: comp
	rm -rf $(LOG_DIR)/$(MSB_64BIT_DATA_TEST)_$(SEED)
	rm -rf $(MSB_64BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(MSB_64BIT_DATA_TEST)_$(SEED)
	vsim -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(MSB_64BIT_DATA_TEST) -l $(LOG_DIR)/$(MSB_64BIT_DATA_TEST)_$(SEED)/$(MSB_64BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(MSB_64BIT_DATA_TEST)_$(SEED)/$(MSB_64BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top


###################################################################### MSB_128 BIT_DATA_TEST #######################################################################

run_msb_128bit_data_test: comp
	rm -rf $(LOG_DIR)/$(MSB_128BIT_DATA_TEST)_$(SEED)
	rm -rf $(MSB_128BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(MSB_128BIT_DATA_TEST)_$(SEED)
	vsim -c -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(MSB_128BIT_DATA_TEST) -l $(LOG_DIR)/$(MSB_128BIT_DATA_TEST)_$(SEED)/$(MSB_128BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(MSB_128BIT_DATA_TEST)_$(SEED)/$(MSB_128BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top


run_msb_128bit_data_test_qs: comp
	rm -rf $(LOG_DIR)/$(MSB_128BIT_DATA_TEST)_$(SEED)
	rm -rf $(MSB_128BIT_DATA_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(MSB_128BIT_DATA_TEST)_$(SEED)
	vsim -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(MSB_128BIT_DATA_TEST) -l $(LOG_DIR)/$(MSB_128BIT_DATA_TEST)_$(SEED)/$(MSB_128BIT_DATA_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(MSB_128BIT_DATA_TEST)_$(SEED)/$(MSB_128BIT_DATA_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top


###################################################################### Rx_raising_Tx_falling_test #######################################################################

Rx_raising_Tx_falling_test:
	rm -rf $(LOG_DIR)/$(RX_RAISING_TX_FALLING_TEST)_$(SEED)
	rm -rf $(RX_RAISING_TX_FALLING_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(RX_RAISING_TX_FALLING_TEST)_$(SEED)
	vsim -c -debugDB -sv_seed $(SEED) -cvgperinstance -voptargs=+acc -coverage -voptargs="+cover=all" +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=RX_RAISING_TX_FALLING_TEST -l $(LOG_DIR)/$(RX_RAISING_TX_FALLING_TEST)_$(SEED)/$(RX_RAISING_TX_FALLING_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(msb_fst_data_test)_$(SEED)/$(RX_RAISING_TX_FALLING_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top


###################################################################### Rx_raising_Tx_falling_test #######################################################################

Rx_falling_Tx_raising_test:
	rm -rf $(LOG_DIR)/$(RX_FALLING_TX_RAISING_TEST)_$(SEED)
	rm -rf $(RX_FALLING_TX_RAISING_TEST)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(RX_FALLING_TX_RAISING_TEST)_$(SEED)
	vsim -c -debugDB -sv_seed $(SEED) -cvgperinstance -voptargs=+acc -coverage -voptargs="+cover=all" +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=RX_FALLING_TX_RAISING_TEST -l $(LOG_DIR)/$(RX_FALLING_TX_RAISING_TEST)_$(SEED)/$(RX_FALLING_TX_RAISING_TEST)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(msb_fst_data_test)_$(SEED)/$(RX_FALLING_TX_RAISING_TEST)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top

#run_reg: comp lsb_fst_data_test msb_fst_data_test Rx_raising_Tx_falling_test Rx_falling_Tx_raising_test

#merge:
#	vcover merge -64 merge_ucdb.ucdb *.ucdb
#wave:
#	vsim -view vsim.wlf


