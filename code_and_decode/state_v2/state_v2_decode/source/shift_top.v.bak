module shift_top(
	input                        clk,
	input                        rst_n,
	input								  uart_rx,

//	output clk_b,
//	output [4:0]data_in,
	
	
//	output                       dout,
	
	
	//decode

	
	output							  uart_tx
	
//	output							[3:0]decode_out
);

wire trans_ready;
reg [4:0] data;//码元


//输出串行信号
wire signal;
wire clk_b;

//移位信号
//wire [4:0]sig_a;
//wire [4:0]sig_b;

//decode 信号
//wire [4:0] sh_1;
//wire tra_d;

wire [3:0]decode_out;

wire clk_valid;




always@(posedge trans_ready or negedge rst_n) 
begin
	  if(rst_n == 1'b0)
	  begin
		  data<=5'd0;
	  end
	  else
	  begin
		  if(data<5'd9)
				data<=data+5'd1;
		  else
		  begin
				data<=5'd0;
		  end
		  
	  end
end





//assign data_in=data;


//assign dout=signal;

shift_data shift_data_inst(
	.clk(clk),
	.rst_n(rst_n),
	.data_in(data),
	.trans_done(trans_ready),
	.dout(signal)
);






decoder decoder_inst(
	.clk(clk),
	.rst_n(rst_n),
	.signal(signal),
	.t_valid(clk_valid),
	.dout(decode_out)
);

tmm_c2 tmm_c2_inst(
	.clk(clk),
	.rst_n(rst_n),
	.m(20'd500000),
	.clk_out(clk_b)
);


uart_test uart_test_inst(
	.clk(clk),
	.rst_n(rst_n),
	.data_in(decode_out),
	.clk_valid(clk_valid),
	.uart_rx(uart_rx),
	.uart_tx(uart_tx)
);


endmodule


