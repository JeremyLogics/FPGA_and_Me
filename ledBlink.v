`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2019 12:15:47 AM
// Design Name: 
// Module Name: ledBlink
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


module ledBlink(
    input clk,
    output leda,
    output ledb,
    output ledc,
    output ledd
    );
reg [34:0] count = 0;

assign leda = count[30];
assign ledb = count[27];
assign ledc = count[24];
assign ledd = count[22];

always @ (posedge(clk)) count <= count + 1;

endmodule
