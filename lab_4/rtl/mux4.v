`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/04 21:33:30
// Design Name: 
// Module Name: mux4
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


module mux4 #(parameter WIDTH = 8)(
	input wire[WIDTH-1:0] d0,d1,d2,d3,
	input wire[1:0] s,
	output wire[WIDTH-1:0] y
    );
reg[WIDTH-1:0] ytemp;
always @(*)begin
    case(s)
        2'b00:begin
            ytemp <= d0;
        end
        2'b01:begin
            ytemp <= d1;
        end
        2'b10:begin
            ytemp <= d2;
        end
        2'b11:begin
            ytemp <= d3;
        end
        default:begin
            ytemp <= 0;
        end
    endcase
end
	
	assign y = ytemp;
endmodule
