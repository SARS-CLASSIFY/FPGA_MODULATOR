module shift_top(
	input                        clk,
	input                        rst_n,
	input								  uart_rx,

	input 							  signal,
	
	//decode

	
	output							  uart_tx
	
);

wire trans_ready;





wire [3:0]decode_out;

wire clk_valid;

















decoder decoder_inst(
	.clk(clk),
	.rst_n(rst_n),
	.signal(signal),
	.t_valid(clk_valid),
	.dout(decode_out)
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


