`timescale 1ns/1ns

  `include "uvm_macros.svh"

  import uvm_pkg::*;
 
  `include "spi_list.svh"

module tb_top;

  //Rst and clock declarations
  reg clk, rst;

  //Interface instantation
  wb_intf   wb_vif(clk);
  spi_intf  spi_vif(sclk_pad_o);

  //Rst and Clock generation
  initial begin
    clk = 0;
  end

  always #5 clk = ~clk;
     
  //DUT Instantiation
  spi_top dut( .wb_clk_i        (wb_vif.clk),
               .wb_rst_i        (wb_vif.rst),
               
	        
               // Wishbone signals
               .wb_adr_i   (wb_vif.wb_adr_i),
               .wb_dat_i   (wb_vif.wb_dat_i),
               .wb_dat_o   (wb_vif.wb_dat_o),
               .wb_sel_i   (wb_vif.wb_sel_i),
               .wb_we_i    (wb_vif.wb_we_i),
               .wb_stb_i   (wb_vif.wb_stb_i),
               .wb_cyc_i   (wb_vif.wb_cyc_i),
               .wb_ack_o   (wb_vif.wb_ack_o),
               .wb_err_o   (wb_vif.wb_err_o),
               .wb_int_o   (wb_vif.wb_int_o),
               
               //SPI signals
               .ss_pad_o   (spi_vif.ss_pad_o),
               .sclk_pad_o (spi_vif.spi_clk),
               .mosi_pad_o (spi_vif.mosi_pad_o),
               .miso_pad_i (spi_vif.miso_pad_i)
             );

  //Register interfaces to config_db
  initial begin

    uvm_config_db#(virtual wb_intf)::set(null,"*","wb_vif",wb_vif);
    uvm_config_db#(virtual spi_intf)::set(null,"*","spi_vif",spi_vif);

  end

//Run test
  initial begin
    run_test();
  end

  initial begin
    #6000;
    $finish;
  end
endmodule:tb_top
