`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/09/05 16:02:24
// Design Name: 
// Module Name: ctc8
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


module ctc8(
clk,
resetn,
count
);
input clk,resetn;
output reg[2:0] count;
always @(posedge clk or negedge resetn) begin
if(resetn == 0) begin
count = 0;
end else begin
if(count == 0)
count = 7;
else begin
count = count - 1;
end
end
end
endmodule
