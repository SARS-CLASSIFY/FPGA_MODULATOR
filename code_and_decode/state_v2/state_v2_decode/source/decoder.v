module decoder(
	input                        clk,
	input                        rst_n,
	
	input 							  signal,
//	input 							  clk_baud,
	
	//test

	output							  t_valid,
	
	output                       [3:0]dout
);

reg [3:0] data_out;
reg [2:0] shift_cnt;
reg 	    trans_done;
reg 		 shift_s;


reg [4:0] shift;
wire [4:0] decode;


wire clk_baud;


always@(negedge clk_baud or negedge rst_n) 
begin
	  if(rst_n == 1'b0)
	  begin
		  shift_cnt<=3'd0;
		  trans_done<=1'b0;
		  shift_s<=1'b0;
		  shift<=5'd0;
	  end
	  
	  else if(shift_s==1'b0 && signal==1'b1)
	  begin
			shift_s<=1'b1;
			trans_done<=1'b0;
	  		shift <= {shift[3:0], signal};
	  
	  
	  end
	  
	  else if(shift_s==1'b1)
	  begin
		  if(shift_cnt <= 3'd3)
		  begin
			  shift <= {shift[3:0], signal};
			  shift_cnt <= shift_cnt+3'd1;
		  end
		  else
		  begin
			  shift_s<=1'b0;
			  trans_done <= 1'b1;
			  shift_cnt <= 3'd0;
		  end
	  end
	  
	  else
	  begin
			trans_done<=1'b0;
	  
	  end
	  
end


assign decode = shift;

always@(posedge clk or negedge rst_n)
begin
	if(rst_n == 1'b0)
	  begin
		  data_out<=4'b1111;
	  end


	else if(trans_done==1'b1)
	begin
	  case(decode)
			5'b10000:
				data_out<=4'd0;
			5'b10001:
				data_out<=4'd1;			
			5'b10011:
				data_out<=4'd2;
			5'b10010:
				data_out<=4'd3;
			5'b10110:
				data_out<=4'd4;
			5'b10111:
				data_out<=4'd5;
			5'b10101:
				data_out<=4'd6;			
			5'b10100:
				data_out<=4'd7;		
			5'b11000:
				data_out<=4'd8;	
			5'b11001:
				data_out<=4'd9;
			default:
				data_out<=data_out;
		endcase
		
		
	end

end

assign dout = data_out;
assign t_valid=trans_done;

 
 
tmm_c tmm_c_inst(
	.clk(clk),
	.rst_n(rst_n),
	.m(20'd500000),
	.clk_out(clk_baud)
); 


endmodule
