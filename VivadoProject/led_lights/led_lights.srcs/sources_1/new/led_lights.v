`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/09/05 16:34:48
// Design Name: 
// Module Name: led_lights
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module led_lights(
clock,
resetn,
y0,
y1,
y2,
y3,
y4,
y5,
y6,
y7,
);
input clock,resetn;
output y0,y1,y2,y3,y4,y5,y6,y7;
wire clk_sys;
wire [2:0] count;
// clock
clock_div U0(
.clk(clock),
.clk_sys(clk_sys)
);
// 38decoder
s_38 U1(
.A(count[0]),
.B(count[1]),
.C(count[2]),
.Enable(resetn),
.Y0(y0),
.Y1(y1),
.Y2(y2),
.Y3(y3),
.Y4(y4),
.Y5(y5),
.Y6(y6),
.Y7(y7)
);
// ctc
ctc8_0 U2(
.clk(clk_sys),
.resetn(resetn),
.count(count)
);
endmodule
