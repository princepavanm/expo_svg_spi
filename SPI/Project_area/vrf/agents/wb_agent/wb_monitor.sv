class wb_monitor extends uvm_monitor;

  `uvm_component_utils(wb_monitor)

  //virtual interface
  virtual wb_intf      wb_vif;

  uvm_analysis_port #(wb_trans) wb_analysis_port;

  //wb transactor
  wb_trans   wb_trans_h;
 // int temp[5];
  /**********************constructor********************************/
  function new(string name, uvm_component parent);
    super.new(name,parent);
    wb_trans_h=new();
    wb_analysis_port = new("wb_analysis_port", this);
  endfunction 

/*********************build phase**********************/
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual wb_intf)::get(this,"*","wb_vif",wb_vif))
      `uvm_fatal("WB_DRV","**** Could not get virtual interface ****");
  endfunction: build_phase

/*******************run phase***********************/
virtual task run_phase(uvm_phase phase);
	super.run_phase(phase);
	wb_trans_h=wb_trans::type_id::create("wb_trans");
  	`uvm_info("WB_MON","WB Monitor Run Phase", UVM_LOW)
 wait(wb_vif.rst==0);
forever
	begin
     			@((wb_vif.clk) && !wb_vif.rst )
		 begin
			@(posedge wb_vif.clk);
			wb_trans_h.wr_en <=  wb_vif.wb_we_i;
		 
		if(wb_trans_h.wr_en==1)
		 begin	 
			wb_trans_h.reg_addr    <= wb_vif.wb_adr_i;
			wb_trans_h.reg_wr_data <= wb_vif.wb_dat_i;
		end

  		 else 
	 	 begin
			wb_trans_h.reg_addr <= wb_vif.wb_adr_i;
			@(posedge wb_vif.clk);
			@(negedge wb_vif.clk);
			wb_trans_h.reg_rd_data  = wb_vif.wb_dat_o;
		end
	
//	`uvm_info(get_type_name(),$sformatf("[%0t]=============================================WB_MONITOR from dut ======================================= \n %s",$time,wb_trans_h.sprint()),UVM_MEDIUM)
	end
	end

	//scoreboard write method
    		wb_analysis_port.write(wb_trans_h);
 	  endtask : run_phase
endclass 


