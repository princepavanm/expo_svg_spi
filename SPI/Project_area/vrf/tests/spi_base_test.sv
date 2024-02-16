class spi_base_test extends uvm_test;

  spi_environment      spi_environment_h; 

  virtual_sequence      virtual_sequence_h;

  `uvm_component_utils(spi_base_test)

  function new(string name="spi_base_test", uvm_component parent=null);
    super.new(name, parent);
  endfunction:new

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    spi_environment_h = spi_environment::type_id::create("spi_environment_h", this);
    virtual_sequence_h = virtual_sequence::type_id::create("virtual_sequence_h", this);

  endfunction:build_phase

  function void end_of_elaboration_phase(uvm_phase phase);
    //uvm_factory factory = uvm_factory::get();
    uvm_top.print_topology();
    endfunction:end_of_elaboration_phase

  //--------------------------run_phase---------------------------
  task run_phase (uvm_phase phase);
    super.run_phase(phase);
    `uvm_info(get_name(), "run_phase", UVM_HIGH)
    phase.raise_objection(this);
      virtual_sequence_h.start(spi_environment_h.spi_v_seqr_h);
      phase.phase_done.set_drain_time(this, 500ns);
    phase.drop_objection(this);
  endtask

endclass:spi_base_test
