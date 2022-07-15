//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
//                                                                              //
//  Author: meisq                                                               //
//          msq@qq.com                                                          //
//          ALINX(shanghai) Technology Co.,Ltd                                  //
//          heijin                                                              //
//     WEB: http://www.alinx.cn/                                                //
//     BBS: http://www.heijin.org/                                              //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// Copyright (c) 2017,ALINX(shanghai) Technology Co.,Ltd                        //
//                    All rights reserved                                       //
//                                                                              //
// This source file may be used and distributed without restriction provided    //
// that this copyright statement is not removed from the file and that any      //
// derivative work contains the original copyright notice and the associated    //
// disclaimer.                                                                  //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////

//================================================================================
//  Revision History:
//  Date          By            Revision    Change Description
//--------------------------------------------------------------------------------
//2017/8/1                    1.0          Original
//*******************************************************************************/

module uart_test(
	input                        clk,
	input                        rst_n,
	input								  [3:0]data_in,
	input								  clk_valid,
	input                        uart_rx,
	output                       uart_tx
);

//personal
reg clk_valid_d;
reg usart_valid;
reg [3:0] sav_data;


always@(posedge clk)
begin
	sav_data<=data_in;

end




parameter                        CLK_FRE = 50;//Mhz
localparam                       IDLE =  0;
localparam                       SEND =  1;   //send HELLO ALINX\r\n
localparam                       WAIT =  2;   //wait 1 second and send uart received data
reg[7:0]                         tx_data;
reg[7:0]                         tx_str;
reg                              tx_data_valid;
wire                             tx_data_ready;
reg[7:0]                         tx_cnt;
wire[7:0]                        rx_data;
wire                             rx_data_valid;
wire                             rx_data_ready;
reg[31:0]                        wait_cnt;
reg[3:0]                         state;

assign rx_data_ready = 1'b1;//always can receive data,
							//if HELLO ALINX\r\n is being sent, the received data is discarded

always@(posedge clk or negedge rst_n)
begin
	if(rst_n == 1'b0)
	begin
		clk_valid_d<=1'b0;//下降沿检测
		usart_valid<=1'b0;
		
		wait_cnt <= 32'd0;
		tx_data <= 8'd0;
		state <= IDLE;
		tx_cnt <= 8'd0;
		tx_data_valid <= 1'b0;
	end
	else
	begin
		clk_valid_d<=clk_valid;
		if((!clk_valid)&&clk_valid_d)
			usart_valid<=1'b1;
		
		
			
		case(state)
			IDLE:
				state <= SEND;
			SEND:
			begin
				wait_cnt <= 32'd0;
				tx_data <= tx_str;

	//			if(tx_data_valid == 1'b1 && tx_data_ready == 1'b1 && tx_cnt < 8'd12)//Send 12 bytes data
	//			begin
	//				tx_cnt <= tx_cnt + 8'd1; //Send data counter
	//			end
	//			else 
				if(tx_data_valid && tx_data_ready)//last byte sent is complete
				begin
					tx_cnt <= 8'd0;
					tx_data_valid <= 1'b0;
					state <= WAIT;
					
					usart_valid<=1'b0;
				end
				else if(~tx_data_valid)
				begin
					tx_data_valid <= 1'b1;
				end
			end
			WAIT:
			begin
				wait_cnt <= wait_cnt + 32'd1;

				if(rx_data_valid == 1'b1)
				begin
					tx_data_valid <= 1'b1;
					tx_data <= rx_data;   // send uart received data
				end
				else if(tx_data_valid && tx_data_ready)
				begin
					tx_data_valid <= 1'b0;
				end
				else if(wait_cnt >= CLK_FRE * 50000 && usart_valid) // wait for 1/100 second
					state <= SEND;
				else if(wait_cnt >= CLK_FRE * 50000 && !usart_valid)
					wait_cnt<=32'd0;
				
			end
			default:
				state <= IDLE;
		endcase
	end
end

//combinational logic
//Send "HELLO ALINX\r\n"
always@(*)
begin
	case(sav_data)
		4'd0 :  tx_str <= "0";
		4'd1 :  tx_str <= "1";
		4'd2 :  tx_str <= "2";
		4'd3 :  tx_str <= "3";
		4'd4 :  tx_str <= "4";
		4'd5 :  tx_str <= "5";
		4'd6 :  tx_str <= "6";
		4'd7 :  tx_str <= "7";
		4'd8 :  tx_str <= "8";
		4'd9 :  tx_str <= "9";
		default:tx_str <= 8'd0;
	endcase
end






uart_rx#
(
	.CLK_FRE(CLK_FRE),
	.BAUD_RATE(115200)
) uart_rx_inst
(
	.clk                        (clk                      ),
	.rst_n                      (rst_n                    ),
	.rx_data                    (rx_data                  ),
	.rx_data_valid              (rx_data_valid            ),
	.rx_data_ready              (rx_data_ready            ),
	.rx_pin                     (uart_rx                  )
);

uart_tx#
(
	.CLK_FRE(CLK_FRE),
	.BAUD_RATE(115200)
) uart_tx_inst
(
	.clk                        (clk                      ),
	.rst_n                      (rst_n                    ),
	.tx_data                    (tx_data                  ),
	.tx_data_valid              (tx_data_valid            ),
	.tx_data_ready              (tx_data_ready            ),
	.tx_pin                     (uart_tx                  )
);
endmodule