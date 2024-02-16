class spi_slave_mon extends uvm_monitor;

  `uvm_component_utils(spi_slave_mon)

  spi_slave_trans   spi_slave_trans_h;

  //virtual interface
  virtual spi_intf      spi_vif;

  uvm_analysis_port #(spi_slave_trans)       spi_slave_analysis_port;
  
  //*************** constructor*************************
  function new(string name="spi_slave_mon", uvm_component parent=null);
    super.new(name, parent);
  endfunction:new

  // ********************* build phase *******************
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    spi_slave_trans_h = spi_slave_trans::type_id::create("spi_slave_trans_h", this);
    spi_slave_analysis_port = new("spi_slave_analysis_port", this);

    if (!uvm_config_db#(virtual spi_intf)::get(this,"*","spi_vif",spi_vif))
      `uvm_fatal("SPI_SLAVE_MON","**** Could not get virtual interface ****");
  endfunction:build_phase

  // ************************* connect phase ******************
  function void  connect_phase(uvm_phase phase);
    super.connect_phase(phase);
  endfunction

  // **************** run phase*********************
virtual task run_phase(uvm_phase phase);
bit miso_data[140];
bit mosi_data[140];

int i=0;
int counter=0; 
    super.run_phase(phase);
 //   `uvm_info("SPI_SLAVE_MON","Monitor Run Phase", UVM_LOW)
    	forever
    	        begin
	      wait(spi_vif.ss_pad_o==32'hfffffffe);
	        @(posedge spi_vif.spi_clk) ;
	       while (spi_vif.ss_pad_o==32'hfffffffe) begin
       	        	spi_slave_trans_h.mosi_rd_data[i]  = spi_vif.mosi_pad_o;
       			spi_slave_trans_h.miso_wr_data  = spi_vif.miso_pad_i;
		
	//	`uvm_info(get_type_name(),$sformatf("================[%0t]SPI_MONITOR============== spi_slave_trans_h.mosi_rd_data[%0d]=%0h 	spi_vif.mosi_pad_o=%0h ",$time,i,spi_slave_trans_h.mosi_rd_data[i],spi_vif.mosi_pad_o),UVM_MEDIUM)
//		`uvm_info(get_type_name(),$sformatf("================[%0t]SPI_MONITOR==============spi_slave_trans_h.miso_wr_data=%0h 	spi_vif.miso_pad_i=%0h ",$time,spi_slave_trans_h.miso_wr_data,spi_vif.miso_pad_i),UVM_MEDIUM)
			i++;
			counter++;

	//	`uvm_info(get_type_name(),$sformatf("BEFORE RECIVED CLK AND SS_PAD_O "),UVM_MEDIUM)
			@(posedge (spi_vif.spi_clk) || (spi_vif.ss_pad_o==32'hffffffff));
	//	`uvm_info(get_type_name(),$sformatf("AFTER RECIVED CLK AND SS_PAD_O "),UVM_MEDIUM)

		
	//	 miso_data[i]=spi_slave_trans_h.miso_wr_data;
	//       mosi_data[i]=spi_slave_trans_h.mosi_rd_data;
	//	`uvm_info(get_type_name(),$sformatf("*****[%0t]SPI_SLAVE_MONITOR********* miso_data[%0d]=%0h ",$time,i,miso_data[i]),UVM_MEDIUM)
	//	`uvm_info(get_type_name(),$sformatf("*****[%0t]SPI_SLAVE_MONITOR********* mosi_data[%0d]=%0h ",$time,i,mosi_data[i]),UVM_MEDIUM)

		end
        	spi_slave_trans_h.frame_size=counter;

	//	`uvm_info(get_type_name(),$sformatf("================[%0t]SPI_MONITOR==============spi_slave_trans_h.miso_wr_data=%0h ",$time,spi_slave_trans_h.miso_wr_data),UVM_MEDIUM)
	//	`uvm_info(get_type_name(),$sformatf("================[%0t]SPI_MONITOR============== spi_slave_trans_h.mosi_rd_data=%0h ",$time,i,spi_slave_trans_h.mosi_rd_data),UVM_MEDIUM)
	//scoreboard write method
      spi_slave_analysis_port.write(spi_slave_trans_h); 
 //   `uvm_info(get_type_name(),$sformatf("=============================================SPI_SLAVE MONITOR TO SCB======================================= \n %s",spi_slave_trans_h.sprint()),UVM_MEDIUM)
		end
      endtask:run_phase
endclass:spi_slave_mon











//bit miso_data[140];
//bit mosi_data[140];

//mosi_data[i]=spi_vif.mosi_pad_o;
//miso_data[i]=spi_vif.miso_pad_i;
//mosi_data[i]=spi_slave_trans_h.mosi_rd_data;
//miso_data[i]=spi_slave_trans_h.miso_wr_data;
//$display("i=%0d counter=%0d",i,counter);

//	`uvm_info(get_type_name(),$sformatf("*****[%0t]SPI_SLAVE_MONITOR********* miso_data=%0p ",$time,miso_data),UVM_MEDIUM)
//	`uvm_info(get_type_name(),$sformatf("*****[%0t]SPI_SLAVE_MONITOR********* mosi_data=%0p ",$time,mosi_data),UVM_MEDIUM)

//	`uvm_info(get_type_name(),$sformatf("*****[%0t]SPI_SLAVE_MONITOR********* miso_data=%0p ",$time,miso_data),UVM_MEDIUM)
//	`uvm_info(get_type_name(),$sformatf("*****[%0t]SPI_SLAVE_MONITOR********* mosi_data=%0p ",$time,mosi_data),UVM_MEDIUM)
