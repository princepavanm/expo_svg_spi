class lsb_fst_data_seq extends uvm_sequence#(wb_trans); //spi_base_seq;
	`uvm_object_utils(lsb_fst_data_seq)
          wb_trans req;
  bit [31:0]       ctrl;
//  bit [31:0]  temp_data;

    
extern function new(string name = "lsb_fst_data_seq");
extern task body();
endclass
/******************** constructor*********************/
function lsb_fst_data_seq :: new(string name="lsb_fst_data_seq");
  super.new(name);	
endfunction

/********************* body task*******************/

task lsb_fst_data_seq ::body();
 	req=wb_trans::type_id::create("req");
	begin

		start_item(req);
		assert(req.randomize()with{req.wr_en==1'h1;req.reg_wr_data==32'h 00000001;});
		finish_item(req);
  get_response(rsp);

/******************************Slave Select reg*****************************************************************************/
  		start_item(req);
		assert(req.randomize()with{req.reg_addr==`SS_ADDR;req.wr_en==1'h1;req.reg_wr_data==32'h 00000001;});
		finish_item(req);
  get_response(rsp);
/******************************************************Divider register****************************************************/
  		start_item(req);
		assert(req.randomize()with{req.reg_addr==`DIVIDER_ADDR;req.wr_en==1'h1;req.reg_wr_data==32'h 00000001;});
	        finish_item(req);
   get_response(rsp);

/*******************************************************Data_Tx reg 1 *****************************************1************/
//*************1*************
 		start_item(req);
		assert(req.randomize()with{req.reg_addr==`TX0_ADDR;req.wr_en==1'h1;req.reg_wr_data==32'hAF;});
		finish_item(req);
   get_response(rsp);

////***************2**********
//	  	start_item(req);
//		assert(req.randomize()with{req.reg_addr==`TX1_ADDR;req.wr_en==1'h1;req.reg_wr_data==32'hCAFE_F00D;});
//		finish_item(req);
//  get_response(rsp);
////
//////*************3************
//		start_item(req);
//		assert(req.randomize()with{req.reg_addr==`TX2_ADDR;req.wr_en==1'h1;req.reg_wr_data==32'hDAAD_FFFF;});
//		finish_item(req);
// get_response(rsp);
//
////**************4***********
//		start_item(req);
//		assert(req.randomize()with{req.reg_addr==`TX3_ADDR;req.wr_en==1'h1;req.reg_wr_data==32'h1234_5678;});
//		finish_item(req);
// get_response(rsp);

/**********************************************Control_status reg************************************************/
 		start_item(req);
		assert(req.randomize()with{req.reg_addr==`CTRL_STATUS_ADDR ;req.wr_en==1'h1;});

		req.ctrl_reg.ctrl_char_len=32'h00; 
		req.ctrl_reg.ctrl_res_1=1'h0;      
		req.ctrl_reg.ctrl_go=1'h1;		
		req.ctrl_reg.ctrl_rx_negedge=1'h0;	
		req.ctrl_reg.ctrl_tx_negedge=1'h0;	
		req.ctrl_reg.ctrl_lsb=1'h1;	       
		req.ctrl_reg.ctrl_ie=1'h0;		  
		req.ctrl_reg.ctrl_ass=1'h1;	        
		req.ctrl_reg.ctrl_res_2=32'h00_0000;
 
		ctrl={req.ctrl_reg.ctrl_res_2,req.ctrl_reg.ctrl_ass,req.ctrl_reg.ctrl_ie,req.ctrl_reg.ctrl_lsb,req.ctrl_reg.ctrl_tx_negedge,req.ctrl_reg.ctrl_rx_negedge,req.ctrl_reg.ctrl_go,req.ctrl_reg.ctrl_res_1,req.ctrl_reg.ctrl_char_len};

		req.reg_wr_data=ctrl;    //LSB first data
				
		finish_item(req);
   get_response(rsp);

do begin
 		start_item(req);
		assert(req.randomize()with{req.reg_addr==`CTRL_STATUS_ADDR;req.wr_en==1'h0;});
   end
	 while (rsp.reg_rd_data[8]!=0);
                finish_item(req);

 get_response(rsp);

/*******************************************************Data_Dx reg 1 *****************************************1**********/
 		start_item(req);
		assert(req.randomize()with{req.reg_addr==`RX0_ADDR;req.wr_en==1'h0;});
		finish_item(req);
   get_response(rsp);
//***************2*********
//		start_item(req);
//		assert(req.randomize()with{req.reg_addr==`RX1_ADDR;req.wr_en==1'h0;});
//		finish_item(req);
//  get_response(rsp);
////***************3************
//		start_item(req);
//		assert(req.randomize()with{req.reg_addr==`RX2_ADDR;req.wr_en==1'h0;});
//		finish_item(req);
// get_response(rsp);
//
////*****************4*********
//		start_item(req);
//		assert(req.randomize()with{req.reg_addr==`RX3_ADDR;req.wr_en==1'h0;});
//		finish_item(req);
// get_response(rsp);

/************************************************************************************************************************/
	end
endtask



/*
//COMPARISION OF SEQUENCE REPONSE:
do begin
 		start_item(req);
		assert(req.randomize()with{req.reg_addr==`CTRL_STATUS_ADDR;req.wr_en==1'h0;});
   end
	 while (rsp.reg_rd_data[8]!=0);
                finish_item(req);

 get_response(rsp);

//`uvm_info(get_type_name(),$sformatf("[%0t]=== RX DATA REGISTER 3 DATA===rsp.reg_rd_data=%0h rsp.reg_addr=%0h******",$time,rsp.reg_rd_data,rsp.reg_addr),UVM_MEDIUM)

 if(req.temp_data==rsp.reg_rd_data)
 	 	`uvm_info(get_type_name(),$sformatf("=== RX DATA REGISTER 3 MATCHED    req.temp_data=%0h rsp.reg_rd_data=%0h",req.temp_data,rsp.reg_rd_data),UVM_MEDIUM)
 else
 	 	`uvm_info(get_type_name(),$sformatf("=== RX DATA REGISTER 3 MISMATCHED req.temp_data=%0h rsp.reg_rd_data=%0h",req.temp_data,rsp.reg_rd_data),UVM_MEDIUM)
*/
/*
//COMPARISION OF SEQUENCE REPONSE:
do begin
 		start_item(req);
		assert(req.randomize()with{req.reg_addr==`CTRL_STATUS_ADDR;req.wr_en==1'h0;});
   end
	 while (rsp.reg_rd_data[8]!=0);
                finish_item(req);

 get_response(rsp);

//`uvm_info(get_type_name(),$sformatf("[%0t]=== SLAVE SELECT READ DATA===rsp.reg_rd_data=%0h rsp.reg_addr=%0h******",$time,rsp.reg_rd_data,rsp.reg_addr),UVM_MEDIUM)

 if(req.temp_data==rsp.reg_rd_data)
 	 	`uvm_info(get_type_name(),$sformatf("=== SLAVE SELECT MATCHED    req.temp_data=%0h rsp.reg_rd_data=%0h",req.temp_data,rsp.reg_rd_data),UVM_MEDIUM)
 else
 	 	`uvm_info(get_type_name(),$sformatf("=== SLAVE SELECT MISMATCHED req.temp_data=%0h rsp.reg_rd_data=%0h",req.temp_data,rsp.reg_rd_data),UVM_MEDIUM)
*/	
/*
//COMPARISION OF SEQUENCE REPONSE:
do begin
 		start_item(req);
		assert(req.randomize()with{req.reg_addr==`CTRL_STATUS_ADDR;req.wr_en==1'h0;});
   end
	 while (rsp.reg_rd_data[8]!=0);
                finish_item(req);

 get_response(rsp);

//`uvm_info(get_type_name(),$sformatf("[%0t]=== DIVIDER REGISTER DATA===rsp.reg_rd_data=%0h rsp.reg_addr=%0h******",$time,rsp.reg_rd_data,rsp.reg_addr),UVM_MEDIUM)

 if(req.temp_data==rsp.reg_rd_data)
 	 	`uvm_info(get_type_name(),$sformatf("=== DIVIDER REGISTER MATCHED    req.temp_data=%0h rsp.reg_rd_data=%0h",req.temp_data,rsp.reg_rd_data),UVM_MEDIUM)
 else
 	 	`uvm_info(get_type_name(),$sformatf("=== DIVIDER REGISTER MISMATCHED req.temp_data=%0h rsp.reg_rd_data=%0h",req.temp_data,rsp.reg_rd_data),UVM_MEDIUM)
/*
//`uvm_info(get_type_name(),$sformatf("[%0t]***** rsp.reg_rd_data=%0h rsp.reg_addr=%0h******",$time,rsp.reg_rd_data,rsp.reg_addr),UVM_MEDIUM)

//COMPARISION OF SEQUENCE REPONSE:
do begin
 		start_item(req);
		assert(req.randomize()with{req.reg_addr==`SS_ADDR;req.wr_en==1'h0;});
   end
	 while (rsp.reg_rd_data[8]!=0);
                finish_item(req);

 get_response(rsp);

//`uvm_info(get_type_name(),$sformatf("[%0t]=== DX REGISTER DATA===rsp.reg_rd_data=%0h rsp.reg_addr=%0h******",$time,rsp.reg_rd_data,rsp.reg_addr),UVM_MEDIUM)

 if(req.temp_data==rsp.reg_rd_data)
 	 		`uvm_info(get_type_name(),$sformatf("=== DX REGISTER MATCHED    req.temp_data=%0h rsp.reg_rd_data=%0h",req.temp_data,rsp.reg_rd_data),UVM_MEDIUM)
 else
 	 		`uvm_info(get_type_name(),$sformatf("=== DX REGISTER MISMATCHED req.temp_data=%0h rsp.reg_rd_data=%0h",req.temp_data,rsp.reg_rd_data),UVM_MEDIUM)

*/
	
