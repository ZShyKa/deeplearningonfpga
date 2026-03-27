//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef MYPROJECT_VIRTUAL_SEQUENCER__SV                        
    `define MYPROJECT_VIRTUAL_SEQUENCER__SV                    
                                                                       
    class myproject_virtual_sequencer extends uvm_sequencer;         
        svr_master_sequencer#(12544) svr_port_input_layer_sqr;
        svr_slave_sequencer#(16) svr_port_layer11_out_0_sqr;
        svr_slave_sequencer#(16) svr_port_layer11_out_1_sqr;
        svr_slave_sequencer#(16) svr_port_layer11_out_2_sqr;
        svr_slave_sequencer#(16) svr_port_layer11_out_3_sqr;
        svr_slave_sequencer#(16) svr_port_layer11_out_4_sqr;
        svr_slave_sequencer#(16) svr_port_layer11_out_5_sqr;
        svr_slave_sequencer#(16) svr_port_layer11_out_6_sqr;
        svr_slave_sequencer#(16) svr_port_layer11_out_7_sqr;
        svr_slave_sequencer#(16) svr_port_layer11_out_8_sqr;
        svr_slave_sequencer#(16) svr_port_layer11_out_9_sqr;
 
        function new (string name, uvm_component parent);              
            super.new(name, parent);                                   
            //`uvm_info(this.get_full_name(), "new is called", UVM_LOW)
        endfunction                                                    
                                                                       
        `uvm_component_utils_begin(myproject_virtual_sequencer)      
        `uvm_component_utils_end                                       
                                                                       
    endclass

`endif
