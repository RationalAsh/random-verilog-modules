module counter #(parameter N=8)
    (input wire clk,
		input wire rst,
		output wire [N-1:0] count
		);
   //parameter N=8;
   reg [N-1:0] cnt;
	assign count = cnt;
	
   always @(posedge clk, negedge rst) begin
   if(~rst)
		cnt <= 0;
	else
		cnt <= cnt + 1'b1;
   end
endmodule
