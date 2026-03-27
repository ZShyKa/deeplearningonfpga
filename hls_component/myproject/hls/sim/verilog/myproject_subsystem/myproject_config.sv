//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef MYPROJECT_CONFIG__SV                        
    `define MYPROJECT_CONFIG__SV                    
                                                            
    class myproject_config extends uvm_object;            
                                                            
        int check_ena;                                      
        int cover_ena;                                      
        svr_pkg::svr_config port_input_layer_cfg;
        svr_pkg::svr_config port_layer11_out_0_cfg;
        svr_pkg::svr_config port_layer11_out_1_cfg;
        svr_pkg::svr_config port_layer11_out_2_cfg;
        svr_pkg::svr_config port_layer11_out_3_cfg;
        svr_pkg::svr_config port_layer11_out_4_cfg;
        svr_pkg::svr_config port_layer11_out_5_cfg;
        svr_pkg::svr_config port_layer11_out_6_cfg;
        svr_pkg::svr_config port_layer11_out_7_cfg;
        svr_pkg::svr_config port_layer11_out_8_cfg;
        svr_pkg::svr_config port_layer11_out_9_cfg;

        `uvm_object_utils_begin(myproject_config)         
        `uvm_field_object(port_input_layer_cfg, UVM_DEFAULT)
        `uvm_field_object(port_layer11_out_0_cfg, UVM_DEFAULT)
        `uvm_field_object(port_layer11_out_1_cfg, UVM_DEFAULT)
        `uvm_field_object(port_layer11_out_2_cfg, UVM_DEFAULT)
        `uvm_field_object(port_layer11_out_3_cfg, UVM_DEFAULT)
        `uvm_field_object(port_layer11_out_4_cfg, UVM_DEFAULT)
        `uvm_field_object(port_layer11_out_5_cfg, UVM_DEFAULT)
        `uvm_field_object(port_layer11_out_6_cfg, UVM_DEFAULT)
        `uvm_field_object(port_layer11_out_7_cfg, UVM_DEFAULT)
        `uvm_field_object(port_layer11_out_8_cfg, UVM_DEFAULT)
        `uvm_field_object(port_layer11_out_9_cfg, UVM_DEFAULT)
        `uvm_field_int   (check_ena , UVM_DEFAULT)          
        `uvm_field_int   (cover_ena , UVM_DEFAULT)          
        `uvm_object_utils_end                               

        function new (string name = "myproject_config");
            super.new(name);                                
            port_input_layer_cfg = svr_pkg::svr_config::type_id::create("port_input_layer_cfg");
            port_layer11_out_0_cfg = svr_pkg::svr_config::type_id::create("port_layer11_out_0_cfg");
            port_layer11_out_1_cfg = svr_pkg::svr_config::type_id::create("port_layer11_out_1_cfg");
            port_layer11_out_2_cfg = svr_pkg::svr_config::type_id::create("port_layer11_out_2_cfg");
            port_layer11_out_3_cfg = svr_pkg::svr_config::type_id::create("port_layer11_out_3_cfg");
            port_layer11_out_4_cfg = svr_pkg::svr_config::type_id::create("port_layer11_out_4_cfg");
            port_layer11_out_5_cfg = svr_pkg::svr_config::type_id::create("port_layer11_out_5_cfg");
            port_layer11_out_6_cfg = svr_pkg::svr_config::type_id::create("port_layer11_out_6_cfg");
            port_layer11_out_7_cfg = svr_pkg::svr_config::type_id::create("port_layer11_out_7_cfg");
            port_layer11_out_8_cfg = svr_pkg::svr_config::type_id::create("port_layer11_out_8_cfg");
            port_layer11_out_9_cfg = svr_pkg::svr_config::type_id::create("port_layer11_out_9_cfg");
        endfunction                                         
                                                            
    endclass                                                
                                                            
`endif                                                      
