//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef MYPROJECT_ENV__SV                                                                                   
    `define MYPROJECT_ENV__SV                                                                               
                                                                                                                    
                                                                                                                    
    class myproject_env extends uvm_env;                                                                          
                                                                                                                    
        myproject_virtual_sequencer myproject_virtual_sqr;                                                      
        myproject_config myproject_cfg;                                                                         
                                                                                                                    
        svr_pkg::svr_env#(12544) env_master_svr_input_layer;
        svr_pkg::svr_env#(16) env_slave_svr_layer11_out_0;
        svr_pkg::svr_env#(16) env_slave_svr_layer11_out_1;
        svr_pkg::svr_env#(16) env_slave_svr_layer11_out_2;
        svr_pkg::svr_env#(16) env_slave_svr_layer11_out_3;
        svr_pkg::svr_env#(16) env_slave_svr_layer11_out_4;
        svr_pkg::svr_env#(16) env_slave_svr_layer11_out_5;
        svr_pkg::svr_env#(16) env_slave_svr_layer11_out_6;
        svr_pkg::svr_env#(16) env_slave_svr_layer11_out_7;
        svr_pkg::svr_env#(16) env_slave_svr_layer11_out_8;
        svr_pkg::svr_env#(16) env_slave_svr_layer11_out_9;
                                                                                                                    
        myproject_reference_model   refm;                                                                         
                                                                                                                    
        myproject_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(myproject_env)                                                                 
        `uvm_field_object (env_master_svr_input_layer,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_layer11_out_0,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_layer11_out_1,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_layer11_out_2,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_layer11_out_3,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_layer11_out_4,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_layer11_out_5,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_layer11_out_6,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_layer11_out_7,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_layer11_out_8,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_layer11_out_9,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (myproject_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (myproject_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "myproject_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void myproject_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        myproject_cfg = myproject_config::type_id::create("myproject_cfg", this);                           
                                                                                                                    
        myproject_cfg.port_input_layer_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_input_layer  = svr_env#(12544)::type_id::create("env_master_svr_input_layer", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_input_layer*", "cfg", myproject_cfg.port_input_layer_cfg);
        myproject_cfg.port_input_layer_cfg.prt_type = svr_pkg::AP_VLD;
        myproject_cfg.port_input_layer_cfg.is_active = svr_pkg::SVR_ACTIVE;
        myproject_cfg.port_input_layer_cfg.spec_cfg = svr_pkg::NORMAL;
        myproject_cfg.port_input_layer_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        myproject_cfg.port_layer11_out_0_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_layer11_out_0  = svr_env#(16)::type_id::create("env_slave_svr_layer11_out_0", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_layer11_out_0*", "cfg", myproject_cfg.port_layer11_out_0_cfg);
        myproject_cfg.port_layer11_out_0_cfg.prt_type = svr_pkg::AP_VLD;
        myproject_cfg.port_layer11_out_0_cfg.is_active = svr_pkg::SVR_ACTIVE;
        myproject_cfg.port_layer11_out_0_cfg.spec_cfg = svr_pkg::NORMAL;
        myproject_cfg.port_layer11_out_0_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        myproject_cfg.port_layer11_out_1_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_layer11_out_1  = svr_env#(16)::type_id::create("env_slave_svr_layer11_out_1", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_layer11_out_1*", "cfg", myproject_cfg.port_layer11_out_1_cfg);
        myproject_cfg.port_layer11_out_1_cfg.prt_type = svr_pkg::AP_VLD;
        myproject_cfg.port_layer11_out_1_cfg.is_active = svr_pkg::SVR_ACTIVE;
        myproject_cfg.port_layer11_out_1_cfg.spec_cfg = svr_pkg::NORMAL;
        myproject_cfg.port_layer11_out_1_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        myproject_cfg.port_layer11_out_2_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_layer11_out_2  = svr_env#(16)::type_id::create("env_slave_svr_layer11_out_2", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_layer11_out_2*", "cfg", myproject_cfg.port_layer11_out_2_cfg);
        myproject_cfg.port_layer11_out_2_cfg.prt_type = svr_pkg::AP_VLD;
        myproject_cfg.port_layer11_out_2_cfg.is_active = svr_pkg::SVR_ACTIVE;
        myproject_cfg.port_layer11_out_2_cfg.spec_cfg = svr_pkg::NORMAL;
        myproject_cfg.port_layer11_out_2_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        myproject_cfg.port_layer11_out_3_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_layer11_out_3  = svr_env#(16)::type_id::create("env_slave_svr_layer11_out_3", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_layer11_out_3*", "cfg", myproject_cfg.port_layer11_out_3_cfg);
        myproject_cfg.port_layer11_out_3_cfg.prt_type = svr_pkg::AP_VLD;
        myproject_cfg.port_layer11_out_3_cfg.is_active = svr_pkg::SVR_ACTIVE;
        myproject_cfg.port_layer11_out_3_cfg.spec_cfg = svr_pkg::NORMAL;
        myproject_cfg.port_layer11_out_3_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        myproject_cfg.port_layer11_out_4_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_layer11_out_4  = svr_env#(16)::type_id::create("env_slave_svr_layer11_out_4", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_layer11_out_4*", "cfg", myproject_cfg.port_layer11_out_4_cfg);
        myproject_cfg.port_layer11_out_4_cfg.prt_type = svr_pkg::AP_VLD;
        myproject_cfg.port_layer11_out_4_cfg.is_active = svr_pkg::SVR_ACTIVE;
        myproject_cfg.port_layer11_out_4_cfg.spec_cfg = svr_pkg::NORMAL;
        myproject_cfg.port_layer11_out_4_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        myproject_cfg.port_layer11_out_5_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_layer11_out_5  = svr_env#(16)::type_id::create("env_slave_svr_layer11_out_5", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_layer11_out_5*", "cfg", myproject_cfg.port_layer11_out_5_cfg);
        myproject_cfg.port_layer11_out_5_cfg.prt_type = svr_pkg::AP_VLD;
        myproject_cfg.port_layer11_out_5_cfg.is_active = svr_pkg::SVR_ACTIVE;
        myproject_cfg.port_layer11_out_5_cfg.spec_cfg = svr_pkg::NORMAL;
        myproject_cfg.port_layer11_out_5_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        myproject_cfg.port_layer11_out_6_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_layer11_out_6  = svr_env#(16)::type_id::create("env_slave_svr_layer11_out_6", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_layer11_out_6*", "cfg", myproject_cfg.port_layer11_out_6_cfg);
        myproject_cfg.port_layer11_out_6_cfg.prt_type = svr_pkg::AP_VLD;
        myproject_cfg.port_layer11_out_6_cfg.is_active = svr_pkg::SVR_ACTIVE;
        myproject_cfg.port_layer11_out_6_cfg.spec_cfg = svr_pkg::NORMAL;
        myproject_cfg.port_layer11_out_6_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        myproject_cfg.port_layer11_out_7_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_layer11_out_7  = svr_env#(16)::type_id::create("env_slave_svr_layer11_out_7", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_layer11_out_7*", "cfg", myproject_cfg.port_layer11_out_7_cfg);
        myproject_cfg.port_layer11_out_7_cfg.prt_type = svr_pkg::AP_VLD;
        myproject_cfg.port_layer11_out_7_cfg.is_active = svr_pkg::SVR_ACTIVE;
        myproject_cfg.port_layer11_out_7_cfg.spec_cfg = svr_pkg::NORMAL;
        myproject_cfg.port_layer11_out_7_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        myproject_cfg.port_layer11_out_8_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_layer11_out_8  = svr_env#(16)::type_id::create("env_slave_svr_layer11_out_8", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_layer11_out_8*", "cfg", myproject_cfg.port_layer11_out_8_cfg);
        myproject_cfg.port_layer11_out_8_cfg.prt_type = svr_pkg::AP_VLD;
        myproject_cfg.port_layer11_out_8_cfg.is_active = svr_pkg::SVR_ACTIVE;
        myproject_cfg.port_layer11_out_8_cfg.spec_cfg = svr_pkg::NORMAL;
        myproject_cfg.port_layer11_out_8_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        myproject_cfg.port_layer11_out_9_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_layer11_out_9  = svr_env#(16)::type_id::create("env_slave_svr_layer11_out_9", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_layer11_out_9*", "cfg", myproject_cfg.port_layer11_out_9_cfg);
        myproject_cfg.port_layer11_out_9_cfg.prt_type = svr_pkg::AP_VLD;
        myproject_cfg.port_layer11_out_9_cfg.is_active = svr_pkg::SVR_ACTIVE;
        myproject_cfg.port_layer11_out_9_cfg.spec_cfg = svr_pkg::NORMAL;
        myproject_cfg.port_layer11_out_9_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 



        refm = myproject_reference_model::type_id::create("refm", this);


        uvm_config_db#(myproject_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = myproject_subsystem_monitor::type_id::create("subsys_mon", this);


        myproject_virtual_sqr = myproject_virtual_sequencer::type_id::create("myproject_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void myproject_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        myproject_virtual_sqr.svr_port_input_layer_sqr = env_master_svr_input_layer.m_agt.sqr;
        env_master_svr_input_layer.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_input_layer_imp);
 
        myproject_virtual_sqr.svr_port_layer11_out_0_sqr = env_slave_svr_layer11_out_0.s_agt.sqr;
        env_slave_svr_layer11_out_0.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_layer11_out_0_imp);
 
        myproject_virtual_sqr.svr_port_layer11_out_1_sqr = env_slave_svr_layer11_out_1.s_agt.sqr;
        env_slave_svr_layer11_out_1.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_layer11_out_1_imp);
 
        myproject_virtual_sqr.svr_port_layer11_out_2_sqr = env_slave_svr_layer11_out_2.s_agt.sqr;
        env_slave_svr_layer11_out_2.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_layer11_out_2_imp);
 
        myproject_virtual_sqr.svr_port_layer11_out_3_sqr = env_slave_svr_layer11_out_3.s_agt.sqr;
        env_slave_svr_layer11_out_3.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_layer11_out_3_imp);
 
        myproject_virtual_sqr.svr_port_layer11_out_4_sqr = env_slave_svr_layer11_out_4.s_agt.sqr;
        env_slave_svr_layer11_out_4.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_layer11_out_4_imp);
 
        myproject_virtual_sqr.svr_port_layer11_out_5_sqr = env_slave_svr_layer11_out_5.s_agt.sqr;
        env_slave_svr_layer11_out_5.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_layer11_out_5_imp);
 
        myproject_virtual_sqr.svr_port_layer11_out_6_sqr = env_slave_svr_layer11_out_6.s_agt.sqr;
        env_slave_svr_layer11_out_6.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_layer11_out_6_imp);
 
        myproject_virtual_sqr.svr_port_layer11_out_7_sqr = env_slave_svr_layer11_out_7.s_agt.sqr;
        env_slave_svr_layer11_out_7.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_layer11_out_7_imp);
 
        myproject_virtual_sqr.svr_port_layer11_out_8_sqr = env_slave_svr_layer11_out_8.s_agt.sqr;
        env_slave_svr_layer11_out_8.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_layer11_out_8_imp);
 
        myproject_virtual_sqr.svr_port_layer11_out_9_sqr = env_slave_svr_layer11_out_9.s_agt.sqr;
        env_slave_svr_layer11_out_9.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_layer11_out_9_imp);
 
        refm.myproject_cfg = myproject_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task myproject_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "myproject_env is running", UVM_LOW)
    endtask


`endif
