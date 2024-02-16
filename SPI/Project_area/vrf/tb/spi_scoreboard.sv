class spi_sbd extends uvm_scoreboard;
  
   //virtual interface
  virtual wb_intf      wb_vif;
  virtual spi_intf     spi_vif;

  `uvm_component_utils(spi_sbd)
  
  wb_trans	       wb_trans_scb_h;
  spi_slave_trans      spi_slave_trans_scb_h;

uvm_tlm_analysis_fifo#(wb_trans) wb_analysis_fifo;
uvm_tlm_analysis_fifo#(spi_slave_trans) spi_slave_analysis_fifo;

 
//`uvm_analysis_imp_decl(_wb_agent) 
//  uvm_analysis_imp_wb_agent #(wb_trans,spi_sbd)    wb_analysis_imp;
//
//
//`uvm_analysis_imp_decl(_spi_slave_agent) 
//  uvm_analysis_imp_spi_slave_agent #(spi_slave_trans,spi_sbd)      spi_slave_analysis_imp;

/*******************constructor*********************************/
  function new(string name="spi_sbd", uvm_component parent);
    super.new(name, parent);
  endfunction:new

/**********************build phase********************************/
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    spi_slave_trans_scb_h  = spi_slave_trans::type_id::create("spi_slave_trans_scb_h",  this);
    wb_trans_scb_h  = wb_trans::type_id::create("wb_trans_scb_h",  this);

    wb_analysis_fifo = new("wb_analysis_fifo",this);
    spi_slave_analysis_fifo = new("spi_slave_analysis_fifo",this);

// if (!uvm_config_db#(virtual wb_intf)::get(this,"*","wb_vif",wb_vif))
//      `uvm_fatal("SCOREBOARD","**** Could not get virtual interface ****");
// if (!uvm_config_db#(virtual spi_intf)::get(this,"*","spi_vif",spi_vif))
//      `uvm_fatal("SCOREBOARD","**** Could not get virtual interface ****");
  endfunction:build_phase


//virtual function void write_wb_agent (wb_trans   wb_trans_scb_h);
//wb_trans_scb_h.print();
////wb_trans_queue.push_back(wb_trans_scb_h.reg_wr_data[31:0]);
////wb_trans_queue.push_back(wb_trans_scb_h);
//$display("wb_trans_queue_size=%0d",wb_trans_queue.size());
//endfunction
//
//virtual function void write_spi_slave_agent (spi_slave_trans   spi_slave_trans_scb_h);
//spi_slave_trans_scb_h.print();
////spi_slave_trans_queue.push_back(spi_slave_trans_scb_h.miso_wr_data[127:0]);
//$display("spi_slave_trans_queue_size=%0d",spi_slave_trans_queue.size());
//endfunction



/***********************************run phase*************************/
  virtual task run_phase(uvm_phase phase);
phase.raise_objection(this);
    
    #100;
  	`uvm_info("SPI_SCOREBOARD","SCOREBOARD Run Phase", UVM_LOW)
	forever
	   fork
		begin
		wb_analysis_fifo.get(wb_trans_scb_h);
      	`uvm_info(get_type_name(),$sformatf("=============================================WB_TRANS_MONITOR_SCBD ======================================= \n %s",wb_trans_scb_h.sprint()),UVM_MEDIUM)
		end

		begin
		spi_slave_analysis_fifo.get(spi_slave_trans_scb_h);
      	`uvm_info(get_type_name(),$sformatf("=============================================SPI_SLAVE_TRANS_MONITOR_SCBD ======================================= \n %s",spi_slave_trans_scb_h.sprint()),UVM_MEDIUM)
       		end
	  join_any
    compare_logic();
phase.drop_objection(this);
  endtask:run_phase

  // *************** compare_logic************
  task compare_logic();


  endtask

endclass:spi_sbd

