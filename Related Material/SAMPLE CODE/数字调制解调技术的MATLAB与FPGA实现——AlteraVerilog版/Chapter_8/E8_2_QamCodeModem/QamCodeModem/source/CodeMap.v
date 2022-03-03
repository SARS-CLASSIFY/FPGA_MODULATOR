//这是CodeMap.v文件的程序清单
module CodeMap (
	rst,clk,din,
	I,Q); 
	
	input		rst;       //复位信号，高电平有效
	input		clk;       //FPGA系统时钟
	input	 [3:0]	din;  //输入的绝对码数据
	output [2:0]	I,Q;  //转换后的相对码数据

    //差分编码
	 wire c,d;
	 reg  Dc,Dd;
	 reg [3:0] code;
	 always @(posedge clk or posedge rst)
	    if (rst)
			begin
				Dc <= 1'b0;
				Dd <= 1'b0;
				code <= 2'd0;
			end
		else
		   begin
			   Dc <= c;
				Dd <= d;
				//完成差分编码后，组成新的4bit数据用于星座映射
				code <= {c,d,din[1:0]};
			end
	
	 wire d3xor2,d3xnordc,d3xnor2,d3xnordd;
	 assign d3xor2 = din[3]^din[2];
	 assign d3xnordc = !(din[3]^Dc);
	 assign d3xnor2 = !d3xor2;
	 assign d3xnordd = !(din[3]^Dd);
	 assign c = !((d3xor2 & d3xnordc) ^(d3xnor2 & d3xnordd));
	 
	 wire d2xnordd,d2xnordc;
	 assign d2xnordd = !(din[2]^Dd);
	 assign d2xnordc = !(din[2]^Dc);
	 assign d = !((d3xor2 & d2xnordd) ^(d3xnor2 & d2xnordc));
	 
				  
	 //星座映射
	 reg [2:0] it,qt;
	 always @(posedge clk or posedge rst)
	    if (rst)
			begin
				it <= 3'd0;
				qt <= 3'd0;
			end
		else
			case(code)
				4'd0:
					begin
						it <= 3'b011;
						qt <= 3'b011;
					end
				4'd1:
					begin
						it <= 3'b001;
						qt <= 3'b011;
					end			   
				4'd2:
					begin
						it <= 3'b011;
						qt <= 3'b001;
					end	
				4'd3:
					begin
						it <= 3'b001;
						qt <= 3'b001;
					end	
				4'd4:
					begin
						it <= 3'b101;
						qt <= 3'b011;
					end	
				4'd5:
					begin
						it <= 3'b101;
						qt <= 3'b001;
					end						
				4'd6:
					begin
						it <= 3'b111;
						qt <= 3'b011;
					end						
				4'd7:
					begin
						it <= 3'b111;
						qt <= 3'b001;
					end
				4'd8:
					begin
						it <= 3'b011;
						qt <= 3'b101;
					end
				4'd9:
					begin
						it <= 3'b011;
						qt <= 3'b111;
					end			   
				4'd10:
					begin
						it <= 3'b001;
						qt <= 3'b101;
					end	
				4'd11:
					begin
						it <= 3'b001;
						qt <= 3'b111;
					end	
				4'd12:
					begin
						it <= 3'b101;
						qt <= 3'b101;
					end	
				4'd13:
					begin
						it <= 3'b111;
						qt <= 3'b101;
					end						
				4'd14:
					begin
						it <= 3'b101;
						qt <= 3'b111;
					end						
				default:
					begin
						it <= 3'b111;
						qt <= 3'b111;
					end				   
			endcase
			
    assign I = it;
	 assign Q = qt;
	 
endmodule
	