class miso_data_seq extends uvm_sequence#(spi_slave_trans);
	`uvm_object_utils(miso_data_seq)

spi_slave_trans    spi_slave_trans_h;
/******************** constructor*********************/
function new(string name="miso_data_seq");
  super.new(name);	
endfunction

/********************* body task*******************/

task body();
	spi_slave_trans_h=spi_slave_trans::type_id::create("spi_slave_trans_h");
	begin
	start_item(spi_slave_trans_h);
	spi_slave_trans_h.miso_wr_data=128'hCAFE_F00D_DAAD_CAFE_AFAF_A5A5_BCDA_FECB;
	spi_slave_trans_h.frame_size=128'h80;
	finish_item(spi_slave_trans_h);
  get_response(rsp);
	end	
endtask
endclass


//	assert(req.randomize()with{spi_slave_trans_h.miso_wr_data==128'hCAFE_F00D_DAAD_CAFE_AFAF_A5A5_BCDA_FECB;spi_slave_trans_h.frame_size==8'h08;});

	//assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==128'b 1100_1010_1111_1110_1111_0000_0000_1101_1101_1010_1010_1101_1100_1010_1111_1110_1010_0101_1010_0101_1010_1111_1010_1111_1011_1100_1101_1010_1111_1110_1100_1011; spi_slave_trans_h.frame_size==8'h08; });
	//assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==128'h11001010111111101111000000001101110110101010110111001010111111101010010110100101101011111010111110111100110110101111111011001011; spi_slave_trans_h.frame_size==8'h08; });


/*	begin
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
//*******************************************
	start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

//******************************

start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

//******************************

start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

//******************************2**********

	start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
//*******************************************
	start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

//******************************

start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

//******************************

start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

//******************************3**********

	start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
//*******************************************
	start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

//******************************

start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

//******************************

start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

//******************************4*******************	
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
//*******************************************
	start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

//******************************

start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

//******************************

start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);

		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h0; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
		start_item(spi_slave_trans_h);
		assert(spi_slave_trans_h.randomize()with{spi_slave_trans_h.miso_wr_data==32'h1; });
		finish_item(spi_slave_trans_h);
	 get_response(rsp);
*/
//`uvm_info(get_type_name(),$sformatf("[%0t]=== MISO WRITE DATA===rsp.miso_wr_data=%0h ******",$time,rsp.miso_wr_data),UVM_MEDIUM)
	


