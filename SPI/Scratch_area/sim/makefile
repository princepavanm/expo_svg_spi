//TEST_NAME=spi_base_test
TEST_NAME=lsb_fst_data_test
//TEST_NAME=miso_data_test

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
	vlog +acc +define+$(DUMP_OPTS) $(INC_DIR) $(DUT_FILE) $(TOP_FILE)

vsim:
	rm -rf $(LOG_DIR)/$(TEST_NAME)_$(SEED)
	rm -rf $(TEST_NAME)_$(SEED).ucdb
	mkdir $(LOG_DIR)/$(TEST_NAME)_$(SEED)
#	vsim -c  -debugDB -sv_seed $(SEED) -cvgperinstance -voptargs=+acc -coverage -voptargs="+cover=all" -assertdebug -voptargs="+ASSERTION_ON" -suppress 3764 -suppress 8707 -suppress 10016 +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(TEST_NAME) -l $(LOG_DIR)/$(TEST_NAME)_$(SEED)/$(TEST_NAME)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(TEST_NAME)_$(SEED)/$(TEST_NAME)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top
	vsim -c -debugDB -sv_seed $(SEED) -cvgperinstance +UVM_VERBOSITY=UVM_MEDIUM +UVM_TESTNAME=$(TEST_NAME) -l $(LOG_DIR)/$(TEST_NAME)_$(SEED)/$(TEST_NAME)_$(SEED).log -do "coverage save -onexit $(LOG_DIR)/$(TEST_NAME)_$(SEED)/$(TEST_NAME)_$(SEED).ucdb;do $(SIM_DIR)/wave.do; run -all;exit" work.tb_top

run:	comp vsim


