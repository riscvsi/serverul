//
// Generated by Bluespec Compiler, version 2022.01-36-ga6304315 (build a6304315)
//
// On Tue Oct  4 10:37:08 CEST 2022
//
//
// Ports:
// Name                         I/O  size props
// rx_stage1_operands_deq_ena     O     1
// rx_stage1_meta_deq_ena         O     1
// rx_stage1_control_deq_ena      O     1
// tx_stage3_common_enq_ena       O     1
// tx_stage3_common_enq_data      O    38
// tx_stage3_type_enq_ena         O     1
// tx_stage3_type_enq_data        O    51
// memory_request_get             O    70 reg
// RDY_memory_request_get         O     1 reg
// RDY_operand_fwding_put         O     1 const
// RDY_ma_update_wEpoch           O     1 const
// RDY_ma_csr_misa_c              O     1 const
// mv_redirection_fst             O    32
// RDY_mv_redirection_fst         O     1 const
// mv_redirection_snd             O     1
// RDY_mv_redirection_snd         O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// rx_stage1_operands_notEmpty_b  I     1 unused
// rx_stage1_operands_first_deq_rdy_b  I     1
// rx_stage1_operands_first_x     I    64
// rx_stage1_meta_notEmpty_b      I     1 unused
// rx_stage1_meta_first_deq_rdy_b  I     1
// rx_stage1_meta_first_x         I    62
// rx_stage1_control_notEmpty_b   I     1 unused
// rx_stage1_control_first_deq_rdy_b  I     1
// rx_stage1_control_first_x      I    34
// tx_stage3_common_notFull_b     I     1 unused
// tx_stage3_common_enq_rdy_b     I     1
// tx_stage3_type_notFull_b       I     1 unused
// tx_stage3_type_enq_rdy_b       I     1
// operand_fwding_put             I    38
// ma_csr_misa_c_c                I     1
// EN_operand_fwding_put          I     1
// EN_ma_update_wEpoch            I     1
// EN_ma_csr_misa_c               I     1
// EN_memory_request_get          I     1
//
// Combinational paths from inputs to outputs:
//   (rx_stage1_operands_first_deq_rdy_b,
//    rx_stage1_meta_first_deq_rdy_b,
//    rx_stage1_meta_first_x,
//    rx_stage1_control_first_deq_rdy_b,
//    rx_stage1_control_first_x,
//    tx_stage3_common_enq_rdy_b,
//    tx_stage3_type_enq_rdy_b,
//    operand_fwding_put,
//    EN_operand_fwding_put,
//    EN_ma_csr_misa_c,
//    EN_memory_request_get) -> rx_stage1_operands_deq_ena
//   (rx_stage1_operands_first_deq_rdy_b,
//    rx_stage1_meta_first_deq_rdy_b,
//    rx_stage1_meta_first_x,
//    rx_stage1_control_first_deq_rdy_b,
//    rx_stage1_control_first_x,
//    tx_stage3_common_enq_rdy_b,
//    tx_stage3_type_enq_rdy_b,
//    operand_fwding_put,
//    EN_operand_fwding_put,
//    EN_ma_csr_misa_c,
//    EN_memory_request_get) -> rx_stage1_meta_deq_ena
//   (rx_stage1_operands_first_deq_rdy_b,
//    rx_stage1_meta_first_deq_rdy_b,
//    rx_stage1_meta_first_x,
//    rx_stage1_control_first_deq_rdy_b,
//    rx_stage1_control_first_x,
//    tx_stage3_common_enq_rdy_b,
//    tx_stage3_type_enq_rdy_b,
//    operand_fwding_put,
//    EN_operand_fwding_put,
//    EN_ma_csr_misa_c,
//    EN_memory_request_get) -> rx_stage1_control_deq_ena
//   (rx_stage1_operands_first_deq_rdy_b,
//    rx_stage1_meta_first_deq_rdy_b,
//    rx_stage1_meta_first_x,
//    rx_stage1_control_first_deq_rdy_b,
//    rx_stage1_control_first_x,
//    tx_stage3_common_enq_rdy_b,
//    tx_stage3_type_enq_rdy_b,
//    operand_fwding_put,
//    EN_operand_fwding_put,
//    EN_ma_csr_misa_c,
//    EN_memory_request_get) -> tx_stage3_common_enq_ena
//   (rx_stage1_operands_first_deq_rdy_b,
//    rx_stage1_meta_first_deq_rdy_b,
//    rx_stage1_meta_first_x,
//    rx_stage1_control_first_deq_rdy_b,
//    rx_stage1_control_first_x,
//    tx_stage3_common_enq_rdy_b,
//    tx_stage3_type_enq_rdy_b,
//    operand_fwding_put,
//    EN_operand_fwding_put,
//    EN_ma_csr_misa_c,
//    EN_memory_request_get) -> tx_stage3_common_enq_data
//   (rx_stage1_operands_first_deq_rdy_b,
//    rx_stage1_meta_first_deq_rdy_b,
//    rx_stage1_meta_first_x,
//    rx_stage1_control_first_deq_rdy_b,
//    rx_stage1_control_first_x,
//    tx_stage3_common_enq_rdy_b,
//    tx_stage3_type_enq_rdy_b,
//    operand_fwding_put,
//    EN_operand_fwding_put,
//    EN_ma_csr_misa_c,
//    EN_memory_request_get) -> tx_stage3_type_enq_ena
//   (rx_stage1_operands_first_deq_rdy_b,
//    rx_stage1_operands_first_x,
//    rx_stage1_meta_first_deq_rdy_b,
//    rx_stage1_meta_first_x,
//    rx_stage1_control_first_deq_rdy_b,
//    rx_stage1_control_first_x,
//    tx_stage3_common_enq_rdy_b,
//    tx_stage3_type_enq_rdy_b,
//    operand_fwding_put,
//    ma_csr_misa_c_c,
//    EN_operand_fwding_put,
//    EN_ma_csr_misa_c,
//    EN_memory_request_get) -> tx_stage3_type_enq_data
//   (rx_stage1_operands_first_deq_rdy_b,
//    rx_stage1_operands_first_x,
//    rx_stage1_meta_first_deq_rdy_b,
//    rx_stage1_meta_first_x,
//    rx_stage1_control_first_deq_rdy_b,
//    rx_stage1_control_first_x,
//    tx_stage3_common_enq_rdy_b,
//    tx_stage3_type_enq_rdy_b,
//    operand_fwding_put,
//    ma_csr_misa_c_c,
//    EN_operand_fwding_put,
//    EN_ma_csr_misa_c,
//    EN_memory_request_get) -> mv_redirection_fst
//   (rx_stage1_operands_first_deq_rdy_b,
//    rx_stage1_operands_first_x,
//    rx_stage1_meta_first_deq_rdy_b,
//    rx_stage1_meta_first_x,
//    rx_stage1_control_first_deq_rdy_b,
//    rx_stage1_control_first_x,
//    tx_stage3_common_enq_rdy_b,
//    tx_stage3_type_enq_rdy_b,
//    operand_fwding_put,
//    ma_csr_misa_c_c,
//    EN_operand_fwding_put,
//    EN_ma_csr_misa_c,
//    EN_memory_request_get) -> mv_redirection_snd
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

module mkstage2(CLK,
		RST_N,

		rx_stage1_operands_notEmpty_b,

		rx_stage1_operands_first_deq_rdy_b,

		rx_stage1_operands_first_x,

		rx_stage1_operands_deq_ena,

		rx_stage1_meta_notEmpty_b,

		rx_stage1_meta_first_deq_rdy_b,

		rx_stage1_meta_first_x,

		rx_stage1_meta_deq_ena,

		rx_stage1_control_notEmpty_b,

		rx_stage1_control_first_deq_rdy_b,

		rx_stage1_control_first_x,

		rx_stage1_control_deq_ena,

		tx_stage3_common_notFull_b,

		tx_stage3_common_enq_rdy_b,

		tx_stage3_common_enq_ena,

		tx_stage3_common_enq_data,

		tx_stage3_type_notFull_b,

		tx_stage3_type_enq_rdy_b,

		tx_stage3_type_enq_ena,

		tx_stage3_type_enq_data,

		EN_memory_request_get,
		memory_request_get,
		RDY_memory_request_get,

		operand_fwding_put,
		EN_operand_fwding_put,
		RDY_operand_fwding_put,

		EN_ma_update_wEpoch,
		RDY_ma_update_wEpoch,

		ma_csr_misa_c_c,
		EN_ma_csr_misa_c,
		RDY_ma_csr_misa_c,

		mv_redirection_fst,
		RDY_mv_redirection_fst,

		mv_redirection_snd,
		RDY_mv_redirection_snd);
  input  CLK;
  input  RST_N;

  // action method rx_stage1_operands_notEmpty
  input  rx_stage1_operands_notEmpty_b;

  // action method rx_stage1_operands_first_deq_rdy
  input  rx_stage1_operands_first_deq_rdy_b;

  // action method rx_stage1_operands_first
  input  [63 : 0] rx_stage1_operands_first_x;

  // value method rx_stage1_operands_deq_ena
  output rx_stage1_operands_deq_ena;

  // action method rx_stage1_meta_notEmpty
  input  rx_stage1_meta_notEmpty_b;

  // action method rx_stage1_meta_first_deq_rdy
  input  rx_stage1_meta_first_deq_rdy_b;

  // action method rx_stage1_meta_first
  input  [61 : 0] rx_stage1_meta_first_x;

  // value method rx_stage1_meta_deq_ena
  output rx_stage1_meta_deq_ena;

  // action method rx_stage1_control_notEmpty
  input  rx_stage1_control_notEmpty_b;

  // action method rx_stage1_control_first_deq_rdy
  input  rx_stage1_control_first_deq_rdy_b;

  // action method rx_stage1_control_first
  input  [33 : 0] rx_stage1_control_first_x;

  // value method rx_stage1_control_deq_ena
  output rx_stage1_control_deq_ena;

  // action method tx_stage3_common_notFull
  input  tx_stage3_common_notFull_b;

  // action method tx_stage3_common_enq_rdy
  input  tx_stage3_common_enq_rdy_b;

  // value method tx_stage3_common_enq_ena
  output tx_stage3_common_enq_ena;

  // value method tx_stage3_common_enq_data
  output [37 : 0] tx_stage3_common_enq_data;

  // action method tx_stage3_type_notFull
  input  tx_stage3_type_notFull_b;

  // action method tx_stage3_type_enq_rdy
  input  tx_stage3_type_enq_rdy_b;

  // value method tx_stage3_type_enq_ena
  output tx_stage3_type_enq_ena;

  // value method tx_stage3_type_enq_data
  output [50 : 0] tx_stage3_type_enq_data;

  // actionvalue method memory_request_get
  input  EN_memory_request_get;
  output [69 : 0] memory_request_get;
  output RDY_memory_request_get;

  // action method operand_fwding_put
  input  [37 : 0] operand_fwding_put;
  input  EN_operand_fwding_put;
  output RDY_operand_fwding_put;

  // action method ma_update_wEpoch
  input  EN_ma_update_wEpoch;
  output RDY_ma_update_wEpoch;

  // action method ma_csr_misa_c
  input  ma_csr_misa_c_c;
  input  EN_ma_csr_misa_c;
  output RDY_ma_csr_misa_c;

  // value method mv_redirection_fst
  output [31 : 0] mv_redirection_fst;
  output RDY_mv_redirection_fst;

  // value method mv_redirection_snd
  output mv_redirection_snd;
  output RDY_mv_redirection_snd;

  // signals for module outputs
  wire [69 : 0] memory_request_get;
  wire [50 : 0] tx_stage3_type_enq_data;
  wire [37 : 0] tx_stage3_common_enq_data;
  wire [31 : 0] mv_redirection_fst;
  wire RDY_ma_csr_misa_c,
       RDY_ma_update_wEpoch,
       RDY_memory_request_get,
       RDY_mv_redirection_fst,
       RDY_mv_redirection_snd,
       RDY_operand_fwding_put,
       mv_redirection_snd,
       rx_stage1_control_deq_ena,
       rx_stage1_meta_deq_ena,
       rx_stage1_operands_deq_ena,
       tx_stage3_common_enq_ena,
       tx_stage3_type_enq_ena;

  // inlined wires
  wire [32 : 0] wr_redirection_wget;
  wire ff_stage1_operands_w_ena_whas, ff_stage3_common_w_ena_whas;

  // register rg_eEpoch
  reg rg_eEpoch;
  wire rg_eEpoch_D_IN, rg_eEpoch_EN;

  // register rg_wEpoch
  reg rg_wEpoch;
  wire rg_wEpoch_D_IN, rg_wEpoch_EN;

  // ports of submodule alu
  reg [31 : 0] alu_inputs_op3;
  wire [73 : 0] alu_inputs;
  wire [31 : 0] alu_inputs_imm_value, alu_inputs_op1, alu_inputs_op2;
  wire [3 : 0] alu_inputs_fn;
  wire [2 : 0] alu_inputs_funct3, alu_inputs_inst_type;
  wire [1 : 0] alu_inputs_lpc, alu_inputs_memaccess;
  wire alu_EN_inputs, alu_inputs_misa_c;

  // ports of submodule ff_memory_request
  wire [69 : 0] ff_memory_request_D_IN, ff_memory_request_D_OUT;
  wire ff_memory_request_CLR,
       ff_memory_request_DEQ,
       ff_memory_request_EMPTY_N,
       ff_memory_request_ENQ,
       ff_memory_request_FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_fetch_execute_pass,
       CAN_FIRE_ma_csr_misa_c,
       CAN_FIRE_ma_update_wEpoch,
       CAN_FIRE_memory_request_get,
       CAN_FIRE_operand_fwding_put,
       CAN_FIRE_rx_stage1_control_first,
       CAN_FIRE_rx_stage1_control_first_deq_rdy,
       CAN_FIRE_rx_stage1_control_notEmpty,
       CAN_FIRE_rx_stage1_meta_first,
       CAN_FIRE_rx_stage1_meta_first_deq_rdy,
       CAN_FIRE_rx_stage1_meta_notEmpty,
       CAN_FIRE_rx_stage1_operands_first,
       CAN_FIRE_rx_stage1_operands_first_deq_rdy,
       CAN_FIRE_rx_stage1_operands_notEmpty,
       CAN_FIRE_tx_stage3_common_enq_rdy,
       CAN_FIRE_tx_stage3_common_notFull,
       CAN_FIRE_tx_stage3_type_enq_rdy,
       CAN_FIRE_tx_stage3_type_notFull,
       WILL_FIRE_RL_fetch_execute_pass,
       WILL_FIRE_ma_csr_misa_c,
       WILL_FIRE_ma_update_wEpoch,
       WILL_FIRE_memory_request_get,
       WILL_FIRE_operand_fwding_put,
       WILL_FIRE_rx_stage1_control_first,
       WILL_FIRE_rx_stage1_control_first_deq_rdy,
       WILL_FIRE_rx_stage1_control_notEmpty,
       WILL_FIRE_rx_stage1_meta_first,
       WILL_FIRE_rx_stage1_meta_first_deq_rdy,
       WILL_FIRE_rx_stage1_meta_notEmpty,
       WILL_FIRE_rx_stage1_operands_first,
       WILL_FIRE_rx_stage1_operands_first_deq_rdy,
       WILL_FIRE_rx_stage1_operands_notEmpty,
       WILL_FIRE_tx_stage3_common_enq_rdy,
       WILL_FIRE_tx_stage3_common_notFull,
       WILL_FIRE_tx_stage3_type_enq_rdy,
       WILL_FIRE_tx_stage3_type_notFull;

  // remaining internal signals
  reg [48 : 0] IF_alu_inputs_5_BITS_72_TO_71_2_EQ_0_3_THEN_DO_ETC___d127;
  reg [31 : 0] _op2__h1794;
  reg [1 : 0] CASE_aluinputs_BITS_72_TO_71_0_aluinputs_BIT_ETC__q4;
  wire [31 : 0] op1__h1791,
		op2__h1792,
		rd__h2148,
		rx_stage1_control_first_x_BITS_31_TO_0__q3,
		rx_stage1_meta_first_x_BITS_38_TO_7__q2,
		s3system_rs1_imm__h3010;
  wire [6 : 0] rx_stage1_meta_first_x_BITS_6_TO_0__q1;
  wire [4 : 0] rdaddr__h2147;
  wire [1 : 0] curr_epoch__h1765;
  wire IF_ff_stage1_control_w_data_whas__1_THEN_ff_st_ETC___d81,
       IF_ff_stage1_meta_w_data_whas__4_THEN_ff_stage_ETC___d31,
       IF_ff_stage1_meta_w_data_whas__4_THEN_ff_stage_ETC___d49,
       NOT_IF_ff_stage1_meta_w_data_whas__4_THEN_ff_s_ETC___d75;

  // action method rx_stage1_operands_notEmpty
  assign CAN_FIRE_rx_stage1_operands_notEmpty = 1'd1 ;
  assign WILL_FIRE_rx_stage1_operands_notEmpty = 1'd1 ;

  // action method rx_stage1_operands_first_deq_rdy
  assign CAN_FIRE_rx_stage1_operands_first_deq_rdy = 1'd1 ;
  assign WILL_FIRE_rx_stage1_operands_first_deq_rdy = 1'd1 ;

  // action method rx_stage1_operands_first
  assign CAN_FIRE_rx_stage1_operands_first = 1'd1 ;
  assign WILL_FIRE_rx_stage1_operands_first = 1'd1 ;

  // value method rx_stage1_operands_deq_ena
  assign rx_stage1_operands_deq_ena = ff_stage1_operands_w_ena_whas ;

  // action method rx_stage1_meta_notEmpty
  assign CAN_FIRE_rx_stage1_meta_notEmpty = 1'd1 ;
  assign WILL_FIRE_rx_stage1_meta_notEmpty = 1'd1 ;

  // action method rx_stage1_meta_first_deq_rdy
  assign CAN_FIRE_rx_stage1_meta_first_deq_rdy = 1'd1 ;
  assign WILL_FIRE_rx_stage1_meta_first_deq_rdy = 1'd1 ;

  // action method rx_stage1_meta_first
  assign CAN_FIRE_rx_stage1_meta_first = 1'd1 ;
  assign WILL_FIRE_rx_stage1_meta_first = 1'd1 ;

  // value method rx_stage1_meta_deq_ena
  assign rx_stage1_meta_deq_ena = ff_stage1_operands_w_ena_whas ;

  // action method rx_stage1_control_notEmpty
  assign CAN_FIRE_rx_stage1_control_notEmpty = 1'd1 ;
  assign WILL_FIRE_rx_stage1_control_notEmpty = 1'd1 ;

  // action method rx_stage1_control_first_deq_rdy
  assign CAN_FIRE_rx_stage1_control_first_deq_rdy = 1'd1 ;
  assign WILL_FIRE_rx_stage1_control_first_deq_rdy = 1'd1 ;

  // action method rx_stage1_control_first
  assign CAN_FIRE_rx_stage1_control_first = 1'd1 ;
  assign WILL_FIRE_rx_stage1_control_first = 1'd1 ;

  // value method rx_stage1_control_deq_ena
  assign rx_stage1_control_deq_ena = ff_stage1_operands_w_ena_whas ;

  // action method tx_stage3_common_notFull
  assign CAN_FIRE_tx_stage3_common_notFull = 1'd1 ;
  assign WILL_FIRE_tx_stage3_common_notFull = 1'd1 ;

  // action method tx_stage3_common_enq_rdy
  assign CAN_FIRE_tx_stage3_common_enq_rdy = 1'd1 ;
  assign WILL_FIRE_tx_stage3_common_enq_rdy = 1'd1 ;

  // value method tx_stage3_common_enq_ena
  assign tx_stage3_common_enq_ena = ff_stage3_common_w_ena_whas ;

  // value method tx_stage3_common_enq_data
  assign tx_stage3_common_enq_data =
	     { rx_stage1_control_first_x[31:0],
	       rx_stage1_meta_first_x[51:47],
	       rg_wEpoch } ;

  // action method tx_stage3_type_notFull
  assign CAN_FIRE_tx_stage3_type_notFull = 1'd1 ;
  assign WILL_FIRE_tx_stage3_type_notFull = 1'd1 ;

  // action method tx_stage3_type_enq_rdy
  assign CAN_FIRE_tx_stage3_type_enq_rdy = 1'd1 ;
  assign WILL_FIRE_tx_stage3_type_enq_rdy = 1'd1 ;

  // value method tx_stage3_type_enq_ena
  assign tx_stage3_type_enq_ena = ff_stage3_common_w_ena_whas ;

  // value method tx_stage3_type_enq_data
  assign tx_stage3_type_enq_data =
	     { CASE_aluinputs_BITS_72_TO_71_0_aluinputs_BIT_ETC__q4,
	       IF_alu_inputs_5_BITS_72_TO_71_2_EQ_0_3_THEN_DO_ETC___d127 } ;

  // actionvalue method memory_request_get
  assign memory_request_get = ff_memory_request_D_OUT ;
  assign RDY_memory_request_get = ff_memory_request_EMPTY_N ;
  assign CAN_FIRE_memory_request_get = ff_memory_request_EMPTY_N ;
  assign WILL_FIRE_memory_request_get = EN_memory_request_get ;

  // action method operand_fwding_put
  assign RDY_operand_fwding_put = 1'd1 ;
  assign CAN_FIRE_operand_fwding_put = 1'd1 ;
  assign WILL_FIRE_operand_fwding_put = EN_operand_fwding_put ;

  // action method ma_update_wEpoch
  assign RDY_ma_update_wEpoch = 1'd1 ;
  assign CAN_FIRE_ma_update_wEpoch = 1'd1 ;
  assign WILL_FIRE_ma_update_wEpoch = EN_ma_update_wEpoch ;

  // action method ma_csr_misa_c
  assign RDY_ma_csr_misa_c = 1'd1 ;
  assign CAN_FIRE_ma_csr_misa_c = 1'd1 ;
  assign WILL_FIRE_ma_csr_misa_c = EN_ma_csr_misa_c ;

  // value method mv_redirection_fst
  assign mv_redirection_fst = wr_redirection_wget[32:1] ;
  assign RDY_mv_redirection_fst = 1'd1 ;

  // value method mv_redirection_snd
  assign mv_redirection_snd =
	     ff_stage3_common_w_ena_whas && wr_redirection_wget[0] ;
  assign RDY_mv_redirection_snd = 1'd1 ;

  // submodule alu
  mkalu alu(.CLK(CLK),
	    .RST_N(RST_N),
	    .inputs_fn(alu_inputs_fn),
	    .inputs_funct3(alu_inputs_funct3),
	    .inputs_imm_value(alu_inputs_imm_value),
	    .inputs_inst_type(alu_inputs_inst_type),
	    .inputs_lpc(alu_inputs_lpc),
	    .inputs_memaccess(alu_inputs_memaccess),
	    .inputs_misa_c(alu_inputs_misa_c),
	    .inputs_op1(alu_inputs_op1),
	    .inputs_op2(alu_inputs_op2),
	    .inputs_op3(alu_inputs_op3),
	    .EN_inputs(alu_EN_inputs),
	    .inputs(alu_inputs),
	    .RDY_inputs());

  // submodule ff_memory_request
  FIFOL1 #(.width(32'd70)) ff_memory_request(.RST(RST_N),
					     .CLK(CLK),
					     .D_IN(ff_memory_request_D_IN),
					     .ENQ(ff_memory_request_ENQ),
					     .DEQ(ff_memory_request_DEQ),
					     .CLR(ff_memory_request_CLR),
					     .D_OUT(ff_memory_request_D_OUT),
					     .FULL_N(ff_memory_request_FULL_N),
					     .EMPTY_N(ff_memory_request_EMPTY_N));

  // rule RL_fetch_execute_pass
  assign CAN_FIRE_RL_fetch_execute_pass =
	     rx_stage1_meta_first_deq_rdy_b &&
	     rx_stage1_control_first_deq_rdy_b &&
	     EN_ma_csr_misa_c &&
	     rx_stage1_operands_first_deq_rdy_b &&
	     tx_stage3_common_enq_rdy_b &&
	     tx_stage3_type_enq_rdy_b &&
	     ff_memory_request_FULL_N ;
  assign WILL_FIRE_RL_fetch_execute_pass = CAN_FIRE_RL_fetch_execute_pass ;

  // inlined wires
  assign ff_stage1_operands_w_ena_whas =
	     WILL_FIRE_RL_fetch_execute_pass &&
	     (NOT_IF_ff_stage1_meta_w_data_whas__4_THEN_ff_s_ETC___d75 ||
	      !IF_ff_stage1_control_w_data_whas__1_THEN_ff_st_ETC___d81) ;
  assign ff_stage3_common_w_ena_whas =
	     WILL_FIRE_RL_fetch_execute_pass &&
	     IF_ff_stage1_control_w_data_whas__1_THEN_ff_st_ETC___d81 &&
	     NOT_IF_ff_stage1_meta_w_data_whas__4_THEN_ff_s_ETC___d75 ;
  assign wr_redirection_wget = { alu_inputs[38:7], alu_inputs[0] } ;

  // register rg_eEpoch
  assign rg_eEpoch_D_IN = ~rg_eEpoch ;
  assign rg_eEpoch_EN =
	     WILL_FIRE_RL_fetch_execute_pass &&
	     IF_ff_stage1_control_w_data_whas__1_THEN_ff_st_ETC___d81 &&
	     NOT_IF_ff_stage1_meta_w_data_whas__4_THEN_ff_s_ETC___d75 &&
	     alu_inputs[0] ;

  // register rg_wEpoch
  assign rg_wEpoch_D_IN = ~rg_wEpoch ;
  assign rg_wEpoch_EN = EN_ma_update_wEpoch ;

  // submodule alu
  assign alu_inputs_fn = rx_stage1_meta_first_x_BITS_6_TO_0__q1[6:3] ;
  assign alu_inputs_funct3 = rx_stage1_meta_first_x_BITS_6_TO_0__q1[2:0] ;
  assign alu_inputs_imm_value = rx_stage1_meta_first_x[38:7] ;
  assign alu_inputs_inst_type = rx_stage1_meta_first_x[43:41] ;
  assign alu_inputs_lpc = rx_stage1_control_first_x_BITS_31_TO_0__q3[1:0] ;
  assign alu_inputs_memaccess = rx_stage1_meta_first_x[40:39] ;
  assign alu_inputs_misa_c = ma_csr_misa_c_c ;
  assign alu_inputs_op1 =
	     rx_stage1_meta_first_x[46] ?
	       rx_stage1_control_first_x[31:0] :
	       op1__h1791 ;
  assign alu_inputs_op2 = _op2__h1794 ;
  always@(rx_stage1_meta_first_x or rx_stage1_control_first_x or op1__h1791)
  begin
    case (rx_stage1_meta_first_x[43:41])
      3'd1, 3'd4: alu_inputs_op3 = op1__h1791;
      default: alu_inputs_op3 = rx_stage1_control_first_x[31:0];
    endcase
  end
  assign alu_EN_inputs = CAN_FIRE_RL_fetch_execute_pass ;

  // submodule ff_memory_request
  assign ff_memory_request_D_IN =
	     { alu_inputs[38:7],
	       _op2__h1794,
	       rx_stage1_meta_first_x[40:39],
	       rx_stage1_meta_first_x_BITS_6_TO_0__q1[2:0],
	       rg_wEpoch } ;
  assign ff_memory_request_ENQ =
	     WILL_FIRE_RL_fetch_execute_pass &&
	     IF_ff_stage1_control_w_data_whas__1_THEN_ff_st_ETC___d81 &&
	     NOT_IF_ff_stage1_meta_w_data_whas__4_THEN_ff_s_ETC___d75 &&
	     alu_inputs[72:71] == 2'd0 &&
	     rx_stage1_meta_first_x[40:39] != 2'd3 ;
  assign ff_memory_request_DEQ = EN_memory_request_get ;
  assign ff_memory_request_CLR = EN_ma_update_wEpoch ;

  // remaining internal signals
  assign IF_ff_stage1_control_w_data_whas__1_THEN_ff_st_ETC___d81 =
	     rx_stage1_control_first_x[33:32] == curr_epoch__h1765 ;
  assign IF_ff_stage1_meta_w_data_whas__4_THEN_ff_stage_ETC___d31 =
	     rx_stage1_meta_first_x[61:57] == rdaddr__h2147 ;
  assign IF_ff_stage1_meta_w_data_whas__4_THEN_ff_stage_ETC___d49 =
	     rx_stage1_meta_first_x[56:52] == rdaddr__h2147 ;
  assign NOT_IF_ff_stage1_meta_w_data_whas__4_THEN_ff_s_ETC___d75 =
	     !IF_ff_stage1_meta_w_data_whas__4_THEN_ff_stage_ETC___d31 &&
	     !IF_ff_stage1_meta_w_data_whas__4_THEN_ff_stage_ETC___d49 ||
	     EN_operand_fwding_put && operand_fwding_put[0] ||
	     rdaddr__h2147 == 5'd0 ;
  assign curr_epoch__h1765 = { rg_eEpoch, rg_wEpoch } ;
  assign op1__h1791 =
	     IF_ff_stage1_meta_w_data_whas__4_THEN_ff_stage_ETC___d31 ?
	       rd__h2148 :
	       rx_stage1_operands_first_x[63:32] ;
  assign op2__h1792 =
	     IF_ff_stage1_meta_w_data_whas__4_THEN_ff_stage_ETC___d49 ?
	       rd__h2148 :
	       rx_stage1_operands_first_x[31:0] ;
  assign rd__h2148 =
	     EN_operand_fwding_put ? operand_fwding_put[32:1] : 32'd0 ;
  assign rdaddr__h2147 =
	     EN_operand_fwding_put ? operand_fwding_put[37:33] : 5'd0 ;
  assign rx_stage1_control_first_x_BITS_31_TO_0__q3 =
	     rx_stage1_control_first_x[31:0] ;
  assign rx_stage1_meta_first_x_BITS_38_TO_7__q2 =
	     rx_stage1_meta_first_x[38:7] ;
  assign rx_stage1_meta_first_x_BITS_6_TO_0__q1 =
	     rx_stage1_meta_first_x[6:0] ;
  assign s3system_rs1_imm__h3010 =
	     rx_stage1_meta_first_x_BITS_6_TO_0__q1[2] ?
	       { 27'd0, rx_stage1_meta_first_x_BITS_38_TO_7__q2[16:12] } :
	       alu_inputs[70:39] ;
  always@(rx_stage1_meta_first_x or op2__h1792)
  begin
    case (rx_stage1_meta_first_x[45:44])
      2'd0: _op2__h1794 = op2__h1792;
      2'd1: _op2__h1794 = rx_stage1_meta_first_x[38:7];
      2'd2: _op2__h1794 = 32'd4;
      2'd3: _op2__h1794 = 32'd2;
    endcase
  end
  always@(alu_inputs or
	  s3system_rs1_imm__h3010 or
	  rx_stage1_control_first_x_BITS_31_TO_0__q3 or
	  rx_stage1_meta_first_x_BITS_38_TO_7__q2 or
	  rx_stage1_meta_first_x_BITS_6_TO_0__q1 or rx_stage1_meta_first_x)
  begin
    case (alu_inputs[72:71])
      2'd0:
	  IF_alu_inputs_5_BITS_72_TO_71_2_EQ_0_3_THEN_DO_ETC___d127 =
	      { 26'bxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */ ,
		rx_stage1_meta_first_x[61:39] };
      2'd1:
	  IF_alu_inputs_5_BITS_72_TO_71_2_EQ_0_3_THEN_DO_ETC___d127 =
	      { s3system_rs1_imm__h3010,
		rx_stage1_control_first_x_BITS_31_TO_0__q3[1:0],
		rx_stage1_meta_first_x_BITS_38_TO_7__q2[11:0],
		rx_stage1_meta_first_x_BITS_6_TO_0__q1[2:0] };
      2'd2:
	  IF_alu_inputs_5_BITS_72_TO_71_2_EQ_0_3_THEN_DO_ETC___d127 =
	      { 14'bxxxxxxxxxxxxxx /* unspecified value */ ,
		alu_inputs[73:39] };
      2'd3:
	  IF_alu_inputs_5_BITS_72_TO_71_2_EQ_0_3_THEN_DO_ETC___d127 =
	      { 11'bxxxxxxxxxxx /* unspecified value */ ,
		alu_inputs[6:1],
		alu_inputs[38:7] };
    endcase
  end
  always@(alu_inputs)
  begin
    case (alu_inputs[72:71])
      2'd0, 2'd2:
	  CASE_aluinputs_BITS_72_TO_71_0_aluinputs_BIT_ETC__q4 =
	      alu_inputs[72:71];
      2'd1: CASE_aluinputs_BITS_72_TO_71_0_aluinputs_BIT_ETC__q4 = 2'd3;
      2'd3: CASE_aluinputs_BITS_72_TO_71_0_aluinputs_BIT_ETC__q4 = 2'd1;
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        rg_eEpoch <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_wEpoch <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (rg_eEpoch_EN) rg_eEpoch <= `BSV_ASSIGNMENT_DELAY rg_eEpoch_D_IN;
	if (rg_wEpoch_EN) rg_wEpoch <= `BSV_ASSIGNMENT_DELAY rg_wEpoch_D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    rg_eEpoch = 1'h0;
    rg_wEpoch = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkstage2

