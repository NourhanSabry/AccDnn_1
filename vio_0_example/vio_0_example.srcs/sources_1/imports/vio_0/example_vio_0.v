// file: vio_0.v
//////////////////////////////////////////////////////////////////////////////
//$Date: 2011/11/21 12:07:45 $
//$RCSfile: example_design_diff.ejava,v $
//$Revision: 1.2 $
///////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version : 2.00
//  \   \         Application : VIO V2.00
//  /   /         Filename : example_chipscope_vio_v2_0_0.v
// /___/   /\     
// \   \  /  \ 
//  \___\/\___\
//
// (c) Copyright 2013 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

`timescale 1ns / 1ps

//The example module here illustrates how vio core can be instantiated in
//a user design. This helps the user on how various ports selected for the core can be used.
module example_design
  (
    input  wire CLK_P,
    input  wire CLK_N
  );


  localparam LC_DEFAULT_PROBE_IN0   = {4'h0, {28{9'h001}}};
  localparam LC_DEFAULT_PROBE_IN1   = {4'h0, {28{9'h002}}};
  localparam LC_DEFAULT_PROBE_IN2   = {4'h0, {28{9'h003}}};
  localparam LC_DEFAULT_PROBE_IN3   = {4'h0, {28{9'h004}}};
  localparam LC_DEFAULT_PROBE_IN4   = {4'h0, {28{9'h005}}};
  localparam LC_DEFAULT_PROBE_IN5   = {4'h0, {28{9'h006}}};
  localparam LC_DEFAULT_PROBE_IN6   = {4'h0, {28{9'h007}}};
  localparam LC_DEFAULT_PROBE_IN7   = {4'h0, {28{9'h008}}};
  localparam LC_DEFAULT_PROBE_IN8   = {4'h0, {28{9'h009}}};
  localparam LC_DEFAULT_PROBE_IN9   = {4'h0, {28{9'h00A}}};
  localparam LC_DEFAULT_PROBE_IN10   = {4'h0, {28{9'h00B}}};
  localparam LC_DEFAULT_PROBE_IN11   = {4'h0, {28{9'h00C}}};
  localparam LC_DEFAULT_PROBE_IN12   = {4'h0, {28{9'h00D}}};
  localparam LC_DEFAULT_PROBE_IN13   = {4'h0, {28{9'h00E}}};
  localparam LC_DEFAULT_PROBE_IN14   = {4'h0, {28{9'h00F}}};
  localparam LC_DEFAULT_PROBE_IN15   = {4'h0, {28{9'h010}}};
  localparam LC_DEFAULT_PROBE_IN16   = {4'h0, {28{9'h011}}};
  localparam LC_DEFAULT_PROBE_IN17   = {4'h0, {28{9'h012}}};
  localparam LC_DEFAULT_PROBE_IN18   = {4'h0, {28{9'h013}}};
  localparam LC_DEFAULT_PROBE_IN19   = {4'h0, {28{9'h014}}};
  localparam LC_DEFAULT_PROBE_IN20   = {4'h0, {28{9'h015}}};
  localparam LC_DEFAULT_PROBE_IN21   = {4'h0, {28{9'h016}}};
  localparam LC_DEFAULT_PROBE_IN22   = {4'h0, {28{9'h017}}};
  localparam LC_DEFAULT_PROBE_IN23   = {4'h0, {28{9'h018}}};
  localparam LC_DEFAULT_PROBE_IN24   = {4'h0, {28{9'h019}}};
  localparam LC_DEFAULT_PROBE_IN25   = {4'h0, {28{9'h01A}}};
  localparam LC_DEFAULT_PROBE_IN26   = {4'h0, {28{9'h01B}}};
  localparam LC_DEFAULT_PROBE_IN27   = {4'h0, {28{9'h01C}}};
  localparam LC_DEFAULT_PROBE_IN28   = {4'h0, {28{9'h01D}}};
  localparam LC_DEFAULT_PROBE_IN29   = {4'h0, {28{9'h01E}}};
  localparam LC_DEFAULT_PROBE_IN30   = {4'h0, {28{9'h01F}}};
  localparam LC_DEFAULT_PROBE_IN31   = {4'h0, {28{9'h020}}};
  localparam LC_DEFAULT_PROBE_IN32   = {4'h0, {28{9'h021}}};
  localparam LC_DEFAULT_PROBE_IN33   = {4'h0, {28{9'h022}}};
  localparam LC_DEFAULT_PROBE_IN34   = {4'h0, {28{9'h023}}};
  localparam LC_DEFAULT_PROBE_IN35   = {4'h0, {28{9'h024}}};
  localparam LC_DEFAULT_PROBE_IN36   = {4'h0, {28{9'h025}}};
  localparam LC_DEFAULT_PROBE_IN37   = {4'h0, {28{9'h026}}};
  localparam LC_DEFAULT_PROBE_IN38   = {4'h0, {28{9'h027}}};
  localparam LC_DEFAULT_PROBE_IN39   = {4'h0, {28{9'h028}}};
  localparam LC_DEFAULT_PROBE_IN40   = {4'h0, {28{9'h029}}};
  localparam LC_DEFAULT_PROBE_IN41   = {4'h0, {28{9'h02A}}};
  localparam LC_DEFAULT_PROBE_IN42   = {4'h0, {28{9'h02B}}};
  localparam LC_DEFAULT_PROBE_IN43   = {4'h0, {28{9'h02C}}};
  localparam LC_DEFAULT_PROBE_IN44   = {4'h0, {28{9'h02D}}};
  localparam LC_DEFAULT_PROBE_IN45   = {4'h0, {28{9'h02E}}};
  localparam LC_DEFAULT_PROBE_IN46   = {4'h0, {28{9'h02F}}};
  localparam LC_DEFAULT_PROBE_IN47   = {4'h0, {28{9'h030}}};
  localparam LC_DEFAULT_PROBE_IN48   = {4'h0, {28{9'h031}}};
  localparam LC_DEFAULT_PROBE_IN49   = {4'h0, {28{9'h032}}};
  localparam LC_DEFAULT_PROBE_IN50   = {4'h0, {28{9'h033}}};
  localparam LC_DEFAULT_PROBE_IN51   = {4'h0, {28{9'h034}}};
  localparam LC_DEFAULT_PROBE_IN52   = {4'h0, {28{9'h035}}};
  localparam LC_DEFAULT_PROBE_IN53   = {4'h0, {28{9'h036}}};
  localparam LC_DEFAULT_PROBE_IN54   = {4'h0, {28{9'h037}}};
  localparam LC_DEFAULT_PROBE_IN55   = {4'h0, {28{9'h038}}};
  localparam LC_DEFAULT_PROBE_IN56   = {4'h0, {28{9'h039}}};
  localparam LC_DEFAULT_PROBE_IN57   = {4'h0, {28{9'h03A}}};
  localparam LC_DEFAULT_PROBE_IN58   = {4'h0, {28{9'h03B}}};
  localparam LC_DEFAULT_PROBE_IN59   = {4'h0, {28{9'h03C}}};
  localparam LC_DEFAULT_PROBE_IN60   = {4'h0, {28{9'h03D}}};
  localparam LC_DEFAULT_PROBE_IN61   = {4'h0, {28{9'h03E}}};
  localparam LC_DEFAULT_PROBE_IN62   = {4'h0, {28{9'h03F}}};
  localparam LC_DEFAULT_PROBE_IN63   = {4'h0, {28{9'h040}}};

  reg [0:0]    probe_in0;
  reg [0:0]    probe_in1;
  reg [0:0]    probe_in2;
  reg [0:0]    probe_in3;
  reg [0:0]    probe_in4;
  reg [0:0]    probe_in5;
  reg [0:0]    probe_in6;
  reg [0:0]    probe_in7;
  reg [0:0]    probe_in8;
  reg [0:0]    probe_in9;
  reg [0:0]    probe_in10;
  reg [0:0]    probe_in11;
  reg [0:0]    probe_in12;
  reg [0:0]    probe_in13;
  reg [0:0]    probe_in14;
  reg [0:0]    probe_in15;
  reg [0:0]    probe_in16;
  reg [0:0]    probe_in17;
  reg [0:0]    probe_in18;
  reg [0:0]    probe_in19;
  reg [0:0]    probe_in20;
  reg [0:0]    probe_in21;
  reg [0:0]    probe_in22;
  reg [0:0]    probe_in23;
  reg [0:0]    probe_in24;
  reg [0:0]    probe_in25;
  reg [0:0]    probe_in26;
  reg [0:0]    probe_in27;
  reg [0:0]    probe_in28;
  reg [0:0]    probe_in29;
  reg [0:0]    probe_in30;
  reg [0:0]    probe_in31;
  reg [0:0]    probe_in32;
  reg [0:0]    probe_in33;
  reg [0:0]    probe_in34;
  reg [0:0]    probe_in35;
  reg [0:0]    probe_in36;
  reg [0:0]    probe_in37;
  reg [0:0]    probe_in38;
  reg [0:0]    probe_in39;
  reg [0:0]    probe_in40;
  reg [0:0]    probe_in41;
  reg [0:0]    probe_in42;
  reg [0:0]    probe_in43;
  reg [0:0]    probe_in44;
  reg [0:0]    probe_in45;
  reg [0:0]    probe_in46;
  reg [0:0]    probe_in47;
  reg [0:0]    probe_in48;
  reg [0:0]    probe_in49;
  reg [0:0]    probe_in50;
  reg [0:0]    probe_in51;
  reg [0:0]    probe_in52;
  reg [0:0]    probe_in53;
  reg [0:0]    probe_in54;
  reg [0:0]    probe_in55;
  reg [0:0]    probe_in56;
  reg [0:0]    probe_in57;
  reg [0:0]    probe_in58;
  reg [0:0]    probe_in59;
  reg [0:0]    probe_in60;
  reg [0:0]    probe_in61;
  reg [0:0]    probe_in62;
  reg [0:0]    probe_in63;
  wire [0:0]    probe_out0;
  wire [0:0]    probe_out1;
  wire [0:0]    probe_out2;
  wire [0:0]    probe_out3;
  wire [0:0]    probe_out4;
  wire [0:0]    probe_out5;
  wire [0:0]    probe_out6;
  wire [0:0]    probe_out7;
  wire [0:0]    probe_out8;
  wire [0:0]    probe_out9;
  wire [0:0]    probe_out10;
  wire [0:0]    probe_out11;
  wire [0:0]    probe_out12;
  wire [0:0]    probe_out13;
  wire [0:0]    probe_out14;
  wire [0:0]    probe_out15;
  wire [0:0]    probe_out16;
  wire [0:0]    probe_out17;
  wire [0:0]    probe_out18;
  wire [0:0]    probe_out19;
  wire [0:0]    probe_out20;
  wire [0:0]    probe_out21;
  wire [0:0]    probe_out22;
  wire [0:0]    probe_out23;
  wire [0:0]    probe_out24;
  wire [0:0]    probe_out25;
  wire [0:0]    probe_out26;
  wire [0:0]    probe_out27;
  wire [0:0]    probe_out28;
  wire [0:0]    probe_out29;
  wire [0:0]    probe_out30;
  wire [0:0]    probe_out31;
  wire [0:0]    probe_out32;
  wire [0:0]    probe_out33;
  wire [0:0]    probe_out34;
  wire [0:0]    probe_out35;
  wire [0:0]    probe_out36;
  wire [0:0]    probe_out37;
  wire [0:0]    probe_out38;
  wire [0:0]    probe_out39;
  wire [0:0]    probe_out40;
  wire [0:0]    probe_out41;
  wire [0:0]    probe_out42;
  wire [0:0]    probe_out43;
  wire [0:0]    probe_out44;
  wire [0:0]    probe_out45;
  wire [0:0]    probe_out46;
  wire [0:0]    probe_out47;
  wire [0:0]    probe_out48;
  wire [0:0]    probe_out49;
  wire [0:0]    probe_out50;
  wire [0:0]    probe_out51;
  wire [0:0]    probe_out52;
  wire [0:0]    probe_out53;
  wire [0:0]    probe_out54;
  wire [0:0]    probe_out55;
  wire [0:0]    probe_out56;
  wire [0:0]    probe_out57;
  wire [0:0]    probe_out58;
  wire [0:0]    probe_out59;
  wire [0:0]    probe_out60;
  wire [0:0]    probe_out61;
  wire [0:0]    probe_out62;
  wire [0:0]    probe_out63;

  wire        clk_ibufgds;
  wire        clk;

  //------------------------------------------------------------
  //--  Differential clock buffer and global clock buffer
  //------------------------------------------------------------
  IBUFGDS i_IBUFGDS
    (
      .I(CLK_P),
      .IB(CLK_N),
      .O(clk_ibufgds)
    );

  BUFG i_BUFG
    (
      .I(clk_ibufgds),
      .O(clk)
    );

  //=========================================================
  //Register probe_in @ Clk from probe_out
  //=========================================================
  always @ (posedge clk)
    begin
        probe_in0 <= probe_out0;
        probe_in1 <= probe_out1;
        probe_in2 <= probe_out2;
        probe_in3 <= probe_out3;
        probe_in4 <= probe_out4;
        probe_in5 <= probe_out5;
        probe_in6 <= probe_out6;
        probe_in7 <= probe_out7;
        probe_in8 <= probe_out8;
        probe_in9 <= probe_out9;
        probe_in10 <= probe_out10;
        probe_in11 <= probe_out11;
        probe_in12 <= probe_out12;
        probe_in13 <= probe_out13;
        probe_in14 <= probe_out14;
        probe_in15 <= probe_out15;
        probe_in16 <= probe_out16;
        probe_in17 <= probe_out17;
        probe_in18 <= probe_out18;
        probe_in19 <= probe_out19;
        probe_in20 <= probe_out20;
        probe_in21 <= probe_out21;
        probe_in22 <= probe_out22;
        probe_in23 <= probe_out23;
        probe_in24 <= probe_out24;
        probe_in25 <= probe_out25;
        probe_in26 <= probe_out26;
        probe_in27 <= probe_out27;
        probe_in28 <= probe_out28;
        probe_in29 <= probe_out29;
        probe_in30 <= probe_out30;
        probe_in31 <= probe_out31;
        probe_in32 <= probe_out32;
        probe_in33 <= probe_out33;
        probe_in34 <= probe_out34;
        probe_in35 <= probe_out35;
        probe_in36 <= probe_out36;
        probe_in37 <= probe_out37;
        probe_in38 <= probe_out38;
        probe_in39 <= probe_out39;
        probe_in40 <= probe_out40;
        probe_in41 <= probe_out41;
        probe_in42 <= probe_out42;
        probe_in43 <= probe_out43;
        probe_in44 <= probe_out44;
        probe_in45 <= probe_out45;
        probe_in46 <= probe_out46;
        probe_in47 <= probe_out47;
        probe_in48 <= probe_out48;
        probe_in49 <= probe_out49;
        probe_in50 <= probe_out50;
        probe_in51 <= probe_out51;
        probe_in52 <= probe_out52;
        probe_in53 <= probe_out53;
        probe_in54 <= probe_out54;
        probe_in55 <= probe_out55;
        probe_in56 <= probe_out56;
        probe_in57 <= probe_out57;
        probe_in58 <= probe_out58;
        probe_in59 <= probe_out59;
        probe_in60 <= probe_out60;
        probe_in61 <= probe_out61;
        probe_in62 <= probe_out62;
        probe_in63 <= probe_out63;
    end

vio_0 
VIO_INST
(
  .clk          (clk         ),
  .probe_in0    (probe_in0   ),
  .probe_in1    (probe_in1   ),
  .probe_in2    (probe_in2   ),
  .probe_in3    (probe_in3   ),
  .probe_in4    (probe_in4   ),
  .probe_in5    (probe_in5   ),
  .probe_in6    (probe_in6   ),
  .probe_in7    (probe_in7   ),
  .probe_in8    (probe_in8   ),
  .probe_in9    (probe_in9   ),
  .probe_in10    (probe_in10   ),
  .probe_in11    (probe_in11   ),
  .probe_in12    (probe_in12   ),
  .probe_in13    (probe_in13   ),
  .probe_in14    (probe_in14   ),
  .probe_in15    (probe_in15   ),
  .probe_in16    (probe_in16   ),
  .probe_in17    (probe_in17   ),
  .probe_in18    (probe_in18   ),
  .probe_in19    (probe_in19   ),
  .probe_in20    (probe_in20   ),
  .probe_in21    (probe_in21   ),
  .probe_in22    (probe_in22   ),
  .probe_in23    (probe_in23   ),
  .probe_in24    (probe_in24   ),
  .probe_in25    (probe_in25   ),
  .probe_in26    (probe_in26   ),
  .probe_in27    (probe_in27   ),
  .probe_in28    (probe_in28   ),
  .probe_in29    (probe_in29   ),
  .probe_in30    (probe_in30   ),
  .probe_in31    (probe_in31   ),
  .probe_in32    (probe_in32   ),
  .probe_in33    (probe_in33   ),
  .probe_in34    (probe_in34   ),
  .probe_in35    (probe_in35   ),
  .probe_in36    (probe_in36   ),
  .probe_in37    (probe_in37   ),
  .probe_in38    (probe_in38   ),
  .probe_in39    (probe_in39   ),
  .probe_in40    (probe_in40   ),
  .probe_in41    (probe_in41   ),
  .probe_in42    (probe_in42   ),
  .probe_in43    (probe_in43   ),
  .probe_in44    (probe_in44   ),
  .probe_in45    (probe_in45   ),
  .probe_in46    (probe_in46   ),
  .probe_in47    (probe_in47   ),
  .probe_in48    (probe_in48   ),
  .probe_in49    (probe_in49   ),
  .probe_in50    (probe_in50   ),
  .probe_in51    (probe_in51   ),
  .probe_in52    (probe_in52   ),
  .probe_in53    (probe_in53   ),
  .probe_in54    (probe_in54   ),
  .probe_in55    (probe_in55   ),
  .probe_in56    (probe_in56   ),
  .probe_in57    (probe_in57   ),
  .probe_in58    (probe_in58   ),
  .probe_in59    (probe_in59   ),
  .probe_in60    (probe_in60   ),
  .probe_in61    (probe_in61   ),
  .probe_in62    (probe_in62   ),
  .probe_in63    (probe_in63   ),
  .probe_out0    (probe_out0   ),
  .probe_out1    (probe_out1   ),
  .probe_out2    (probe_out2   ),
  .probe_out3    (probe_out3   ),
  .probe_out4    (probe_out4   ),
  .probe_out5    (probe_out5   ),
  .probe_out6    (probe_out6   ),
  .probe_out7    (probe_out7   ),
  .probe_out8    (probe_out8   ),
  .probe_out9    (probe_out9   ),
  .probe_out10    (probe_out10   ),
  .probe_out11    (probe_out11   ),
  .probe_out12    (probe_out12   ),
  .probe_out13    (probe_out13   ),
  .probe_out14    (probe_out14   ),
  .probe_out15    (probe_out15   ),
  .probe_out16    (probe_out16   ),
  .probe_out17    (probe_out17   ),
  .probe_out18    (probe_out18   ),
  .probe_out19    (probe_out19   ),
  .probe_out20    (probe_out20   ),
  .probe_out21    (probe_out21   ),
  .probe_out22    (probe_out22   ),
  .probe_out23    (probe_out23   ),
  .probe_out24    (probe_out24   ),
  .probe_out25    (probe_out25   ),
  .probe_out26    (probe_out26   ),
  .probe_out27    (probe_out27   ),
  .probe_out28    (probe_out28   ),
  .probe_out29    (probe_out29   ),
  .probe_out30    (probe_out30   ),
  .probe_out31    (probe_out31   ),
  .probe_out32    (probe_out32   ),
  .probe_out33    (probe_out33   ),
  .probe_out34    (probe_out34   ),
  .probe_out35    (probe_out35   ),
  .probe_out36    (probe_out36   ),
  .probe_out37    (probe_out37   ),
  .probe_out38    (probe_out38   ),
  .probe_out39    (probe_out39   ),
  .probe_out40    (probe_out40   ),
  .probe_out41    (probe_out41   ),
  .probe_out42    (probe_out42   ),
  .probe_out43    (probe_out43   ),
  .probe_out44    (probe_out44   ),
  .probe_out45    (probe_out45   ),
  .probe_out46    (probe_out46   ),
  .probe_out47    (probe_out47   ),
  .probe_out48    (probe_out48   ),
  .probe_out49    (probe_out49   ),
  .probe_out50    (probe_out50   ),
  .probe_out51    (probe_out51   ),
  .probe_out52    (probe_out52   ),
  .probe_out53    (probe_out53   ),
  .probe_out54    (probe_out54   ),
  .probe_out55    (probe_out55   ),
  .probe_out56    (probe_out56   ),
  .probe_out57    (probe_out57   ),
  .probe_out58    (probe_out58   ),
  .probe_out59    (probe_out59   ),
  .probe_out60    (probe_out60   ),
  .probe_out61    (probe_out61   ),
  .probe_out62    (probe_out62   ),
  .probe_out63    (probe_out63   )
);

endmodule
