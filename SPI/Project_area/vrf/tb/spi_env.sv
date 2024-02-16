class spi_environment extends uvm_env;

  `uvm_component_utils(spi_environment)
  
  //agents
  wb_agent           wb_agent_h;
  spi_slave_agent    spi_slave_agent_h;
  reset_agent        reset_agent_h;
  
  spi_sbd            spi_scbd_h;
  spi_virtual_sqr    spi_v_seqr_h;
  
  /************************constructor***************************/
  
  function new(string name="spi_environment",uvm_component parent=null);
    super.new(name,parent);
  endfunction
  
  /***********************build phase***************************/
  
  function  void build_phase(uvm_phase phase);
    super.build_phase(phase);
    wb_agent_h        = wb_agent::type_id::create("wb_agent_h",this);
    spi_slave_agent_h = spi_slave_agent::type_id::create("spi_slave_agent_h",this);
    reset_agent_h     = reset_agent::type_id::create("reset_agent_h",this);

    spi_scbd_h        = spi_sbd::type_id::create("spi_scbd_h",this);
    spi_v_seqr_h      = spi_virtual_sqr::type_id::create("spi_v_seqr_h",this);

  endfunction:build_phase
  
  /***********************connect phase************************/
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);

    spi_v_seqr_h.wb_agent_sqr_h        = wb_agent_h.wb_seqr_h;
    spi_v_seqr_h.spi_slave_agent_sqr_h = spi_slave_agent_h.spi_slave_sqr_h;
    spi_v_seqr_h.reset_agent_sqr_h     = reset_agent_h.reset_agent_sqr_h;

    wb_agent_h.wb_monitor_h.wb_analysis_port.connect(spi_scbd_h.wb_analysis_fifo.analysis_export);
    spi_slave_agent_h.spi_slave_mon_h.spi_slave_analysis_port.connect(spi_scbd_h.spi_slave_analysis_fifo.analysis_export);

  endfunction:connect_phase
        //reset_input_signals();
  //*********************************Report for checking error************************************************
    
  function void report();
    uvm_report_server reportserver=uvm_report_server::get_server();

    $display("**************************************************");
    $display("****************** TEST Summary ******************");
    $display("**************************************************");
  
    if((reportserver.get_severity_count(UVM_FATAL)==0)&&(reportserver.get_severity_count(UVM_WARNING)==0)&&(reportserver.get_severity_count(UVM_ERROR)==0))  begin
      $display("**************************************************");
      $display("****************** TEST  PASSED ******************");
      $display("**************************************************");
      $display("");
      $display("");
      $display("******  ******  ****** ******         ****** 	******  ******  ******              ");
      $display("   *	  *       *        *            *    * 	*    *  *       *                   ");
      $display("   *	  *       *        *            *    * 	*    *  *       *                   ");
      $display("   *	  ******  ******   *            ****** 	******  ******  ******              ");
      $display("   *	  *            *   *            *       *    *       *       *              ");
      $display("   *	  *            *   *            *       *    *       *       *              ");
      $display("   *	  ******  ******   *            *       *    *  ******  ******              ");
      $display("");
      $display("");
      $display("============================================================================================================");
      
    end//if_end
  
    else begin
      $display("**************************************************");
      $display("                    \\ / ");
      $display("                    oVo ");
      $display("                \\___XXX___/ ");
      $display("                 __XXXXX__ ");
      $display("                /__XXXXX__\\ ");
      $display("                /   XXX   \\ ");
      $display("                     V ");
      $display("                TEST  FAILED          ");
      $display("**************************************************");
    end//else_end
  endfunction:report
endclass
