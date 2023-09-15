//
// Generated by Bluespec Compiler, version 2022.01-36-ga6304315 (build a6304315)
//
// On Tue Oct  4 10:37:12 CEST 2022
//
//
// Ports:
// Name                         I/O  size props
// rx_stage3_common_deq_ena       O     1
// rx_stage3_type_deq_ena         O     1
// RDY_memory_response_put        O     1 const
// commit_rd_get                  O    37
// RDY_commit_rd_get              O     1
// operand_fwding_get             O    38
// RDY_operand_fwding_get         O     1 const
// flush_fst                      O    32
// RDY_flush_fst                  O     1 const
// flush_snd                      O     1
// RDY_flush_snd                  O     1 const
// mv_csr_decode                  O   118
// RDY_mv_csr_decode              O     1 const
// mv_csr_misa_c                  O     1 const
// RDY_mv_csr_misa_c              O     1 const
// RDY_clint_msip                 O     1 const
// RDY_clint_mtip                 O     1 const
// RDY_clint_mtime                O     1 const
// RDY_ext_interrupt              O     1 const
// csr_updated                    O     1 const
// RDY_csr_updated                O     1 const
// mv_interrupt                   O     1
// mav_debug_access_csrs          O    32
// RDY_mav_debug_access_csrs      O     1 const
// RDY_ma_debug_halt_request      O     1 const
// RDY_ma_debug_resume_request    O     1 const
// mv_core_is_halted              O     1 reg
// RDY_mv_core_is_halted          O     1 const
// mv_step_is_set                 O     1 reg
// RDY_mv_step_is_set             O     1 const
// mv_step_ie                     O     1 reg
// RDY_mv_step_ie                 O     1 const
// mv_core_debugenable            O     1 reg
// RDY_mv_core_debugenable        O     1 const
// mv_curr_priv                   O     2 reg
// RDY_mv_curr_priv               O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// rx_stage3_common_notEmpty_b    I     1 unused
// rx_stage3_common_first_deq_rdy_b  I     1
// rx_stage3_common_first_x       I    38
// rx_stage3_type_notEmpty_b      I     1 unused
// rx_stage3_type_first_deq_rdy_b  I     1
// rx_stage3_type_first_x         I    51
// memory_response_put            I    34
// clint_msip_intrpt              I     1 reg
// clint_mtip_intrpt              I     1 reg
// clint_mtime_c_mtime            I    64 reg
// ext_interrupt_i                I     1 reg
// mav_debug_access_csrs_cmd      I    47
// ma_debug_halt_request_ip       I     1 reg
// ma_debug_resume_request_ip     I     1 reg
// EN_memory_response_put         I     1
// EN_clint_msip                  I     1
// EN_clint_mtip                  I     1
// EN_clint_mtime                 I     1
// EN_ext_interrupt               I     1
// EN_ma_debug_halt_request       I     1
// EN_ma_debug_resume_request     I     1
// EN_commit_rd_get               I     1 unused
// EN_operand_fwding_get          I     1 unused
// EN_mav_debug_access_csrs       I     1
//
// Combinational paths from inputs to outputs:
//   (rx_stage3_common_first_deq_rdy_b,
//    rx_stage3_common_first_x,
//    rx_stage3_type_first_deq_rdy_b,
//    rx_stage3_type_first_x) -> rx_stage3_common_deq_ena
//   (rx_stage3_common_first_deq_rdy_b,
//    rx_stage3_common_first_x,
//    rx_stage3_type_first_deq_rdy_b,
//    rx_stage3_type_first_x) -> rx_stage3_type_deq_ena
//   (rx_stage3_common_first_deq_rdy_b,
//    rx_stage3_common_first_x,
//    rx_stage3_type_first_deq_rdy_b,
//    rx_stage3_type_first_x,
//    mav_debug_access_csrs_cmd,
//    EN_mav_debug_access_csrs) -> RDY_commit_rd_get
//   (rx_stage3_common_first_deq_rdy_b,
//    rx_stage3_common_first_x,
//    rx_stage3_type_first_deq_rdy_b,
//    rx_stage3_type_first_x,
//    mav_debug_access_csrs_cmd,
//    EN_mav_debug_access_csrs) -> flush_fst
//   (rx_stage3_common_first_deq_rdy_b,
//    rx_stage3_common_first_x,
//    rx_stage3_type_first_deq_rdy_b,
//    rx_stage3_type_first_x,
//    mav_debug_access_csrs_cmd,
//    EN_mav_debug_access_csrs) -> flush_snd
//   (rx_stage3_common_first_deq_rdy_b,
//    rx_stage3_common_first_x,
//    rx_stage3_type_first_deq_rdy_b,
//    rx_stage3_type_first_x,
//    mav_debug_access_csrs_cmd,
//    EN_mav_debug_access_csrs) -> commit_rd_get
//   (rx_stage3_common_first_deq_rdy_b,
//    rx_stage3_common_first_x,
//    rx_stage3_type_first_deq_rdy_b,
//    rx_stage3_type_first_x) -> operand_fwding_get
//   (rx_stage3_common_first_deq_rdy_b,
//    rx_stage3_common_first_x,
//    rx_stage3_type_first_deq_rdy_b,
//    rx_stage3_type_first_x,
//    mav_debug_access_csrs_cmd,
//    EN_mav_debug_access_csrs) -> mav_debug_access_csrs
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

module mkstage3(CLK,
		RST_N,

		rx_stage3_common_notEmpty_b,

		rx_stage3_common_first_deq_rdy_b,

		rx_stage3_common_first_x,

		rx_stage3_common_deq_ena,

		rx_stage3_type_notEmpty_b,

		rx_stage3_type_first_deq_rdy_b,

		rx_stage3_type_first_x,

		rx_stage3_type_deq_ena,

		memory_response_put,
		EN_memory_response_put,
		RDY_memory_response_put,

		EN_commit_rd_get,
		commit_rd_get,
		RDY_commit_rd_get,

		EN_operand_fwding_get,
		operand_fwding_get,
		RDY_operand_fwding_get,

		flush_fst,
		RDY_flush_fst,

		flush_snd,
		RDY_flush_snd,

		mv_csr_decode,
		RDY_mv_csr_decode,

		mv_csr_misa_c,
		RDY_mv_csr_misa_c,

		clint_msip_intrpt,
		EN_clint_msip,
		RDY_clint_msip,

		clint_mtip_intrpt,
		EN_clint_mtip,
		RDY_clint_mtip,

		clint_mtime_c_mtime,
		EN_clint_mtime,
		RDY_clint_mtime,

		ext_interrupt_i,
		EN_ext_interrupt,
		RDY_ext_interrupt,

		csr_updated,
		RDY_csr_updated,

		mv_interrupt,

		mav_debug_access_csrs_cmd,
		EN_mav_debug_access_csrs,
		mav_debug_access_csrs,
		RDY_mav_debug_access_csrs,

		ma_debug_halt_request_ip,
		EN_ma_debug_halt_request,
		RDY_ma_debug_halt_request,

		ma_debug_resume_request_ip,
		EN_ma_debug_resume_request,
		RDY_ma_debug_resume_request,

		mv_core_is_halted,
		RDY_mv_core_is_halted,

		mv_step_is_set,
		RDY_mv_step_is_set,

		mv_step_ie,
		RDY_mv_step_ie,

		mv_core_debugenable,
		RDY_mv_core_debugenable,

		mv_curr_priv,
		RDY_mv_curr_priv);
  input  CLK;
  input  RST_N;

  // action method rx_stage3_common_notEmpty
  input  rx_stage3_common_notEmpty_b;

  // action method rx_stage3_common_first_deq_rdy
  input  rx_stage3_common_first_deq_rdy_b;

  // action method rx_stage3_common_first
  input  [37 : 0] rx_stage3_common_first_x;

  // value method rx_stage3_common_deq_ena
  output rx_stage3_common_deq_ena;

  // action method rx_stage3_type_notEmpty
  input  rx_stage3_type_notEmpty_b;

  // action method rx_stage3_type_first_deq_rdy
  input  rx_stage3_type_first_deq_rdy_b;

  // action method rx_stage3_type_first
  input  [50 : 0] rx_stage3_type_first_x;

  // value method rx_stage3_type_deq_ena
  output rx_stage3_type_deq_ena;

  // action method memory_response_put
  input  [33 : 0] memory_response_put;
  input  EN_memory_response_put;
  output RDY_memory_response_put;

  // actionvalue method commit_rd_get
  input  EN_commit_rd_get;
  output [36 : 0] commit_rd_get;
  output RDY_commit_rd_get;

  // actionvalue method operand_fwding_get
  input  EN_operand_fwding_get;
  output [37 : 0] operand_fwding_get;
  output RDY_operand_fwding_get;

  // value method flush_fst
  output [31 : 0] flush_fst;
  output RDY_flush_fst;

  // value method flush_snd
  output flush_snd;
  output RDY_flush_snd;

  // value method mv_csr_decode
  output [117 : 0] mv_csr_decode;
  output RDY_mv_csr_decode;

  // value method mv_csr_misa_c
  output mv_csr_misa_c;
  output RDY_mv_csr_misa_c;

  // action method clint_msip
  input  clint_msip_intrpt;
  input  EN_clint_msip;
  output RDY_clint_msip;

  // action method clint_mtip
  input  clint_mtip_intrpt;
  input  EN_clint_mtip;
  output RDY_clint_mtip;

  // action method clint_mtime
  input  [63 : 0] clint_mtime_c_mtime;
  input  EN_clint_mtime;
  output RDY_clint_mtime;

  // action method ext_interrupt
  input  ext_interrupt_i;
  input  EN_ext_interrupt;
  output RDY_ext_interrupt;

  // value method csr_updated
  output csr_updated;
  output RDY_csr_updated;

  // value method mv_interrupt
  output mv_interrupt;

  // actionvalue method mav_debug_access_csrs
  input  [46 : 0] mav_debug_access_csrs_cmd;
  input  EN_mav_debug_access_csrs;
  output [31 : 0] mav_debug_access_csrs;
  output RDY_mav_debug_access_csrs;

  // action method ma_debug_halt_request
  input  ma_debug_halt_request_ip;
  input  EN_ma_debug_halt_request;
  output RDY_ma_debug_halt_request;

  // action method ma_debug_resume_request
  input  ma_debug_resume_request_ip;
  input  EN_ma_debug_resume_request;
  output RDY_ma_debug_resume_request;

  // value method mv_core_is_halted
  output mv_core_is_halted;
  output RDY_mv_core_is_halted;

  // value method mv_step_is_set
  output mv_step_is_set;
  output RDY_mv_step_is_set;

  // value method mv_step_ie
  output mv_step_ie;
  output RDY_mv_step_ie;

  // value method mv_core_debugenable
  output mv_core_debugenable;
  output RDY_mv_core_debugenable;

  // value method mv_curr_priv
  output [1 : 0] mv_curr_priv;
  output RDY_mv_curr_priv;

  // signals for module outputs
  wire [117 : 0] mv_csr_decode;
  wire [37 : 0] operand_fwding_get;
  wire [36 : 0] commit_rd_get;
  wire [31 : 0] flush_fst, mav_debug_access_csrs;
  wire [1 : 0] mv_curr_priv;
  wire RDY_clint_msip,
       RDY_clint_mtime,
       RDY_clint_mtip,
       RDY_commit_rd_get,
       RDY_csr_updated,
       RDY_ext_interrupt,
       RDY_flush_fst,
       RDY_flush_snd,
       RDY_ma_debug_halt_request,
       RDY_ma_debug_resume_request,
       RDY_mav_debug_access_csrs,
       RDY_memory_response_put,
       RDY_mv_core_debugenable,
       RDY_mv_core_is_halted,
       RDY_mv_csr_decode,
       RDY_mv_csr_misa_c,
       RDY_mv_curr_priv,
       RDY_mv_step_ie,
       RDY_mv_step_is_set,
       RDY_operand_fwding_get,
       csr_updated,
       flush_snd,
       mv_core_debugenable,
       mv_core_is_halted,
       mv_csr_misa_c,
       mv_interrupt,
       mv_step_ie,
       mv_step_is_set,
       rx_stage3_common_deq_ena,
       rx_stage3_type_deq_ena;

  // inlined wires
  wire [37 : 0] wr_commit_wget, wr_operand_fwding_wget;
  wire [34 : 0] wr_memory_response_1_wget;
  wire [32 : 0] wr_flush_wget;
  wire ff_stage3_common_w_ena_whas,
       ff_stage3_type_w_ena_whas,
       wr_commit_whas,
       wr_flush_whas,
       wr_operand_fwding_whas;

  // register rg_epoch
  reg rg_epoch;
  wire rg_epoch_D_IN, rg_epoch_EN;

  // register rg_rerun
  reg rg_rerun;
  wire rg_rerun_D_IN, rg_rerun_EN;

  // register wr_memory_response
  reg [34 : 0] wr_memory_response;
  wire [34 : 0] wr_memory_response_D_IN;
  wire wr_memory_response_EN;

  // ports of submodule csr
  wire [117 : 0] csr_mv_csr_decode;
  wire [64 : 0] csr_system_instruction;
  wire [63 : 0] csr_clint_mtime_c_mtime;
  wire [46 : 0] csr_mav_debug_access_csrs_cmd;
  wire [31 : 0] csr_mav_debug_access_csrs,
		csr_system_instruction_op1,
		csr_take_trap,
		csr_take_trap_badaddr,
		csr_take_trap_pc;
  wire [11 : 0] csr_system_instruction_csr_address;
  wire [5 : 0] csr_take_trap_type_cause;
  wire [2 : 0] csr_system_instruction_funct3;
  wire [1 : 0] csr_mv_curr_priv, csr_system_instruction_lpc;
  wire csr_EN_clint_msip,
       csr_EN_clint_mtime,
       csr_EN_clint_mtip,
       csr_EN_ext_interrupt,
       csr_EN_incr_minstret,
       csr_EN_ma_debug_halt_request,
       csr_EN_ma_debug_resume_request,
       csr_EN_mav_debug_access_csrs,
       csr_EN_system_instruction,
       csr_EN_take_trap,
       csr_clint_msip_intrpt,
       csr_clint_mtip_intrpt,
       csr_ext_interrupt_ex_i,
       csr_ma_debug_halt_request_ip,
       csr_ma_debug_resume_request_ip,
       csr_mv_core_debugenable,
       csr_mv_core_is_halted,
       csr_mv_csr_misa_c,
       csr_mv_interrupt,
       csr_mv_step_ie,
       csr_mv_step_is_set;

  // rule scheduling signals
  wire CAN_FIRE_RL_increment_instruction_counter,
       CAN_FIRE_RL_instruction_commit,
       CAN_FIRE_RL_wr_memory_response__dreg_update,
       CAN_FIRE_clint_msip,
       CAN_FIRE_clint_mtime,
       CAN_FIRE_clint_mtip,
       CAN_FIRE_commit_rd_get,
       CAN_FIRE_ext_interrupt,
       CAN_FIRE_ma_debug_halt_request,
       CAN_FIRE_ma_debug_resume_request,
       CAN_FIRE_mav_debug_access_csrs,
       CAN_FIRE_memory_response_put,
       CAN_FIRE_operand_fwding_get,
       CAN_FIRE_rx_stage3_common_first,
       CAN_FIRE_rx_stage3_common_first_deq_rdy,
       CAN_FIRE_rx_stage3_common_notEmpty,
       CAN_FIRE_rx_stage3_type_first,
       CAN_FIRE_rx_stage3_type_first_deq_rdy,
       CAN_FIRE_rx_stage3_type_notEmpty,
       WILL_FIRE_RL_increment_instruction_counter,
       WILL_FIRE_RL_instruction_commit,
       WILL_FIRE_RL_wr_memory_response__dreg_update,
       WILL_FIRE_clint_msip,
       WILL_FIRE_clint_mtime,
       WILL_FIRE_clint_mtip,
       WILL_FIRE_commit_rd_get,
       WILL_FIRE_ext_interrupt,
       WILL_FIRE_ma_debug_halt_request,
       WILL_FIRE_ma_debug_resume_request,
       WILL_FIRE_mav_debug_access_csrs,
       WILL_FIRE_memory_response_put,
       WILL_FIRE_operand_fwding_get,
       WILL_FIRE_rx_stage3_common_first,
       WILL_FIRE_rx_stage3_common_first_deq_rdy,
       WILL_FIRE_rx_stage3_common_notEmpty,
       WILL_FIRE_rx_stage3_type_first,
       WILL_FIRE_rx_stage3_type_first_deq_rdy,
       WILL_FIRE_rx_stage3_type_notEmpty;

  // remaining internal signals
  wire [37 : 0] _dfoo6;
  wire [32 : 0] _dfoo10;
  wire [31 : 0] _theResult_____2__h2070,
		_theResult_____2__h2866,
		rdvalue__h2651,
		x__read_rdvalue__h3789;
  wire [5 : 0] type_cause__h2936;
  wire [4 : 0] x__read_rdaddr__h3788;
  wire NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d105,
       NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d114,
       NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d121,
       NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d74,
       NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d97,
       _dfoo11,
       _dfoo15,
       _dfoo17,
       _dfoo19,
       _dfoo23,
       _dfoo25,
       _dfoo27,
       _dfoo29,
       _dfoo31,
       _dfoo7,
       rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20,
       rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d23,
       rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d39,
       rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d50,
       rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d60,
       rg_rerun_OR_ff_stage3_type_w_data_whas_AND_ff__ETC___d22,
       rg_rerun_OR_ff_stage3_type_w_data_whas_AND_ff__ETC___d35,
       x__h3090;

  // action method rx_stage3_common_notEmpty
  assign CAN_FIRE_rx_stage3_common_notEmpty = 1'd1 ;
  assign WILL_FIRE_rx_stage3_common_notEmpty = 1'd1 ;

  // action method rx_stage3_common_first_deq_rdy
  assign CAN_FIRE_rx_stage3_common_first_deq_rdy = 1'd1 ;
  assign WILL_FIRE_rx_stage3_common_first_deq_rdy = 1'd1 ;

  // action method rx_stage3_common_first
  assign CAN_FIRE_rx_stage3_common_first = 1'd1 ;
  assign WILL_FIRE_rx_stage3_common_first = 1'd1 ;

  // value method rx_stage3_common_deq_ena
  assign rx_stage3_common_deq_ena = ff_stage3_common_w_ena_whas ;

  // action method rx_stage3_type_notEmpty
  assign CAN_FIRE_rx_stage3_type_notEmpty = 1'd1 ;
  assign WILL_FIRE_rx_stage3_type_notEmpty = 1'd1 ;

  // action method rx_stage3_type_first_deq_rdy
  assign CAN_FIRE_rx_stage3_type_first_deq_rdy = 1'd1 ;
  assign WILL_FIRE_rx_stage3_type_first_deq_rdy = 1'd1 ;

  // action method rx_stage3_type_first
  assign CAN_FIRE_rx_stage3_type_first = 1'd1 ;
  assign WILL_FIRE_rx_stage3_type_first = 1'd1 ;

  // value method rx_stage3_type_deq_ena
  assign rx_stage3_type_deq_ena = ff_stage3_type_w_ena_whas ;

  // action method memory_response_put
  assign RDY_memory_response_put = 1'd1 ;
  assign CAN_FIRE_memory_response_put = 1'd1 ;
  assign WILL_FIRE_memory_response_put = EN_memory_response_put ;

  // actionvalue method commit_rd_get
  assign commit_rd_get = wr_commit_wget[36:0] ;
  assign RDY_commit_rd_get = wr_commit_whas && wr_commit_wget[37] ;
  assign CAN_FIRE_commit_rd_get = RDY_commit_rd_get ;
  assign WILL_FIRE_commit_rd_get = EN_commit_rd_get ;

  // actionvalue method operand_fwding_get
  assign operand_fwding_get =
	     { x__read_rdaddr__h3788,
	       x__read_rdvalue__h3789,
	       wr_operand_fwding_whas && wr_operand_fwding_wget[0] } ;
  assign RDY_operand_fwding_get = 1'd1 ;
  assign CAN_FIRE_operand_fwding_get = 1'd1 ;
  assign WILL_FIRE_operand_fwding_get = EN_operand_fwding_get ;

  // value method flush_fst
  assign flush_fst = wr_flush_wget[32:1] ;
  assign RDY_flush_fst = 1'd1 ;

  // value method flush_snd
  assign flush_snd = wr_flush_whas && wr_flush_wget[0] ;
  assign RDY_flush_snd = 1'd1 ;

  // value method mv_csr_decode
  assign mv_csr_decode = csr_mv_csr_decode ;
  assign RDY_mv_csr_decode = 1'd1 ;

  // value method mv_csr_misa_c
  assign mv_csr_misa_c = csr_mv_csr_misa_c ;
  assign RDY_mv_csr_misa_c = 1'd1 ;

  // action method clint_msip
  assign RDY_clint_msip = 1'd1 ;
  assign CAN_FIRE_clint_msip = 1'd1 ;
  assign WILL_FIRE_clint_msip = EN_clint_msip ;

  // action method clint_mtip
  assign RDY_clint_mtip = 1'd1 ;
  assign CAN_FIRE_clint_mtip = 1'd1 ;
  assign WILL_FIRE_clint_mtip = EN_clint_mtip ;

  // action method clint_mtime
  assign RDY_clint_mtime = 1'd1 ;
  assign CAN_FIRE_clint_mtime = 1'd1 ;
  assign WILL_FIRE_clint_mtime = EN_clint_mtime ;

  // action method ext_interrupt
  assign RDY_ext_interrupt = 1'd1 ;
  assign CAN_FIRE_ext_interrupt = 1'd1 ;
  assign WILL_FIRE_ext_interrupt = EN_ext_interrupt ;

  // value method csr_updated
  assign csr_updated = 1'b0 ;
  assign RDY_csr_updated = 1'd1 ;

  // value method mv_interrupt
  assign mv_interrupt = csr_mv_interrupt ;

  // actionvalue method mav_debug_access_csrs
  assign mav_debug_access_csrs = csr_mav_debug_access_csrs ;
  assign RDY_mav_debug_access_csrs = 1'd1 ;
  assign CAN_FIRE_mav_debug_access_csrs = 1'd1 ;
  assign WILL_FIRE_mav_debug_access_csrs = EN_mav_debug_access_csrs ;

  // action method ma_debug_halt_request
  assign RDY_ma_debug_halt_request = 1'd1 ;
  assign CAN_FIRE_ma_debug_halt_request = 1'd1 ;
  assign WILL_FIRE_ma_debug_halt_request = EN_ma_debug_halt_request ;

  // action method ma_debug_resume_request
  assign RDY_ma_debug_resume_request = 1'd1 ;
  assign CAN_FIRE_ma_debug_resume_request = 1'd1 ;
  assign WILL_FIRE_ma_debug_resume_request = EN_ma_debug_resume_request ;

  // value method mv_core_is_halted
  assign mv_core_is_halted = csr_mv_core_is_halted ;
  assign RDY_mv_core_is_halted = 1'd1 ;

  // value method mv_step_is_set
  assign mv_step_is_set = csr_mv_step_is_set ;
  assign RDY_mv_step_is_set = 1'd1 ;

  // value method mv_step_ie
  assign mv_step_ie = csr_mv_step_ie ;
  assign RDY_mv_step_ie = 1'd1 ;

  // value method mv_core_debugenable
  assign mv_core_debugenable = csr_mv_core_debugenable ;
  assign RDY_mv_core_debugenable = 1'd1 ;

  // value method mv_curr_priv
  assign mv_curr_priv = csr_mv_curr_priv ;
  assign RDY_mv_curr_priv = 1'd1 ;

  // submodule csr
  mkcsr csr(.CLK(CLK),
	    .RST_N(RST_N),
	    .clint_msip_intrpt(csr_clint_msip_intrpt),
	    .clint_mtime_c_mtime(csr_clint_mtime_c_mtime),
	    .clint_mtip_intrpt(csr_clint_mtip_intrpt),
	    .ext_interrupt_ex_i(csr_ext_interrupt_ex_i),
	    .ma_debug_halt_request_ip(csr_ma_debug_halt_request_ip),
	    .ma_debug_resume_request_ip(csr_ma_debug_resume_request_ip),
	    .mav_debug_access_csrs_cmd(csr_mav_debug_access_csrs_cmd),
	    .system_instruction_csr_address(csr_system_instruction_csr_address),
	    .system_instruction_funct3(csr_system_instruction_funct3),
	    .system_instruction_lpc(csr_system_instruction_lpc),
	    .system_instruction_op1(csr_system_instruction_op1),
	    .take_trap_badaddr(csr_take_trap_badaddr),
	    .take_trap_pc(csr_take_trap_pc),
	    .take_trap_type_cause(csr_take_trap_type_cause),
	    .EN_system_instruction(csr_EN_system_instruction),
	    .EN_take_trap(csr_EN_take_trap),
	    .EN_clint_msip(csr_EN_clint_msip),
	    .EN_clint_mtip(csr_EN_clint_mtip),
	    .EN_clint_mtime(csr_EN_clint_mtime),
	    .EN_incr_minstret(csr_EN_incr_minstret),
	    .EN_ext_interrupt(csr_EN_ext_interrupt),
	    .EN_mav_debug_access_csrs(csr_EN_mav_debug_access_csrs),
	    .EN_ma_debug_halt_request(csr_EN_ma_debug_halt_request),
	    .EN_ma_debug_resume_request(csr_EN_ma_debug_resume_request),
	    .system_instruction(csr_system_instruction),
	    .RDY_system_instruction(),
	    .mv_csr_decode(csr_mv_csr_decode),
	    .RDY_mv_csr_decode(),
	    .take_trap(csr_take_trap),
	    .RDY_take_trap(),
	    .RDY_clint_msip(),
	    .RDY_clint_mtip(),
	    .RDY_clint_mtime(),
	    .RDY_incr_minstret(),
	    .RDY_ext_interrupt(),
	    .mv_csr_misa_c(csr_mv_csr_misa_c),
	    .RDY_mv_csr_misa_c(),
	    .mv_interrupt(csr_mv_interrupt),
	    .mv_curr_priv(csr_mv_curr_priv),
	    .RDY_mv_curr_priv(),
	    .csr_mstatus(),
	    .RDY_csr_mstatus(),
	    .mav_debug_access_csrs(csr_mav_debug_access_csrs),
	    .RDY_mav_debug_access_csrs(),
	    .RDY_ma_debug_halt_request(),
	    .RDY_ma_debug_resume_request(),
	    .mv_core_is_halted(csr_mv_core_is_halted),
	    .RDY_mv_core_is_halted(),
	    .mv_step_is_set(csr_mv_step_is_set),
	    .RDY_mv_step_is_set(),
	    .mv_step_ie(csr_mv_step_ie),
	    .RDY_mv_step_ie(),
	    .mv_core_debugenable(csr_mv_core_debugenable),
	    .RDY_mv_core_debugenable());

  // rule RL_instruction_commit
  assign CAN_FIRE_RL_instruction_commit =
	     rx_stage3_common_first_deq_rdy_b &&
	     rx_stage3_type_first_deq_rdy_b ;
  assign WILL_FIRE_RL_instruction_commit = CAN_FIRE_RL_instruction_commit ;

  // rule RL_increment_instruction_counter
  assign CAN_FIRE_RL_increment_instruction_counter = RDY_commit_rd_get ;
  assign WILL_FIRE_RL_increment_instruction_counter =
	     CAN_FIRE_RL_increment_instruction_counter &&
	     !WILL_FIRE_RL_instruction_commit &&
	     !EN_mav_debug_access_csrs ;

  // rule RL_wr_memory_response__dreg_update
  assign CAN_FIRE_RL_wr_memory_response__dreg_update = 1'd1 ;
  assign WILL_FIRE_RL_wr_memory_response__dreg_update = 1'd1 ;

  // inlined wires
  assign ff_stage3_common_w_ena_whas =
	     WILL_FIRE_RL_instruction_commit && _dfoo31 ;
  assign ff_stage3_type_w_ena_whas =
	     WILL_FIRE_RL_instruction_commit && _dfoo29 ;
  assign wr_memory_response_1_wget = { 1'd1, memory_response_put } ;
  assign wr_operand_fwding_wget =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d50 ?
	       { rx_stage3_common_first_x[5:1],
		 _theResult_____2__h2070,
		 1'd1 } :
	       { rx_stage3_common_first_x[5:1],
		 _theResult_____2__h2866,
		 1'd1 } ;
  assign wr_operand_fwding_whas = WILL_FIRE_RL_instruction_commit && _dfoo17 ;
  assign wr_commit_wget =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d50 ?
	       { 1'd1,
		 rx_stage3_common_first_x[5:1],
		 _theResult_____2__h2070 } :
	       _dfoo6 ;
  assign wr_commit_whas = WILL_FIRE_RL_instruction_commit && _dfoo15 ;
  assign wr_flush_wget =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d23 ?
	       { rg_rerun ? rx_stage3_common_first_x[37:6] : csr_take_trap,
		 1'd1 } :
	       _dfoo10 ;
  assign wr_flush_whas = WILL_FIRE_RL_instruction_commit && _dfoo27 ;

  // register rg_epoch
  assign rg_epoch_D_IN = x__h3090 ;
  assign rg_epoch_EN = WILL_FIRE_RL_instruction_commit && _dfoo25 ;

  // register rg_rerun
  assign rg_rerun_D_IN =
	     !rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20 ||
	     !rg_rerun_OR_ff_stage3_type_w_data_whas_AND_ff__ETC___d35 ||
	     !rg_rerun ;
  assign rg_rerun_EN = WILL_FIRE_RL_instruction_commit && _dfoo23 ;

  // register wr_memory_response
  assign wr_memory_response_D_IN =
	     EN_memory_response_put ?
	       wr_memory_response_1_wget :
	       { 1'd0,
		 34'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */  } ;
  assign wr_memory_response_EN = 1'd1 ;

  // submodule csr
  assign csr_clint_msip_intrpt = clint_msip_intrpt ;
  assign csr_clint_mtime_c_mtime = clint_mtime_c_mtime ;
  assign csr_clint_mtip_intrpt = clint_mtip_intrpt ;
  assign csr_ext_interrupt_ex_i = ext_interrupt_i ;
  assign csr_ma_debug_halt_request_ip = ma_debug_halt_request_ip ;
  assign csr_ma_debug_resume_request_ip = ma_debug_resume_request_ip ;
  assign csr_mav_debug_access_csrs_cmd = mav_debug_access_csrs_cmd ;
  assign csr_system_instruction_csr_address = rx_stage3_type_first_x[14:3] ;
  assign csr_system_instruction_funct3 = rx_stage3_type_first_x[2:0] ;
  assign csr_system_instruction_lpc = rx_stage3_type_first_x[16:15] ;
  assign csr_system_instruction_op1 = rx_stage3_type_first_x[48:17] ;
  assign csr_take_trap_badaddr =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d39 ?
	       rx_stage3_type_first_x[31:0] :
	       wr_memory_response[33:2] ;
  assign csr_take_trap_pc = rx_stage3_common_first_x[37:6] ;
  assign csr_take_trap_type_cause =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d39 ?
	       rx_stage3_type_first_x[37:32] :
	       type_cause__h2936 ;
  assign csr_EN_system_instruction =
	     WILL_FIRE_RL_instruction_commit &&
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d60 ;
  assign csr_EN_take_trap = WILL_FIRE_RL_instruction_commit && _dfoo19 ;
  assign csr_EN_clint_msip = EN_clint_msip ;
  assign csr_EN_clint_mtip = EN_clint_mtip ;
  assign csr_EN_clint_mtime = EN_clint_mtime ;
  assign csr_EN_incr_minstret = WILL_FIRE_RL_increment_instruction_counter ;
  assign csr_EN_ext_interrupt = EN_ext_interrupt ;
  assign csr_EN_mav_debug_access_csrs = EN_mav_debug_access_csrs ;
  assign csr_EN_ma_debug_halt_request = EN_ma_debug_halt_request ;
  assign csr_EN_ma_debug_resume_request = EN_ma_debug_resume_request ;

  // remaining internal signals
  assign NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d105 =
	     !rg_rerun && rx_stage3_type_first_x[50:49] == 2'd0 &&
	     (rx_stage3_type_first_x[1:0] == 2'd3 ||
	      wr_memory_response[34] && wr_memory_response[0] == rg_epoch) ;
  assign NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d114 =
	     !rg_rerun && rx_stage3_type_first_x[50:49] == 2'd0 &&
	     rx_stage3_type_first_x[1:0] != 2'd3 &&
	     wr_memory_response[34] &&
	     wr_memory_response[0] == rg_epoch &&
	     wr_memory_response[1] ;
  assign NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d121 =
	     !rg_rerun && rx_stage3_type_first_x[50:49] == 2'd0 &&
	     rx_stage3_type_first_x[1:0] != 2'd3 &&
	     wr_memory_response[34] &&
	     wr_memory_response[0] == rg_epoch &&
	     !wr_memory_response[1] ;
  assign NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d74 =
	     !rg_rerun && rx_stage3_type_first_x[50:49] == 2'd3 &&
	     csr_system_instruction[64] ;
  assign NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d97 =
	     !rg_rerun && rx_stage3_type_first_x[50:49] == 2'd0 &&
	     (rx_stage3_type_first_x[1:0] == 2'd3 ||
	      wr_memory_response[34] && wr_memory_response[0] == rg_epoch &&
	      !wr_memory_response[1]) ;
  assign _dfoo10 =
	     (rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20 &&
	      NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d74) ?
	       { csr_system_instruction[63:32], 1'd1 } :
	       { csr_take_trap, 1'd1 } ;
  assign _dfoo11 =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d50 ||
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d60 ||
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20 &&
	     NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d105 ;
  assign _dfoo15 =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d50 ||
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d60 ||
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20 &&
	     NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d97 ;
  assign _dfoo17 =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d50 ||
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20 &&
	     NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d121 ;
  assign _dfoo19 =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d39 ||
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20 &&
	     NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d114 ;
  assign _dfoo23 =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20 &&
	     rg_rerun_OR_ff_stage3_type_w_data_whas_AND_ff__ETC___d35 ||
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20 &&
	     !rg_rerun &&
	     rx_stage3_type_first_x[50:49] == 2'd0 &&
	     rx_stage3_type_first_x[1:0] == 2'd3 ;
  assign _dfoo25 =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d23 ||
	     _dfoo7 ;
  assign _dfoo27 =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d23 ||
	     _dfoo7 ;
  assign _dfoo29 =
	     rg_rerun_OR_ff_stage3_type_w_data_whas_AND_ff__ETC___d22 ||
	     _dfoo11 ;
  assign _dfoo31 =
	     rg_rerun_OR_ff_stage3_type_w_data_whas_AND_ff__ETC___d22 ||
	     _dfoo11 ;
  assign _dfoo6 =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d60 ?
	       { 1'd1, rx_stage3_common_first_x[5:1], rdvalue__h2651 } :
	       ((rx_stage3_type_first_x[1:0] == 2'd3) ?
		  38'h2000000000 :
		  { 1'd1,
		    rx_stage3_common_first_x[5:1],
		    _theResult_____2__h2866 }) ;
  assign _dfoo7 =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20 &&
	     (NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d74 ||
	      NOT_rg_rerun_7_AND_ff_stage3_type_w_data_whas__ETC___d114) ;
  assign _theResult_____2__h2070 =
	     (rx_stage3_common_first_x[5:1] == 5'd0) ?
	       32'd0 :
	       rx_stage3_type_first_x[31:0] ;
  assign _theResult_____2__h2866 =
	     (rx_stage3_common_first_x[5:1] == 5'd0) ?
	       32'd0 :
	       wr_memory_response[33:2] ;
  assign rdvalue__h2651 =
	     (rx_stage3_common_first_x[5:1] == 5'd0) ?
	       32'd0 :
	       csr_system_instruction[31:0] ;
  assign rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20 =
	     rg_epoch == rx_stage3_common_first_x[0] ;
  assign rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d23 =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20 &&
	     (rg_rerun || rx_stage3_type_first_x[50:49] == 2'd1) ;
  assign rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d39 =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20 &&
	     !rg_rerun &&
	     rx_stage3_type_first_x[50:49] == 2'd1 ;
  assign rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d50 =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20 &&
	     !rg_rerun &&
	     rx_stage3_type_first_x[50:49] == 2'd2 ;
  assign rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d60 =
	     rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20 &&
	     !rg_rerun &&
	     rx_stage3_type_first_x[50:49] == 2'd3 ;
  assign rg_rerun_OR_ff_stage3_type_w_data_whas_AND_ff__ETC___d22 =
	     rg_rerun || rx_stage3_type_first_x[50:49] == 2'd1 ||
	     !rg_epoch_5_EQ_IF_ff_stage3_common_w_data_whas__ETC___d20 ;
  assign rg_rerun_OR_ff_stage3_type_w_data_whas_AND_ff__ETC___d35 =
	     rg_rerun ||
	     rx_stage3_type_first_x[50:49] == 2'd3 &&
	     !csr_system_instruction[64] ;
  assign type_cause__h2936 =
	     (rx_stage3_type_first_x[1:0] == 2'd0) ? 6'd5 : 6'd7 ;
  assign x__h3090 = ~rg_epoch ;
  assign x__read_rdaddr__h3788 =
	     wr_operand_fwding_whas ? wr_operand_fwding_wget[37:33] : 5'd0 ;
  assign x__read_rdvalue__h3789 =
	     wr_operand_fwding_whas ? wr_operand_fwding_wget[32:1] : 32'd0 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        rg_epoch <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_rerun <= `BSV_ASSIGNMENT_DELAY 1'd0;
	wr_memory_response <= `BSV_ASSIGNMENT_DELAY
	    { 1'd0,
	      34'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */  };
      end
    else
      begin
        if (rg_epoch_EN) rg_epoch <= `BSV_ASSIGNMENT_DELAY rg_epoch_D_IN;
	if (rg_rerun_EN) rg_rerun <= `BSV_ASSIGNMENT_DELAY rg_rerun_D_IN;
	if (wr_memory_response_EN)
	  wr_memory_response <= `BSV_ASSIGNMENT_DELAY wr_memory_response_D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    rg_epoch = 1'h0;
    rg_rerun = 1'h0;
    wr_memory_response = 35'h2AAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkstage3

