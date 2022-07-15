module shift_data(
	input                        clk,
	input                        rst_n,
	input                        [4:0] data_in,
	

	
	output							  trans_done,
	output                       dout
);

reg send_valid;
reg send_ready;
reg trans_d;

reg [4:0] bit_send;


reg [4:0] shift;

reg [2:0] state;
reg [2:0] next_state;
reg [2:0] shift_cnt;

wire clk_baud;


localparam                       S_START    = 1;
localparam                       S_SEND     = 2; //start bit


always@(posedge clk or negedge rst_n)
begin
	if(rst_n == 1'b0)
	begin
		state <= S_START;
	end
	else
		state <= next_state;
end


always@(*)
begin
	case(state)
		S_START:
			if(send_ready == 1'b1)
			begin
				next_state <= S_SEND;
			end	
			else 
				next_state <= S_START;			
		S_SEND:
			if(send_valid == 1'b1)
			begin
				next_state <= S_START;
			end
			else 
				next_state <= S_SEND;	
				
	endcase
	
end


always@(posedge clk or negedge rst_n)
begin
	if(rst_n == 1'b0)
	begin
		send_ready <= 1'b0;
		send_valid <= 1'b0;
	end
	
	else if(state == S_START)
	begin
		case(data_in)					//格雷码
			5'd9:
				bit_send <= 5'b11001;
			5'd8:
				bit_send <= 5'b11000;			
			5'd7:
				bit_send <= 5'b10100;	
			5'd6:
				bit_send <= 5'b10101;					
			5'd5:
				bit_send <= 5'b10111;	
			5'd4:
				bit_send <= 5'b10110;	
			5'd3:
				bit_send <= 5'b10010;	
			5'd2:
				bit_send <= 5'b10011;		
			5'd1:
				bit_send <= 5'b10001;	
		   5'd0:
				bit_send <= 5'b10000;	
			default: 
				bit_send <= 5'b11100;
		endcase
		send_ready <= 1'b1;
	end
	
	else if(state == S_SEND)
	begin	
		if(shift_cnt >= 3'd5)
			bit_send <= 5'd0;
		
		else if(shift_cnt == 3'd0)
			send_valid <= 1'b1;
		
		else
			send_valid <= 1'b0;
	end
		


end







always@(posedge clk_baud or negedge rst_n) 
begin
	  if(rst_n == 1'b0)
	  begin
		  shift_cnt<=3'd0;
		  trans_d <= 1'b0;
	  end

	  else if(shift_cnt==3'd0)
	  begin
		  trans_d <= 1'b0;
		  shift <= bit_send;
		  shift_cnt <= shift_cnt+3'd1;
	  end
	  else if(shift_cnt <= 3'd4)
	  begin
		  shift <= {shift[3:0], shift[4]};
		  shift_cnt <= shift_cnt+3'd1;
	  end
	  else
	  begin
	  	  trans_d <= 1'b1;
		  shift <= 5'd0;
		  shift_cnt <= 3'd0;
	  end
	  
end





assign trans_done=trans_d;
assign dout=shift[4];


tmm_c tmm_c_inst(
	.clk(clk),
	.rst_n(rst_n),
	.m(20'd500000),
	.clk_out(clk_baud)
);



endmodule


