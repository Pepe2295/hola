//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Sat Apr  6 18:52:44 2019
//Host        : jose-vpceg20el running 64-bit Ubuntu 16.04.6 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (led,
    reset,
    sys_clock);
  output led;
  input reset;
  input sys_clock;

  wire led;
  wire reset;
  wire sys_clock;

  design_1 design_1_i
       (.led(led),
        .reset(reset),
        .sys_clock(sys_clock));
endmodule
