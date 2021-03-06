//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Sun Apr  7 03:15:36 2019
//Host        : jose-vpceg20el running 64-bit Ubuntu 16.04.6 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (a,
    b,
    clk,
    led,
    led2,
    reset);
  input a;
  input b;
  input clk;
  output led;
  output led2;
  input reset;

  wire a;
  wire b;
  wire clk;
  wire led;
  wire led2;
  wire reset;

  design_1 design_1_i
       (.a(a),
        .b(b),
        .clk(clk),
        .led(led),
        .led2(led2),
        .reset(reset));
endmodule
