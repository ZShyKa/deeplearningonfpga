//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef MYPROJECT_SCOREBOARD__SV                                                       
    `define MYPROJECT_SCOREBOARD__SV                                                   
                                                                                               
    `define AUTOTB_TVOUT_layer11_out_0_layer11_out_0_wrapc  "../tv/rtldatafile/rtl.myproject.autotvout_layer11_out_0.dat"
    `define AUTOTB_TVOUT_layer11_out_1_layer11_out_1_wrapc  "../tv/rtldatafile/rtl.myproject.autotvout_layer11_out_1.dat"
    `define AUTOTB_TVOUT_layer11_out_2_layer11_out_2_wrapc  "../tv/rtldatafile/rtl.myproject.autotvout_layer11_out_2.dat"
    `define AUTOTB_TVOUT_layer11_out_3_layer11_out_3_wrapc  "../tv/rtldatafile/rtl.myproject.autotvout_layer11_out_3.dat"
    `define AUTOTB_TVOUT_layer11_out_4_layer11_out_4_wrapc  "../tv/rtldatafile/rtl.myproject.autotvout_layer11_out_4.dat"
    `define AUTOTB_TVOUT_layer11_out_5_layer11_out_5_wrapc  "../tv/rtldatafile/rtl.myproject.autotvout_layer11_out_5.dat"
    `define AUTOTB_TVOUT_layer11_out_6_layer11_out_6_wrapc  "../tv/rtldatafile/rtl.myproject.autotvout_layer11_out_6.dat"
    `define AUTOTB_TVOUT_layer11_out_7_layer11_out_7_wrapc  "../tv/rtldatafile/rtl.myproject.autotvout_layer11_out_7.dat"
    `define AUTOTB_TVOUT_layer11_out_8_layer11_out_8_wrapc  "../tv/rtldatafile/rtl.myproject.autotvout_layer11_out_8.dat"
    `define AUTOTB_TVOUT_layer11_out_9_layer11_out_9_wrapc  "../tv/rtldatafile/rtl.myproject.autotvout_layer11_out_9.dat"
                                                                                               
    class myproject_scoreboard extends uvm_component;                                        
                                                                                               
        myproject_reference_model refm;                                                      
                                                                                               
        typedef integer TRANS_SIZE_QUEUE_TYPE [$];                                      
        TRANS_SIZE_QUEUE_TYPE TVOUT_transaction_size_queue;                                
        int write_file_done_layer11_out_0_layer11_out_0;                                                          
        int write_file_done_layer11_out_1_layer11_out_1;                                                          
        int write_file_done_layer11_out_2_layer11_out_2;                                                          
        int write_file_done_layer11_out_3_layer11_out_3;                                                          
        int write_file_done_layer11_out_4_layer11_out_4;                                                          
        int write_file_done_layer11_out_5_layer11_out_5;                                                          
        int write_file_done_layer11_out_6_layer11_out_6;                                                          
        int write_file_done_layer11_out_7_layer11_out_7;                                                          
        int write_file_done_layer11_out_8_layer11_out_8;                                                          
        int write_file_done_layer11_out_9_layer11_out_9;                                                          
        int write_section_done_layer11_out_0_layer11_out_0 = 0;                                                   
        int write_section_done_layer11_out_1_layer11_out_1 = 0;                                                   
        int write_section_done_layer11_out_2_layer11_out_2 = 0;                                                   
        int write_section_done_layer11_out_3_layer11_out_3 = 0;                                                   
        int write_section_done_layer11_out_4_layer11_out_4 = 0;                                                   
        int write_section_done_layer11_out_5_layer11_out_5 = 0;                                                   
        int write_section_done_layer11_out_6_layer11_out_6 = 0;                                                   
        int write_section_done_layer11_out_7_layer11_out_7 = 0;                                                   
        int write_section_done_layer11_out_8_layer11_out_8 = 0;                                                   
        int write_section_done_layer11_out_9_layer11_out_9 = 0;                                                   
                                                                                           
        file_agent_pkg::file_write_agent#(16) file_wr_port_layer11_out_0_layer11_out_0;
    svr_transfer#(16) layer11_out_0_apvld_rxtr;
        file_agent_pkg::file_write_agent#(16) file_wr_port_layer11_out_1_layer11_out_1;
    svr_transfer#(16) layer11_out_1_apvld_rxtr;
        file_agent_pkg::file_write_agent#(16) file_wr_port_layer11_out_2_layer11_out_2;
    svr_transfer#(16) layer11_out_2_apvld_rxtr;
        file_agent_pkg::file_write_agent#(16) file_wr_port_layer11_out_3_layer11_out_3;
    svr_transfer#(16) layer11_out_3_apvld_rxtr;
        file_agent_pkg::file_write_agent#(16) file_wr_port_layer11_out_4_layer11_out_4;
    svr_transfer#(16) layer11_out_4_apvld_rxtr;
        file_agent_pkg::file_write_agent#(16) file_wr_port_layer11_out_5_layer11_out_5;
    svr_transfer#(16) layer11_out_5_apvld_rxtr;
        file_agent_pkg::file_write_agent#(16) file_wr_port_layer11_out_6_layer11_out_6;
    svr_transfer#(16) layer11_out_6_apvld_rxtr;
        file_agent_pkg::file_write_agent#(16) file_wr_port_layer11_out_7_layer11_out_7;
    svr_transfer#(16) layer11_out_7_apvld_rxtr;
        file_agent_pkg::file_write_agent#(16) file_wr_port_layer11_out_8_layer11_out_8;
    svr_transfer#(16) layer11_out_8_apvld_rxtr;
        file_agent_pkg::file_write_agent#(16) file_wr_port_layer11_out_9_layer11_out_9;
    svr_transfer#(16) layer11_out_9_apvld_rxtr;
                                                                                               
        `uvm_component_utils_begin(myproject_scoreboard)                                     
        `uvm_field_object(refm  , UVM_DEFAULT)                                                 
        `uvm_field_queue_int(TVOUT_transaction_size_queue, UVM_DEFAULT)                    
        `uvm_field_object(file_wr_port_layer11_out_0_layer11_out_0, UVM_DEFAULT)
        `uvm_field_int(write_file_done_layer11_out_0_layer11_out_0, UVM_DEFAULT)
        `uvm_field_int(write_section_done_layer11_out_0_layer11_out_0, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_layer11_out_1_layer11_out_1, UVM_DEFAULT)
        `uvm_field_int(write_file_done_layer11_out_1_layer11_out_1, UVM_DEFAULT)
        `uvm_field_int(write_section_done_layer11_out_1_layer11_out_1, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_layer11_out_2_layer11_out_2, UVM_DEFAULT)
        `uvm_field_int(write_file_done_layer11_out_2_layer11_out_2, UVM_DEFAULT)
        `uvm_field_int(write_section_done_layer11_out_2_layer11_out_2, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_layer11_out_3_layer11_out_3, UVM_DEFAULT)
        `uvm_field_int(write_file_done_layer11_out_3_layer11_out_3, UVM_DEFAULT)
        `uvm_field_int(write_section_done_layer11_out_3_layer11_out_3, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_layer11_out_4_layer11_out_4, UVM_DEFAULT)
        `uvm_field_int(write_file_done_layer11_out_4_layer11_out_4, UVM_DEFAULT)
        `uvm_field_int(write_section_done_layer11_out_4_layer11_out_4, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_layer11_out_5_layer11_out_5, UVM_DEFAULT)
        `uvm_field_int(write_file_done_layer11_out_5_layer11_out_5, UVM_DEFAULT)
        `uvm_field_int(write_section_done_layer11_out_5_layer11_out_5, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_layer11_out_6_layer11_out_6, UVM_DEFAULT)
        `uvm_field_int(write_file_done_layer11_out_6_layer11_out_6, UVM_DEFAULT)
        `uvm_field_int(write_section_done_layer11_out_6_layer11_out_6, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_layer11_out_7_layer11_out_7, UVM_DEFAULT)
        `uvm_field_int(write_file_done_layer11_out_7_layer11_out_7, UVM_DEFAULT)
        `uvm_field_int(write_section_done_layer11_out_7_layer11_out_7, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_layer11_out_8_layer11_out_8, UVM_DEFAULT)
        `uvm_field_int(write_file_done_layer11_out_8_layer11_out_8, UVM_DEFAULT)
        `uvm_field_int(write_section_done_layer11_out_8_layer11_out_8, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_layer11_out_9_layer11_out_9, UVM_DEFAULT)
        `uvm_field_int(write_file_done_layer11_out_9_layer11_out_9, UVM_DEFAULT)
        `uvm_field_int(write_section_done_layer11_out_9_layer11_out_9, UVM_DEFAULT)
        `uvm_component_utils_end                                                               
                                                                                               
        virtual function void build_phase(uvm_phase phase);                                    
            if (!uvm_config_db #(myproject_reference_model)::get(this, "", "refm", refm))
                `uvm_fatal(this.get_full_name(), "No refm from high level")                  
            `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM) 
                                                                                               
            file_wr_port_layer11_out_0_layer11_out_0 = file_agent_pkg::file_write_agent#(16)::type_id::create("file_wr_port_layer11_out_0_layer11_out_0", this);
            file_wr_port_layer11_out_1_layer11_out_1 = file_agent_pkg::file_write_agent#(16)::type_id::create("file_wr_port_layer11_out_1_layer11_out_1", this);
            file_wr_port_layer11_out_2_layer11_out_2 = file_agent_pkg::file_write_agent#(16)::type_id::create("file_wr_port_layer11_out_2_layer11_out_2", this);
            file_wr_port_layer11_out_3_layer11_out_3 = file_agent_pkg::file_write_agent#(16)::type_id::create("file_wr_port_layer11_out_3_layer11_out_3", this);
            file_wr_port_layer11_out_4_layer11_out_4 = file_agent_pkg::file_write_agent#(16)::type_id::create("file_wr_port_layer11_out_4_layer11_out_4", this);
            file_wr_port_layer11_out_5_layer11_out_5 = file_agent_pkg::file_write_agent#(16)::type_id::create("file_wr_port_layer11_out_5_layer11_out_5", this);
            file_wr_port_layer11_out_6_layer11_out_6 = file_agent_pkg::file_write_agent#(16)::type_id::create("file_wr_port_layer11_out_6_layer11_out_6", this);
            file_wr_port_layer11_out_7_layer11_out_7 = file_agent_pkg::file_write_agent#(16)::type_id::create("file_wr_port_layer11_out_7_layer11_out_7", this);
            file_wr_port_layer11_out_8_layer11_out_8 = file_agent_pkg::file_write_agent#(16)::type_id::create("file_wr_port_layer11_out_8_layer11_out_8", this);
            file_wr_port_layer11_out_9_layer11_out_9 = file_agent_pkg::file_write_agent#(16)::type_id::create("file_wr_port_layer11_out_9_layer11_out_9", this);
        endfunction                                                                            
                                                                                               
        function new (string name = "", uvm_component parent = null);                        
            super.new(name, parent);                                                           
            write_file_done_layer11_out_0_layer11_out_0 = 0;                                                          
            write_file_done_layer11_out_1_layer11_out_1 = 0;                                                          
            write_file_done_layer11_out_2_layer11_out_2 = 0;                                                          
            write_file_done_layer11_out_3_layer11_out_3 = 0;                                                          
            write_file_done_layer11_out_4_layer11_out_4 = 0;                                                          
            write_file_done_layer11_out_5_layer11_out_5 = 0;                                                          
            write_file_done_layer11_out_6_layer11_out_6 = 0;                                                          
            write_file_done_layer11_out_7_layer11_out_7 = 0;                                                          
            write_file_done_layer11_out_8_layer11_out_8 = 0;                                                          
            write_file_done_layer11_out_9_layer11_out_9 = 0;                                                          
        endfunction                                                                            
                                                                                               
        virtual task run_phase(uvm_phase phase);                                               
            create_TVOUT_transaction_size_queue_by_depth(1);
            file_wr_port_layer11_out_0_layer11_out_0.config_file(   
                    `AUTOTB_TVOUT_layer11_out_0_layer11_out_0_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_depth(1);
            file_wr_port_layer11_out_1_layer11_out_1.config_file(   
                    `AUTOTB_TVOUT_layer11_out_1_layer11_out_1_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_depth(1);
            file_wr_port_layer11_out_2_layer11_out_2.config_file(   
                    `AUTOTB_TVOUT_layer11_out_2_layer11_out_2_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_depth(1);
            file_wr_port_layer11_out_3_layer11_out_3.config_file(   
                    `AUTOTB_TVOUT_layer11_out_3_layer11_out_3_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_depth(1);
            file_wr_port_layer11_out_4_layer11_out_4.config_file(   
                    `AUTOTB_TVOUT_layer11_out_4_layer11_out_4_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_depth(1);
            file_wr_port_layer11_out_5_layer11_out_5.config_file(   
                    `AUTOTB_TVOUT_layer11_out_5_layer11_out_5_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_depth(1);
            file_wr_port_layer11_out_6_layer11_out_6.config_file(   
                    `AUTOTB_TVOUT_layer11_out_6_layer11_out_6_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_depth(1);
            file_wr_port_layer11_out_7_layer11_out_7.config_file(   
                    `AUTOTB_TVOUT_layer11_out_7_layer11_out_7_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_depth(1);
            file_wr_port_layer11_out_8_layer11_out_8.config_file(   
                    `AUTOTB_TVOUT_layer11_out_8_layer11_out_8_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_depth(1);
            file_wr_port_layer11_out_9_layer11_out_9.config_file(   
                    `AUTOTB_TVOUT_layer11_out_9_layer11_out_9_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            

            fork                                                                               
                                                                                               
                forever begin
                    @refm.dut2tb_ap_done;
                    `uvm_info(this.get_full_name(), "receive dut2tb_ap_done and do axim dump", UVM_LOW)
            if (layer11_out_0_apvld_rxtr) file_wr_port_layer11_out_0_layer11_out_0.write_TVOUT_data(layer11_out_0_apvld_rxtr.data[15: 0]);
                    file_wr_port_layer11_out_0_layer11_out_0.receive_ap_done();
             layer11_out_0_apvld_rxtr = null;
            if (layer11_out_1_apvld_rxtr) file_wr_port_layer11_out_1_layer11_out_1.write_TVOUT_data(layer11_out_1_apvld_rxtr.data[15: 0]);
                    file_wr_port_layer11_out_1_layer11_out_1.receive_ap_done();
             layer11_out_1_apvld_rxtr = null;
            if (layer11_out_2_apvld_rxtr) file_wr_port_layer11_out_2_layer11_out_2.write_TVOUT_data(layer11_out_2_apvld_rxtr.data[15: 0]);
                    file_wr_port_layer11_out_2_layer11_out_2.receive_ap_done();
             layer11_out_2_apvld_rxtr = null;
            if (layer11_out_3_apvld_rxtr) file_wr_port_layer11_out_3_layer11_out_3.write_TVOUT_data(layer11_out_3_apvld_rxtr.data[15: 0]);
                    file_wr_port_layer11_out_3_layer11_out_3.receive_ap_done();
             layer11_out_3_apvld_rxtr = null;
            if (layer11_out_4_apvld_rxtr) file_wr_port_layer11_out_4_layer11_out_4.write_TVOUT_data(layer11_out_4_apvld_rxtr.data[15: 0]);
                    file_wr_port_layer11_out_4_layer11_out_4.receive_ap_done();
             layer11_out_4_apvld_rxtr = null;
            if (layer11_out_5_apvld_rxtr) file_wr_port_layer11_out_5_layer11_out_5.write_TVOUT_data(layer11_out_5_apvld_rxtr.data[15: 0]);
                    file_wr_port_layer11_out_5_layer11_out_5.receive_ap_done();
             layer11_out_5_apvld_rxtr = null;
            if (layer11_out_6_apvld_rxtr) file_wr_port_layer11_out_6_layer11_out_6.write_TVOUT_data(layer11_out_6_apvld_rxtr.data[15: 0]);
                    file_wr_port_layer11_out_6_layer11_out_6.receive_ap_done();
             layer11_out_6_apvld_rxtr = null;
            if (layer11_out_7_apvld_rxtr) file_wr_port_layer11_out_7_layer11_out_7.write_TVOUT_data(layer11_out_7_apvld_rxtr.data[15: 0]);
                    file_wr_port_layer11_out_7_layer11_out_7.receive_ap_done();
             layer11_out_7_apvld_rxtr = null;
            if (layer11_out_8_apvld_rxtr) file_wr_port_layer11_out_8_layer11_out_8.write_TVOUT_data(layer11_out_8_apvld_rxtr.data[15: 0]);
                    file_wr_port_layer11_out_8_layer11_out_8.receive_ap_done();
             layer11_out_8_apvld_rxtr = null;
            if (layer11_out_9_apvld_rxtr) file_wr_port_layer11_out_9_layer11_out_9.write_TVOUT_data(layer11_out_9_apvld_rxtr.data[15: 0]);
                    file_wr_port_layer11_out_9_layer11_out_9.receive_ap_done();
             layer11_out_9_apvld_rxtr = null;
                end                                                                            
                begin                                                                          
                    @refm.finish;                                                              
                    `uvm_info(this.get_full_name(), "receive FINISH", UVM_LOW)               
                    file_wr_port_layer11_out_0_layer11_out_0.wait_write_file_done();
                    file_wr_port_layer11_out_1_layer11_out_1.wait_write_file_done();
                    file_wr_port_layer11_out_2_layer11_out_2.wait_write_file_done();
                    file_wr_port_layer11_out_3_layer11_out_3.wait_write_file_done();
                    file_wr_port_layer11_out_4_layer11_out_4.wait_write_file_done();
                    file_wr_port_layer11_out_5_layer11_out_5.wait_write_file_done();
                    file_wr_port_layer11_out_6_layer11_out_6.wait_write_file_done();
                    file_wr_port_layer11_out_7_layer11_out_7.wait_write_file_done();
                    file_wr_port_layer11_out_8_layer11_out_8.wait_write_file_done();
                    file_wr_port_layer11_out_9_layer11_out_9.wait_write_file_done();
                end                                                                            
                begin                                                                      
                    forever begin                                                              
                        wait(write_section_done_layer11_out_0_layer11_out_0 && write_section_done_layer11_out_1_layer11_out_1 && write_section_done_layer11_out_2_layer11_out_2 && write_section_done_layer11_out_3_layer11_out_3 && write_section_done_layer11_out_4_layer11_out_4 && write_section_done_layer11_out_5_layer11_out_5 && write_section_done_layer11_out_6_layer11_out_6 && write_section_done_layer11_out_7_layer11_out_7 && write_section_done_layer11_out_8_layer11_out_8 && write_section_done_layer11_out_9_layer11_out_9);                          
                        write_section_done_layer11_out_0_layer11_out_0 = 0;                                               
                        write_section_done_layer11_out_1_layer11_out_1 = 0;                                               
                        write_section_done_layer11_out_2_layer11_out_2 = 0;                                               
                        write_section_done_layer11_out_3_layer11_out_3 = 0;                                               
                        write_section_done_layer11_out_4_layer11_out_4 = 0;                                               
                        write_section_done_layer11_out_5_layer11_out_5 = 0;                                               
                        write_section_done_layer11_out_6_layer11_out_6 = 0;                                               
                        write_section_done_layer11_out_7_layer11_out_7 = 0;                                               
                        write_section_done_layer11_out_8_layer11_out_8 = 0;                                               
                        write_section_done_layer11_out_9_layer11_out_9 = 0;                                               
                        -> refm.allsvr_output_done;                                         
                    end                                                                        
                end                                                                        
            join                                                                               
        endtask                                                                                
                                                                                               
        virtual function void create_TVOUT_transaction_size_queue_by_depth(integer depth); 
            integer i;                                                                     
            TVOUT_transaction_size_queue.delete();                                         
            for (i = 0; i < 5; i++)                                    
                TVOUT_transaction_size_queue.push_back(depth);                             
        endfunction                                                                        
                                                                                           
        virtual function void write_svr_master_input_layer(svr_transfer#(12544) tr);
            `uvm_info(this.get_full_name(), "port input_layer collected one pkt", UVM_DEBUG);          
        endfunction
                   
        virtual function void write_svr_slave_layer11_out_0(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port layer11_out_0 collected one pkt", UVM_DEBUG);          
             layer11_out_0_apvld_rxtr = tr;
            write_section_done_layer11_out_0_layer11_out_0 = 1;
        endfunction
                   
        virtual function void write_svr_slave_layer11_out_1(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port layer11_out_1 collected one pkt", UVM_DEBUG);          
             layer11_out_1_apvld_rxtr = tr;
            write_section_done_layer11_out_1_layer11_out_1 = 1;
        endfunction
                   
        virtual function void write_svr_slave_layer11_out_2(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port layer11_out_2 collected one pkt", UVM_DEBUG);          
             layer11_out_2_apvld_rxtr = tr;
            write_section_done_layer11_out_2_layer11_out_2 = 1;
        endfunction
                   
        virtual function void write_svr_slave_layer11_out_3(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port layer11_out_3 collected one pkt", UVM_DEBUG);          
             layer11_out_3_apvld_rxtr = tr;
            write_section_done_layer11_out_3_layer11_out_3 = 1;
        endfunction
                   
        virtual function void write_svr_slave_layer11_out_4(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port layer11_out_4 collected one pkt", UVM_DEBUG);          
             layer11_out_4_apvld_rxtr = tr;
            write_section_done_layer11_out_4_layer11_out_4 = 1;
        endfunction
                   
        virtual function void write_svr_slave_layer11_out_5(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port layer11_out_5 collected one pkt", UVM_DEBUG);          
             layer11_out_5_apvld_rxtr = tr;
            write_section_done_layer11_out_5_layer11_out_5 = 1;
        endfunction
                   
        virtual function void write_svr_slave_layer11_out_6(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port layer11_out_6 collected one pkt", UVM_DEBUG);          
             layer11_out_6_apvld_rxtr = tr;
            write_section_done_layer11_out_6_layer11_out_6 = 1;
        endfunction
                   
        virtual function void write_svr_slave_layer11_out_7(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port layer11_out_7 collected one pkt", UVM_DEBUG);          
             layer11_out_7_apvld_rxtr = tr;
            write_section_done_layer11_out_7_layer11_out_7 = 1;
        endfunction
                   
        virtual function void write_svr_slave_layer11_out_8(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port layer11_out_8 collected one pkt", UVM_DEBUG);          
             layer11_out_8_apvld_rxtr = tr;
            write_section_done_layer11_out_8_layer11_out_8 = 1;
        endfunction
                   
        virtual function void write_svr_slave_layer11_out_9(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port layer11_out_9 collected one pkt", UVM_DEBUG);          
             layer11_out_9_apvld_rxtr = tr;
            write_section_done_layer11_out_9_layer11_out_9 = 1;
        endfunction
                   
    endclass                                                                                   
                                                                                               
`endif                                                                                         
