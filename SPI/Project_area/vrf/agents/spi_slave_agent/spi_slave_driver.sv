class spi_slave_driver extends uvm_driver#(spi_slave_trans);

  `uvm_component_utils(spi_slave_driver)

  spi_slave_trans               spi_slave_trans_h;

  //virtual interface
  virtual spi_intf      spi_vif;
/************************constructor*****************************/
  function new(string name="spi_slave_driver", uvm_component parent=null);
    super.new(name, parent);
  endfunction:new
/************************build phase****************************/
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual spi_intf)::get(this,"*","spi_vif",spi_vif))
      `uvm_fatal("SPI_SLAVE_DRV","**** Could not get virtual interface ****");

    spi_slave_trans_h = spi_slave_trans::type_id::create("spi_slave_trans_h");
  endfunction:build_phase
/*************************Run phase*****************************/
task run_phase(uvm_phase phase);
	forever
		begin
		seq_item_port.get_next_item(spi_slave_trans_h);
		@(posedge spi_vif.spi_clk);
		begin
		for(int i=0; i<spi_slave_trans_h.frame_size; i++) begin
	  //  	@(posedge spi_vif.spi_clk);
	     	@(negedge spi_vif.spi_clk);
	//negedge
		spi_vif.miso_pad_i              <=  spi_slave_trans_h.miso_wr_data[i] ;
		spi_slave_trans_h.mosi_rd_data  <=  spi_vif.mosi_pad_o ;


//		`uvm_info(get_type_name(),$sformatf("*****[%0t]SPI_SLAVE_DRIVER********* spi_slave_trans_h.miso_wr_data[%0d]=%0h spi_vif.miso_pad_i=%0h ",$time,i,spi_slave_trans_h.miso_wr_data[i],spi_vif.miso_pad_i),UVM_MEDIUM)
      //	`uvm_info(get_type_name(),$sformatf("*****[%0t]SPI_SLAVE_DRIVER******** spi_slave_trans_h.mosi_rd_data[%0d]=%0h spi_vif.mosi_pad_o=%0h ",$time,spi_slave_trans_h.mosi_rd_data[i],spi_vif.mosi_pad_o),UVM_MEDIUM)
		end
//	 `uvm_info(get_type_name(),$sformatf("=============================================SPI_SLAVE_DRIVER_to_dut ======================================= \n %s",spi_slave_trans_h.sprint()),UVM_MEDIUM)

      		end	
// responses [RSP]
      	rsp = spi_slave_trans::type_id::create("rsp");
		rsp=spi_slave_trans_h;
      //	@(posedge spi_vif.spi_clk);
		rsp.set_id_info(spi_slave_trans_h);
      //	seq_item_port.put(rsp);

		seq_item_port.item_done(rsp);
//`uvm_info(get_type_name(),$sformatf("*****[%0t] miso_wr_data=%0h ",$time,rsp.miso_wr_data),UVM_MEDIUM)
end    	 
endtask


endclass:spi_slave_driver
