

module corebit_const #(parameter value=1) (
  output out
);
  assign out = value;

endmodule //corebit_const

module corebit_term (
                     /* verilator lint_off UNUSED */
                     input in
                     );


endmodule //corebit_term

module coreir_add #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = in0 + in1;

endmodule //coreir_add

module coreir_const #(parameter value=1, parameter width=1) (
  output [width-1:0] out
);
  assign out = value;

endmodule //coreir_const

module coreir_mux #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  input sel,
  output [width-1:0] out
);
  assign out = sel ? in1 : in0;

endmodule //coreir_mux

module coreir_eq #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 == in1;

endmodule //coreir_eq

module mem #(parameter depth=1, parameter width=1) (
  input clk,
  input [width-1:0] wdata,
  input [$clog2(depth)-1:0] waddr,
  input wen,
  output [width-1:0] rdata,
  input [$clog2(depth)-1:0] raddr
);
reg [width-1:0] data[depth];
always @(posedge clk) begin
  if (wen) begin
    data[waddr] <= wdata;
  end
end
assign rdata = data[raddr];

endmodule //mem

module coreir_mul #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = in0 * in1;

endmodule //coreir_mul

module coreir_neq #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 != in1;

endmodule //coreir_neq

module coreir_reg #(parameter init=1, parameter width=1) (
  input clk,
  input [width-1:0] in,
  output [width-1:0] out
);
reg [width-1:0] outReg=init;
always @(posedge clk) begin
  outReg <= in;
end
assign out = outReg;

endmodule //coreir_reg

module DesignTop (
  input  clk,
  input [15:0] in_0,
  output [15:0] out
);
  //Wire declarations for instance 'add_340_343_344' (Module coreir_add)
  wire [15:0] add_340_343_344_in0;
  wire [15:0] add_340_343_344_out;
  wire [15:0] add_340_343_344_in1;
  coreir_add #(.width(16)) add_340_343_344(
    .in0(add_340_343_344_in0),
    .in1(add_340_343_344_in1),
    .out(add_340_343_344_out)
  );

  //Wire declarations for instance 'add_340_347_348' (Module coreir_add)
  wire [15:0] add_340_347_348_in0;
  wire [15:0] add_340_347_348_out;
  wire [15:0] add_340_347_348_in1;
  coreir_add #(.width(16)) add_340_347_348(
    .in0(add_340_347_348_in0),
    .in1(add_340_347_348_in1),
    .out(add_340_347_348_out)
  );

  //Wire declarations for instance 'add_340_351_352' (Module coreir_add)
  wire [15:0] add_340_351_352_in0;
  wire [15:0] add_340_351_352_out;
  wire [15:0] add_340_351_352_in1;
  coreir_add #(.width(16)) add_340_351_352(
    .in0(add_340_351_352_in0),
    .in1(add_340_351_352_in1),
    .out(add_340_351_352_out)
  );

  //Wire declarations for instance 'const0_0' (Module coreir_const)
  wire [15:0] const0_0_out;
  coreir_const #(.value(16'd0),.width(16)) const0_0(
    .out(const0_0_out)
  );

  //Wire declarations for instance 'const3_3' (Module coreir_const)
  wire [15:0] const3_3_out;
  coreir_const #(.value(16'd3),.width(16)) const3_3(
    .out(const3_3_out)
  );

  //Wire declarations for instance 'const5_5' (Module coreir_const)
  wire [15:0] const5_5_out;
  coreir_const #(.value(16'd5),.width(16)) const5_5(
    .out(const5_5_out)
  );

  //Wire declarations for instance 'const7_7' (Module coreir_const)
  wire [15:0] const7_7_out;
  coreir_const #(.value(16'd7),.width(16)) const7_7(
    .out(const7_7_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$add_r' (Module coreir_add)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$add_r_in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$add_r_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$add_r_in1;
  coreir_add #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$add_r(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$add_r_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$add_r_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$add_r_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$add_w' (Module coreir_add)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$add_w_in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$add_w_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$add_w_in1;
  coreir_add #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$add_w(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$add_w_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$add_w_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$add_w_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$c1' (Module coreir_const)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$c1_out;
  coreir_const #(.value(4'd1),.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$c1(
    .out(lb_p4_clamped_stencil_update_stream$mem_1$c1_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$max_const' (Module coreir_const)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$max_const_out;
  coreir_const #(.value(4'd10),.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$max_const(
    .out(lb_p4_clamped_stencil_update_stream$mem_1$max_const_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$mem' (Module mem)
  wire  lb_p4_clamped_stencil_update_stream$mem_1$mem_clk;
  wire [15:0] lb_p4_clamped_stencil_update_stream$mem_1$mem_wdata;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$mem_waddr;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$mem_wen;
  wire [15:0] lb_p4_clamped_stencil_update_stream$mem_1$mem_rdata;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$mem_raddr;
  mem #(.depth(10),.width(16)) lb_p4_clamped_stencil_update_stream$mem_1$mem(
    .clk(lb_p4_clamped_stencil_update_stream$mem_1$mem_clk),
    .raddr(lb_p4_clamped_stencil_update_stream$mem_1$mem_raddr),
    .rdata(lb_p4_clamped_stencil_update_stream$mem_1$mem_rdata),
    .waddr(lb_p4_clamped_stencil_update_stream$mem_1$mem_waddr),
    .wdata(lb_p4_clamped_stencil_update_stream$mem_1$mem_wdata),
    .wen(lb_p4_clamped_stencil_update_stream$mem_1$mem_wen)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux_in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux_in1;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux_sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux_out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0' (Module coreir_reg)
  wire  lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_clk;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_in;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_out;
  coreir_reg #(.init(4'd0),.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0(
    .clk(lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_clk),
    .in(lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_in),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq' (Module coreir_eq)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq_in0;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq_in1;
  coreir_eq #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux_in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux_in1;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux_sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux_out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux_sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$veq' (Module coreir_neq)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$veq_in0;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$veq_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$veq_in1;
  coreir_neq #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$veq(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$veq_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$veq_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$veq_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux_in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux_in1;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux_sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux_out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0' (Module coreir_reg)
  wire  lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_clk;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_in;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_out;
  coreir_reg #(.init(4'd0),.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0(
    .clk(lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_clk),
    .in(lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_in),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq' (Module coreir_eq)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq_in0;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq_in1;
  coreir_eq #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux_in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux_in1;
  wire  lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux_sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux_out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux_sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1$zero_const' (Module coreir_const)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_1$zero_const_out;
  coreir_const #(.value(4'd0),.width(4)) lb_p4_clamped_stencil_update_stream$mem_1$zero_const(
    .out(lb_p4_clamped_stencil_update_stream$mem_1$zero_const_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_1_valid_term' (Module corebit_term)
  wire  lb_p4_clamped_stencil_update_stream$mem_1_valid_term_in;
  corebit_term lb_p4_clamped_stencil_update_stream$mem_1_valid_term(
    .in(lb_p4_clamped_stencil_update_stream$mem_1_valid_term_in)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$add_r' (Module coreir_add)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$add_r_in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$add_r_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$add_r_in1;
  coreir_add #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$add_r(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$add_r_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$add_r_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$add_r_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$add_w' (Module coreir_add)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$add_w_in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$add_w_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$add_w_in1;
  coreir_add #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$add_w(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$add_w_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$add_w_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$add_w_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$c1' (Module coreir_const)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$c1_out;
  coreir_const #(.value(4'd1),.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$c1(
    .out(lb_p4_clamped_stencil_update_stream$mem_2$c1_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$max_const' (Module coreir_const)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$max_const_out;
  coreir_const #(.value(4'd10),.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$max_const(
    .out(lb_p4_clamped_stencil_update_stream$mem_2$max_const_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$mem' (Module mem)
  wire  lb_p4_clamped_stencil_update_stream$mem_2$mem_clk;
  wire [15:0] lb_p4_clamped_stencil_update_stream$mem_2$mem_wdata;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$mem_waddr;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$mem_wen;
  wire [15:0] lb_p4_clamped_stencil_update_stream$mem_2$mem_rdata;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$mem_raddr;
  mem #(.depth(10),.width(16)) lb_p4_clamped_stencil_update_stream$mem_2$mem(
    .clk(lb_p4_clamped_stencil_update_stream$mem_2$mem_clk),
    .raddr(lb_p4_clamped_stencil_update_stream$mem_2$mem_raddr),
    .rdata(lb_p4_clamped_stencil_update_stream$mem_2$mem_rdata),
    .waddr(lb_p4_clamped_stencil_update_stream$mem_2$mem_waddr),
    .wdata(lb_p4_clamped_stencil_update_stream$mem_2$mem_wdata),
    .wen(lb_p4_clamped_stencil_update_stream$mem_2$mem_wen)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux_in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux_in1;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux_sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux_out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0' (Module coreir_reg)
  wire  lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_clk;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_in;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_out;
  coreir_reg #(.init(4'd0),.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0(
    .clk(lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_clk),
    .in(lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_in),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq' (Module coreir_eq)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq_in0;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq_in1;
  coreir_eq #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux_in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux_in1;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux_sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux_out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux_sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$veq' (Module coreir_neq)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$veq_in0;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$veq_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$veq_in1;
  coreir_neq #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$veq(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$veq_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$veq_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$veq_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux_in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux_in1;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux_sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux_out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux_sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0' (Module coreir_reg)
  wire  lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_clk;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_in;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_out;
  coreir_reg #(.init(4'd0),.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0(
    .clk(lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_clk),
    .in(lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_in),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq' (Module coreir_eq)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq_in0;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq_in1;
  coreir_eq #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux' (Module coreir_mux)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux_in0;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux_out;
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux_in1;
  wire  lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux_sel;
  coreir_mux #(.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux(
    .in0(lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux_in0),
    .in1(lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux_in1),
    .out(lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux_out),
    .sel(lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux_sel)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2$zero_const' (Module coreir_const)
  wire [3:0] lb_p4_clamped_stencil_update_stream$mem_2$zero_const_out;
  coreir_const #(.value(4'd0),.width(4)) lb_p4_clamped_stencil_update_stream$mem_2$zero_const(
    .out(lb_p4_clamped_stencil_update_stream$mem_2$zero_const_out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream$mem_2_valid_term' (Module corebit_term)
  wire  lb_p4_clamped_stencil_update_stream$mem_2_valid_term_in;
  corebit_term lb_p4_clamped_stencil_update_stream$mem_2_valid_term(
    .in(lb_p4_clamped_stencil_update_stream$mem_2_valid_term_in)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream_wen' (Module corebit_const)
  wire  lb_p4_clamped_stencil_update_stream_wen_out;
  corebit_const #(.value(1)) lb_p4_clamped_stencil_update_stream_wen(
    .out(lb_p4_clamped_stencil_update_stream_wen_out)
  );

  //Wire declarations for instance 'mul_3423_343' (Module coreir_mul)
  wire [15:0] mul_3423_343_in0;
  wire [15:0] mul_3423_343_out;
  wire [15:0] mul_3423_343_in1;
  coreir_mul #(.width(16)) mul_3423_343(
    .in0(mul_3423_343_in0),
    .in1(mul_3423_343_in1),
    .out(mul_3423_343_out)
  );

  //Wire declarations for instance 'mul_3465_347' (Module coreir_mul)
  wire [15:0] mul_3465_347_in0;
  wire [15:0] mul_3465_347_out;
  wire [15:0] mul_3465_347_in1;
  coreir_mul #(.width(16)) mul_3465_347(
    .in0(mul_3465_347_in0),
    .in1(mul_3465_347_in1),
    .out(mul_3465_347_out)
  );

  //Wire declarations for instance 'mul_3507_351' (Module coreir_mul)
  wire [15:0] mul_3507_351_in0;
  wire [15:0] mul_3507_351_out;
  wire [15:0] mul_3507_351_in1;
  coreir_mul #(.width(16)) mul_3507_351(
    .in0(mul_3507_351_in0),
    .in1(mul_3507_351_in1),
    .out(mul_3507_351_out)
  );

  //All the connections
  assign add_340_343_344_in0[15:0] = const0_0_out[15:0];
  assign add_340_343_344_in1[15:0] = mul_3423_343_out[15:0];
  assign add_340_347_348_in0[15:0] = add_340_343_344_out[15:0];
  assign add_340_347_348_in1[15:0] = mul_3465_347_out[15:0];
  assign add_340_351_352_in0[15:0] = add_340_347_348_out[15:0];
  assign add_340_351_352_in1[15:0] = mul_3507_351_out[15:0];
  assign out[15:0] = add_340_351_352_out[15:0];
  assign mul_3423_343_in1[15:0] = const3_3_out[15:0];
  assign mul_3465_347_in1[15:0] = const5_5_out[15:0];
  assign mul_3507_351_in1[15:0] = const7_7_out[15:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$add_r_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$add_r_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$c1_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$add_r_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$add_r_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$add_w_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$add_w_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$c1_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$add_w_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$add_w_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$max_const_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$max_const_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$mem_clk = clk;
  assign lb_p4_clamped_stencil_update_stream$mem_1$mem_raddr[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$mem_wdata[15:0] = lb_p4_clamped_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign mul_3465_347_in0[15:0] = lb_p4_clamped_stencil_update_stream$mem_1$mem_rdata[15:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$mem_waddr[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$mem_wdata[15:0] = in_0[15:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$mem_wen = lb_p4_clamped_stencil_update_stream_wen_out;
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_in[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr$enMux_sel = lb_p4_clamped_stencil_update_stream_wen_out;
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_clk = clk;
  assign lb_p4_clamped_stencil_update_stream$mem_1$veq_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux_sel = lb_p4_clamped_stencil_update_stream$mem_1$raddr_eq_out;
  assign lb_p4_clamped_stencil_update_stream$mem_1$raddr_mux_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$zero_const_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$veq_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1_valid_term_in = lb_p4_clamped_stencil_update_stream$mem_1$veq_out;
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_in[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr$enMux_sel = lb_p4_clamped_stencil_update_stream_wen_out;
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0_clk = clk;
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux_sel = lb_p4_clamped_stencil_update_stream$mem_1$waddr_eq_out;
  assign lb_p4_clamped_stencil_update_stream$mem_1$waddr_mux_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_1$zero_const_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$add_r_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$add_r_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$c1_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$add_r_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$add_r_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$add_w_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$add_w_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$c1_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$add_w_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$add_w_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$max_const_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$max_const_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$mem_clk = clk;
  assign lb_p4_clamped_stencil_update_stream$mem_2$mem_raddr[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_out[3:0];
  assign mul_3423_343_in0[15:0] = lb_p4_clamped_stencil_update_stream$mem_2$mem_rdata[15:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$mem_waddr[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$mem_wen = lb_p4_clamped_stencil_update_stream_wen_out;
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_in[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr$enMux_sel = lb_p4_clamped_stencil_update_stream_wen_out;
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_clk = clk;
  assign lb_p4_clamped_stencil_update_stream$mem_2$veq_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux_sel = lb_p4_clamped_stencil_update_stream$mem_2$raddr_eq_out;
  assign lb_p4_clamped_stencil_update_stream$mem_2$raddr_mux_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$zero_const_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$veq_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2_valid_term_in = lb_p4_clamped_stencil_update_stream$mem_2$veq_out;
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux_in0[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_in[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux_out[3:0];
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr$enMux_sel = lb_p4_clamped_stencil_update_stream_wen_out;
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0_clk = clk;
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux_sel = lb_p4_clamped_stencil_update_stream$mem_2$waddr_eq_out;
  assign lb_p4_clamped_stencil_update_stream$mem_2$waddr_mux_in1[3:0] = lb_p4_clamped_stencil_update_stream$mem_2$zero_const_out[3:0];
  assign mul_3507_351_in0[15:0] = in_0[15:0];

endmodule //DesignTop
