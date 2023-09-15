//
// Generated by Bluespec Compiler, version 2022.01-36-ga6304315 (build a6304315)
//
// On Tue Oct  4 10:37:07 CEST 2022
//
//
// Ports:
// Name                         I/O  size props
// fn_alu                         O    74
// fn_alu_fn                      I     4
// fn_alu_op1                     I    32
// fn_alu_op2                     I    32
// fn_alu_op3                     I    32
// fn_alu_imm_value               I    32
// fn_alu_inst_type               I     3
// fn_alu_funct3                  I     3
// fn_alu_memaccess               I     2
// fn_alu_misa_c                  I     1
// fn_alu_lpc                     I     2 unused
//
// Combinational paths from inputs to outputs:
//   (fn_alu_fn,
//    fn_alu_op1,
//    fn_alu_op2,
//    fn_alu_op3,
//    fn_alu_imm_value,
//    fn_alu_inst_type,
//    fn_alu_funct3,
//    fn_alu_memaccess,
//    fn_alu_misa_c) -> fn_alu
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module module_fn_alu(fn_alu_fn,
		     fn_alu_op1,
		     fn_alu_op2,
		     fn_alu_op3,
		     fn_alu_imm_value,
		     fn_alu_inst_type,
		     fn_alu_funct3,
		     fn_alu_memaccess,
		     fn_alu_misa_c,
		     fn_alu_lpc,
		     fn_alu);
  // value method fn_alu
  input  [3 : 0] fn_alu_fn;
  input  [31 : 0] fn_alu_op1;
  input  [31 : 0] fn_alu_op2;
  input  [31 : 0] fn_alu_op3;
  input  [31 : 0] fn_alu_imm_value;
  input  [2 : 0] fn_alu_inst_type;
  input  [2 : 0] fn_alu_funct3;
  input  [1 : 0] fn_alu_memaccess;
  input  fn_alu_misa_c;
  input  [1 : 0] fn_alu_lpc;
  output [73 : 0] fn_alu;

  // signals for module outputs
  wire [73 : 0] fn_alu;

  // remaining internal signals
  reg [31 : 0] shin__h44, x__h458;
  reg [1 : 0] CASE_fn_alu_inst_type_1_0_5_1_2__q3;
  reg CASE_fn_alu_fn_2_adder_z_flag6_3_NOT_op1_xor_o_ETC__q1;
  wire [32 : 0] fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145,
		fn_alu_fn_BIT_3_AND_shin4_BIT_31_CONCAT_shin4__q2,
		inv_op2__h33,
		x__h478;
  wire [31 : 0] IF_fn_alu_inst_type_EQ_4_1_THEN_fn_alu_op3_PLU_ETC___d14,
		effective_address__h49,
		op1_xor_op2__h34,
		result__h154,
		shift_l__h47;
  wire [6 : 0] IF_NOT_fn_alu_memaccess_EQ_3_AND_fn_alu_inst_t_ETC___d215;
  wire [5 : 0] cause___1__h251, cause__h51, cause__h57;
  wire INV_fn_alu_fn_BIT_1_3_4_AND_fn_alu_op1_BIT_31__ETC___d41,
       NOT_fn_alu_memaccess_EQ_3_AND_fn_alu_inst_type_ETC___d20,
       adder_z_flag__h36,
       fn_alu_inst_type_EQ_2_3_AND_IF_fn_alu_fn_EQ_2__ETC___d46,
       fn_alu_inst_type_EQ_4_1_OR_fn_alu_inst_type_EQ_ETC___d51,
       sign__h37;

  // value method fn_alu
  assign fn_alu =
	     { 1'd1,
	       (NOT_fn_alu_memaccess_EQ_3_AND_fn_alu_inst_type_ETC___d20 ||
		fn_alu_inst_type_EQ_4_1_OR_fn_alu_inst_type_EQ_ETC___d51 ||
		fn_alu_inst_type == 3'd6) ?
		 2'd3 :
		 CASE_fn_alu_inst_type_1_0_5_1_2__q3,
	       x__h458,
	       IF_fn_alu_inst_type_EQ_4_1_THEN_fn_alu_op3_PLU_ETC___d14,
	       IF_NOT_fn_alu_memaccess_EQ_3_AND_fn_alu_inst_t_ETC___d215 } ;

  // remaining internal signals
  assign IF_NOT_fn_alu_memaccess_EQ_3_AND_fn_alu_inst_t_ETC___d215 =
	     { NOT_fn_alu_memaccess_EQ_3_AND_fn_alu_inst_type_ETC___d20 ?
		 cause___1__h251 :
		 cause__h57,
	       fn_alu_inst_type_EQ_2_3_AND_IF_fn_alu_fn_EQ_2__ETC___d46 ||
	       fn_alu_inst_type == 3'd4 ||
	       fn_alu_inst_type == 3'd3 } ;
  assign IF_fn_alu_inst_type_EQ_4_1_THEN_fn_alu_op3_PLU_ETC___d14 =
	     (fn_alu_inst_type == 3'd4) ?
	       result__h154 :
	       effective_address__h49 ;
  assign INV_fn_alu_fn_BIT_1_3_4_AND_fn_alu_op1_BIT_31__ETC___d41 =
	     ({ sign__h37 & fn_alu_op1[31], fn_alu_op1 } ^ 33'h100000000) <
	     ({ sign__h37 & fn_alu_op2[31], fn_alu_op2 } ^ 33'h100000000) ;
  assign NOT_fn_alu_memaccess_EQ_3_AND_fn_alu_inst_type_ETC___d20 =
	     fn_alu_memaccess != 2'd3 && fn_alu_inst_type == 3'd1 &&
	     (fn_alu_funct3[1:0] == 2'd1 && effective_address__h49[0] ||
	      fn_alu_funct3[1:0] == 2'd2 &&
	      IF_fn_alu_inst_type_EQ_4_1_THEN_fn_alu_op3_PLU_ETC___d14[1:0] !=
	      2'd0) ;
  assign adder_z_flag__h36 = ~(op1_xor_op2__h34 != 32'd0) ;
  assign cause___1__h251 = (fn_alu_memaccess == 2'd0) ? cause__h57 : 6'd6 ;
  assign cause__h51 =
	     (fn_alu_inst_type == 3'd6) ?
	       { fn_alu_fn[2:0], fn_alu_funct3 } :
	       6'd4 ;
  assign cause__h57 =
	     fn_alu_inst_type_EQ_4_1_OR_fn_alu_inst_type_EQ_ETC___d51 ?
	       6'd0 :
	       cause__h51 ;
  assign effective_address__h49 = fn_alu_op3 + fn_alu_imm_value ;
  assign fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145 =
	     { fn_alu_fn[3] & shin__h44[31], shin__h44 } >> fn_alu_op2[4:0] |
	     ~(33'h1FFFFFFFF >> fn_alu_op2[4:0]) &
	     {33{fn_alu_fn_BIT_3_AND_shin4_BIT_31_CONCAT_shin4__q2[32]}} ;
  assign fn_alu_fn_BIT_3_AND_shin4_BIT_31_CONCAT_shin4__q2 =
	     { fn_alu_fn[3] & shin__h44[31], shin__h44 } ;
  assign fn_alu_inst_type_EQ_2_3_AND_IF_fn_alu_fn_EQ_2__ETC___d46 =
	     fn_alu_inst_type == 3'd2 &&
	     CASE_fn_alu_fn_2_adder_z_flag6_3_NOT_op1_xor_o_ETC__q1 ;
  assign fn_alu_inst_type_EQ_4_1_OR_fn_alu_inst_type_EQ_ETC___d51 =
	     (fn_alu_inst_type == 3'd4 || fn_alu_inst_type == 3'd3 ||
	      fn_alu_inst_type_EQ_2_3_AND_IF_fn_alu_fn_EQ_2__ETC___d46) &&
	     IF_fn_alu_inst_type_EQ_4_1_THEN_fn_alu_op3_PLU_ETC___d14[1] &&
	     !fn_alu_misa_c ;
  assign inv_op2__h33 = { fn_alu_op2 ^ {32{fn_alu_fn[1]}}, fn_alu_fn[1] } ;
  assign op1_xor_op2__h34 = fn_alu_op1 ^ fn_alu_op2 ;
  assign result__h154 = { effective_address__h49[31:1], 1'd0 } ;
  assign shift_l__h47 =
	     { fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[0],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[1],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[2],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[3],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[4],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[5],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[6],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[7],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[8],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[9],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[10],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[11],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[12],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[13],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[14],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[15],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[16],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[17],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[18],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[19],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[20],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[21],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[22],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[23],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[24],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[25],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[26],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[27],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[28],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[29],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[30],
	       fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[31] } ;
  assign sign__h37 = ~fn_alu_fn[1] ;
  assign x__h478 = { fn_alu_op1, 1'b1 } + inv_op2__h33 ;
  always@(fn_alu_fn or fn_alu_op1)
  begin
    case (fn_alu_fn)
      4'd5, 4'd11: shin__h44 = fn_alu_op1;
      default: shin__h44 =
		   { fn_alu_op1[0],
		     fn_alu_op1[1],
		     fn_alu_op1[2],
		     fn_alu_op1[3],
		     fn_alu_op1[4],
		     fn_alu_op1[5],
		     fn_alu_op1[6],
		     fn_alu_op1[7],
		     fn_alu_op1[8],
		     fn_alu_op1[9],
		     fn_alu_op1[10],
		     fn_alu_op1[11],
		     fn_alu_op1[12],
		     fn_alu_op1[13],
		     fn_alu_op1[14],
		     fn_alu_op1[15],
		     fn_alu_op1[16],
		     fn_alu_op1[17],
		     fn_alu_op1[18],
		     fn_alu_op1[19],
		     fn_alu_op1[20],
		     fn_alu_op1[21],
		     fn_alu_op1[22],
		     fn_alu_op1[23],
		     fn_alu_op1[24],
		     fn_alu_op1[25],
		     fn_alu_op1[26],
		     fn_alu_op1[27],
		     fn_alu_op1[28],
		     fn_alu_op1[29],
		     fn_alu_op1[30],
		     fn_alu_op1[31] };
    endcase
  end
  always@(fn_alu_fn or
	  INV_fn_alu_fn_BIT_1_3_4_AND_fn_alu_op1_BIT_31__ETC___d41 or
	  adder_z_flag__h36 or op1_xor_op2__h34)
  begin
    case (fn_alu_fn)
      4'd2:
	  CASE_fn_alu_fn_2_adder_z_flag6_3_NOT_op1_xor_o_ETC__q1 =
	      adder_z_flag__h36;
      4'd3:
	  CASE_fn_alu_fn_2_adder_z_flag6_3_NOT_op1_xor_o_ETC__q1 =
	      op1_xor_op2__h34 != 32'd0;
      4'd12, 4'd14:
	  CASE_fn_alu_fn_2_adder_z_flag6_3_NOT_op1_xor_o_ETC__q1 =
	      INV_fn_alu_fn_BIT_1_3_4_AND_fn_alu_op1_BIT_31__ETC___d41;
      default: CASE_fn_alu_fn_2_adder_z_flag6_3_NOT_op1_xor_o_ETC__q1 =
		   !INV_fn_alu_fn_BIT_1_3_4_AND_fn_alu_op1_BIT_31__ETC___d41;
    endcase
  end
  always@(fn_alu_fn or
	  op1_xor_op2__h34 or
	  x__h478 or
	  shift_l__h47 or
	  fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145 or
	  fn_alu_op1 or
	  fn_alu_op2 or
	  INV_fn_alu_fn_BIT_1_3_4_AND_fn_alu_op1_BIT_31__ETC___d41)
  begin
    case (fn_alu_fn)
      4'd0, 4'd10: x__h458 = x__h478[32:1];
      4'd1: x__h458 = shift_l__h47;
      4'd5, 4'd11:
	  x__h458 =
	      fn_alu_fn_BIT_3_2_AND_IF_fn_alu_fn_EQ_5_9_OR_f_ETC___d145[31:0];
      4'd6: x__h458 = fn_alu_op1 | fn_alu_op2;
      4'd7: x__h458 = fn_alu_op1 & fn_alu_op2;
      4'd12, 4'd13, 4'd14, 4'd15:
	  x__h458 =
	      { 31'd0,
		INV_fn_alu_fn_BIT_1_3_4_AND_fn_alu_op1_BIT_31__ETC___d41 };
      default: x__h458 = op1_xor_op2__h34;
    endcase
  end
  always@(fn_alu_inst_type)
  begin
    case (fn_alu_inst_type)
      3'd1: CASE_fn_alu_inst_type_1_0_5_1_2__q3 = 2'd0;
      3'd5: CASE_fn_alu_inst_type_1_0_5_1_2__q3 = 2'd1;
      default: CASE_fn_alu_inst_type_1_0_5_1_2__q3 = 2'd2;
    endcase
  end
endmodule  // module_fn_alu
