//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef SV_MODULE_TOP_SV
`define SV_MODULE_TOP_SV


`timescale 1ns/1ps


`include "uvm_macros.svh"
import uvm_pkg::*;
import file_agent_pkg::*;
import svr_pkg::*;
import myproject_subsystem_pkg::*;
`include "myproject_subsys_test_sequence_lib.sv"
`include "myproject_test_lib.sv"


module sv_module_top;


    misc_interface              misc_if ( .clock(apatb_myproject_top.AESL_clock), .reset(apatb_myproject_top.AESL_reset) );
    assign apatb_myproject_top.ap_start = misc_if.tb2dut_ap_start;
    assign misc_if.dut2tb_ap_done = apatb_myproject_top.ap_done;
    assign misc_if.dut2tb_ap_ready = apatb_myproject_top.ap_ready;
    initial begin
        uvm_config_db #(virtual misc_interface)::set(null, "uvm_test_top.top_env.*", "misc_if", misc_if);
    end


    svr_if #(12544)  svr_input_layer_if    (.clk  (apatb_myproject_top.AESL_clock), .rst(apatb_myproject_top.AESL_reset));
    assign apatb_myproject_top.input_layer_ap_vld = svr_input_layer_if.valid;
    assign apatb_myproject_top.input_layer = svr_input_layer_if.data[12543:0];
    assign svr_input_layer_if.ready = svr_input_layer_if.valid & misc_if.tb2dut_ap_start;
    initial begin
        uvm_config_db #( virtual svr_if#(12544) )::set(null, "uvm_test_top.top_env.env_master_svr_input_layer.*", "vif", svr_input_layer_if);
    end


    svr_if #(16)  svr_layer11_out_0_if    (.clk  (apatb_myproject_top.AESL_clock), .rst(apatb_myproject_top.AESL_reset));
    assign svr_layer11_out_0_if.valid = apatb_myproject_top.layer11_out_0_ap_vld;
    assign svr_layer11_out_0_if.data[15:0] = apatb_myproject_top.layer11_out_0;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_slave_svr_layer11_out_0.*", "vif", svr_layer11_out_0_if);
    end


    svr_if #(16)  svr_layer11_out_1_if    (.clk  (apatb_myproject_top.AESL_clock), .rst(apatb_myproject_top.AESL_reset));
    assign svr_layer11_out_1_if.valid = apatb_myproject_top.layer11_out_1_ap_vld;
    assign svr_layer11_out_1_if.data[15:0] = apatb_myproject_top.layer11_out_1;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_slave_svr_layer11_out_1.*", "vif", svr_layer11_out_1_if);
    end


    svr_if #(16)  svr_layer11_out_2_if    (.clk  (apatb_myproject_top.AESL_clock), .rst(apatb_myproject_top.AESL_reset));
    assign svr_layer11_out_2_if.valid = apatb_myproject_top.layer11_out_2_ap_vld;
    assign svr_layer11_out_2_if.data[15:0] = apatb_myproject_top.layer11_out_2;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_slave_svr_layer11_out_2.*", "vif", svr_layer11_out_2_if);
    end


    svr_if #(16)  svr_layer11_out_3_if    (.clk  (apatb_myproject_top.AESL_clock), .rst(apatb_myproject_top.AESL_reset));
    assign svr_layer11_out_3_if.valid = apatb_myproject_top.layer11_out_3_ap_vld;
    assign svr_layer11_out_3_if.data[15:0] = apatb_myproject_top.layer11_out_3;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_slave_svr_layer11_out_3.*", "vif", svr_layer11_out_3_if);
    end


    svr_if #(16)  svr_layer11_out_4_if    (.clk  (apatb_myproject_top.AESL_clock), .rst(apatb_myproject_top.AESL_reset));
    assign svr_layer11_out_4_if.valid = apatb_myproject_top.layer11_out_4_ap_vld;
    assign svr_layer11_out_4_if.data[15:0] = apatb_myproject_top.layer11_out_4;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_slave_svr_layer11_out_4.*", "vif", svr_layer11_out_4_if);
    end


    svr_if #(16)  svr_layer11_out_5_if    (.clk  (apatb_myproject_top.AESL_clock), .rst(apatb_myproject_top.AESL_reset));
    assign svr_layer11_out_5_if.valid = apatb_myproject_top.layer11_out_5_ap_vld;
    assign svr_layer11_out_5_if.data[15:0] = apatb_myproject_top.layer11_out_5;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_slave_svr_layer11_out_5.*", "vif", svr_layer11_out_5_if);
    end


    svr_if #(16)  svr_layer11_out_6_if    (.clk  (apatb_myproject_top.AESL_clock), .rst(apatb_myproject_top.AESL_reset));
    assign svr_layer11_out_6_if.valid = apatb_myproject_top.layer11_out_6_ap_vld;
    assign svr_layer11_out_6_if.data[15:0] = apatb_myproject_top.layer11_out_6;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_slave_svr_layer11_out_6.*", "vif", svr_layer11_out_6_if);
    end


    svr_if #(16)  svr_layer11_out_7_if    (.clk  (apatb_myproject_top.AESL_clock), .rst(apatb_myproject_top.AESL_reset));
    assign svr_layer11_out_7_if.valid = apatb_myproject_top.layer11_out_7_ap_vld;
    assign svr_layer11_out_7_if.data[15:0] = apatb_myproject_top.layer11_out_7;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_slave_svr_layer11_out_7.*", "vif", svr_layer11_out_7_if);
    end


    svr_if #(16)  svr_layer11_out_8_if    (.clk  (apatb_myproject_top.AESL_clock), .rst(apatb_myproject_top.AESL_reset));
    assign svr_layer11_out_8_if.valid = apatb_myproject_top.layer11_out_8_ap_vld;
    assign svr_layer11_out_8_if.data[15:0] = apatb_myproject_top.layer11_out_8;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_slave_svr_layer11_out_8.*", "vif", svr_layer11_out_8_if);
    end


    svr_if #(16)  svr_layer11_out_9_if    (.clk  (apatb_myproject_top.AESL_clock), .rst(apatb_myproject_top.AESL_reset));
    assign svr_layer11_out_9_if.valid = apatb_myproject_top.layer11_out_9_ap_vld;
    assign svr_layer11_out_9_if.data[15:0] = apatb_myproject_top.layer11_out_9;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_slave_svr_layer11_out_9.*", "vif", svr_layer11_out_9_if);
    end


    initial begin
        run_test();
    end
endmodule
`endif
