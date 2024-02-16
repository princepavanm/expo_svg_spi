class wb_driver extends uvm_driver#(wb_trans);

  `uvm_component_utils(wb_driver)

wb_trans      wb_trans_h;

/*******************virtual interface**************/
  virtual wb_intf      wb_vif;

/*******************constructor********************/
  function new(string name="wb_driver", uvm_component parent=null);
	super.new(name,parent);
rsp = wb_trans::type_id::create("rsp");
  endfunction

/*********************build phase**********************/
  function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	if (!uvm_config_db#(virtual wb_intf)::get(this,"*","wb_vif",wb_vif))
	`uvm_fatal("WB_DRV","**** Could not get virtual interface ****");
  endfunction

/*******************run phase***********************/
  task run_phase(uvm_phase phase);
	wait(wb_vif.rst==0);
  	forever
	 	begin
      		seq_item_port.get_next_item(wb_trans_h);
  	//	`uvm_info("WB DRIVER","Driver Run Phase", UVM_LOW)
 	//	`uvm_info("WB_DRIVER","reset is high",UVM_MEDIUM)
  		 begin
     			@((wb_vif.clk) && !wb_vif.rst )
		 begin
	 		@(posedge wb_vif.clk);
			wb_vif.wb_cyc_i <= 1;
			wb_vif.wb_stb_i <= 1;
			wb_vif.wb_sel_i <= 1111; 
		
			wb_vif.wb_we_i <= wb_trans_h.wr_en;

		 if(wb_trans_h.wr_en==1)
		 begin	           
			wb_vif.wb_adr_i <= wb_trans_h.reg_addr;
			wb_vif.wb_dat_i <= wb_trans_h.reg_wr_data;
		    //    wb_trans_h.temp_data <= wb_vif.wb_dat_i;
		
			@(posedge wb_vif.clk);
			wb_vif.wb_cyc_i <= 0;
			wb_vif.wb_stb_i <= 0;

		 end
		 else
		begin
			@(posedge wb_vif.clk);
			wb_vif.wb_cyc_i <= 1;
			wb_vif.wb_stb_i <= 1;
			wb_vif.wb_sel_i <= 1111; 
		begin
			wb_vif.wb_adr_i  <= wb_trans_h.reg_addr;
			@(posedge wb_vif.clk);
			@(negedge wb_vif.clk);
			wb_trans_h.reg_rd_data  = wb_vif.wb_dat_o;
			@(posedge wb_vif.clk);
			wb_vif.wb_cyc_i <= 0;
			wb_vif.wb_stb_i <= 0;
		 end
		 end
	//	`uvm_info(get_type_name(),$sformatf("[%0t]=============================================WB_DRIVER  to dut ======================================= \n %s",$time,wb_trans_h.sprint()),UVM_MEDIUM)

// responses [RSP]
		rsp = wb_trans::type_id::create("rsp");
		rsp=wb_trans_h;
	//	@(posedge wb_vif.clk);
	//	rsp.reg_rd_data=wb_vif.wb_dat_i;
		rsp.set_id_info(wb_trans_h);
	//	seq_item_port.put(rsp);

//`uvm_info(get_type_name(),$sformatf("*****[%0t] reg_rd_data=%0h ",$time,rsp.reg_rd_data),UVM_MEDIUM)
//`uvm_info(get_type_name(),$sformatf("*****[%0t] temp_data=%0h ",$time,wb_trans_h.temp_data),UVM_MEDIUM)
//`uvm_info(get_type_name(),$sformatf("*****[%0t] wb_dat_i=%0h ",$time,wb_vif.wb_dat_i),UVM_MEDIUM)
		seq_item_port.item_done(rsp);

    		end
    		end
    		end

  endtask : run_phase
 

endclass : wb_driver
