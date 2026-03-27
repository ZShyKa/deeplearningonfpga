//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef MYPROJECT_SUBSYSTEM_MONITOR_SV
`define MYPROJECT_SUBSYSTEM_MONITOR_SV

`uvm_analysis_imp_decl(_svr_master_input_layer)
`uvm_analysis_imp_decl(_svr_slave_layer11_out_0)
`uvm_analysis_imp_decl(_svr_slave_layer11_out_1)
`uvm_analysis_imp_decl(_svr_slave_layer11_out_2)
`uvm_analysis_imp_decl(_svr_slave_layer11_out_3)
`uvm_analysis_imp_decl(_svr_slave_layer11_out_4)
`uvm_analysis_imp_decl(_svr_slave_layer11_out_5)
`uvm_analysis_imp_decl(_svr_slave_layer11_out_6)
`uvm_analysis_imp_decl(_svr_slave_layer11_out_7)
`uvm_analysis_imp_decl(_svr_slave_layer11_out_8)
`uvm_analysis_imp_decl(_svr_slave_layer11_out_9)

class myproject_subsystem_monitor extends uvm_component;

    myproject_reference_model refm;
    myproject_scoreboard scbd;

    `uvm_component_utils_begin(myproject_subsystem_monitor)
    `uvm_component_utils_end

    uvm_analysis_imp_svr_master_input_layer#(svr_pkg::svr_transfer#(12544), myproject_subsystem_monitor) svr_master_input_layer_imp;
    uvm_analysis_imp_svr_slave_layer11_out_0#(svr_pkg::svr_transfer#(16), myproject_subsystem_monitor) svr_slave_layer11_out_0_imp;
    uvm_analysis_imp_svr_slave_layer11_out_1#(svr_pkg::svr_transfer#(16), myproject_subsystem_monitor) svr_slave_layer11_out_1_imp;
    uvm_analysis_imp_svr_slave_layer11_out_2#(svr_pkg::svr_transfer#(16), myproject_subsystem_monitor) svr_slave_layer11_out_2_imp;
    uvm_analysis_imp_svr_slave_layer11_out_3#(svr_pkg::svr_transfer#(16), myproject_subsystem_monitor) svr_slave_layer11_out_3_imp;
    uvm_analysis_imp_svr_slave_layer11_out_4#(svr_pkg::svr_transfer#(16), myproject_subsystem_monitor) svr_slave_layer11_out_4_imp;
    uvm_analysis_imp_svr_slave_layer11_out_5#(svr_pkg::svr_transfer#(16), myproject_subsystem_monitor) svr_slave_layer11_out_5_imp;
    uvm_analysis_imp_svr_slave_layer11_out_6#(svr_pkg::svr_transfer#(16), myproject_subsystem_monitor) svr_slave_layer11_out_6_imp;
    uvm_analysis_imp_svr_slave_layer11_out_7#(svr_pkg::svr_transfer#(16), myproject_subsystem_monitor) svr_slave_layer11_out_7_imp;
    uvm_analysis_imp_svr_slave_layer11_out_8#(svr_pkg::svr_transfer#(16), myproject_subsystem_monitor) svr_slave_layer11_out_8_imp;
    uvm_analysis_imp_svr_slave_layer11_out_9#(svr_pkg::svr_transfer#(16), myproject_subsystem_monitor) svr_slave_layer11_out_9_imp;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(myproject_reference_model)::get(this, "", "refm", refm))
            `uvm_fatal(this.get_full_name(), "No refm from high level")
        `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM)
        scbd = myproject_scoreboard::type_id::create("scbd", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new(name, parent);
        svr_master_input_layer_imp = new("svr_master_input_layer_imp", this);
        svr_slave_layer11_out_0_imp = new("svr_slave_layer11_out_0_imp", this);
        svr_slave_layer11_out_1_imp = new("svr_slave_layer11_out_1_imp", this);
        svr_slave_layer11_out_2_imp = new("svr_slave_layer11_out_2_imp", this);
        svr_slave_layer11_out_3_imp = new("svr_slave_layer11_out_3_imp", this);
        svr_slave_layer11_out_4_imp = new("svr_slave_layer11_out_4_imp", this);
        svr_slave_layer11_out_5_imp = new("svr_slave_layer11_out_5_imp", this);
        svr_slave_layer11_out_6_imp = new("svr_slave_layer11_out_6_imp", this);
        svr_slave_layer11_out_7_imp = new("svr_slave_layer11_out_7_imp", this);
        svr_slave_layer11_out_8_imp = new("svr_slave_layer11_out_8_imp", this);
        svr_slave_layer11_out_9_imp = new("svr_slave_layer11_out_9_imp", this);
    endfunction

    virtual function void write_svr_master_input_layer(svr_transfer#(12544) tr);
        refm.write_svr_master_input_layer(tr);
        scbd.write_svr_master_input_layer(tr);
    endfunction

    virtual function void write_svr_slave_layer11_out_0(svr_transfer#(16) tr);
        refm.write_svr_slave_layer11_out_0(tr);
        scbd.write_svr_slave_layer11_out_0(tr);
    endfunction

    virtual function void write_svr_slave_layer11_out_1(svr_transfer#(16) tr);
        refm.write_svr_slave_layer11_out_1(tr);
        scbd.write_svr_slave_layer11_out_1(tr);
    endfunction

    virtual function void write_svr_slave_layer11_out_2(svr_transfer#(16) tr);
        refm.write_svr_slave_layer11_out_2(tr);
        scbd.write_svr_slave_layer11_out_2(tr);
    endfunction

    virtual function void write_svr_slave_layer11_out_3(svr_transfer#(16) tr);
        refm.write_svr_slave_layer11_out_3(tr);
        scbd.write_svr_slave_layer11_out_3(tr);
    endfunction

    virtual function void write_svr_slave_layer11_out_4(svr_transfer#(16) tr);
        refm.write_svr_slave_layer11_out_4(tr);
        scbd.write_svr_slave_layer11_out_4(tr);
    endfunction

    virtual function void write_svr_slave_layer11_out_5(svr_transfer#(16) tr);
        refm.write_svr_slave_layer11_out_5(tr);
        scbd.write_svr_slave_layer11_out_5(tr);
    endfunction

    virtual function void write_svr_slave_layer11_out_6(svr_transfer#(16) tr);
        refm.write_svr_slave_layer11_out_6(tr);
        scbd.write_svr_slave_layer11_out_6(tr);
    endfunction

    virtual function void write_svr_slave_layer11_out_7(svr_transfer#(16) tr);
        refm.write_svr_slave_layer11_out_7(tr);
        scbd.write_svr_slave_layer11_out_7(tr);
    endfunction

    virtual function void write_svr_slave_layer11_out_8(svr_transfer#(16) tr);
        refm.write_svr_slave_layer11_out_8(tr);
        scbd.write_svr_slave_layer11_out_8(tr);
    endfunction

    virtual function void write_svr_slave_layer11_out_9(svr_transfer#(16) tr);
        refm.write_svr_slave_layer11_out_9(tr);
        scbd.write_svr_slave_layer11_out_9(tr);
    endfunction
endclass
`endif
