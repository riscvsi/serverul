//
// Generated by Bluespec Compiler, version 2022.01-36-ga6304315 (build a6304315)
//
// On Tue Oct  4 10:37:05 CEST 2022
//
//
// Ports:
// Name                         I/O  size props
// chk_interrupt                  O     8
// chk_interrupt_prv              I     2
// chk_interrupt_mstatus          I    32
// chk_interrupt_mip              I    14
// chk_interrupt_mie              I    12
// chk_interrupt_debug            I     5
// chk_interrupt_step_done        I     1
//
// Combinational paths from inputs to outputs:
//   (chk_interrupt_prv,
//    chk_interrupt_mstatus,
//    chk_interrupt_mip,
//    chk_interrupt_mie,
//    chk_interrupt_debug,
//    chk_interrupt_step_done) -> chk_interrupt
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

module module_chk_interrupt(chk_interrupt_prv,
			    chk_interrupt_mstatus,
			    chk_interrupt_mip,
			    chk_interrupt_mie,
			    chk_interrupt_debug,
			    chk_interrupt_step_done,
			    chk_interrupt);
  // value method chk_interrupt
  input  [1 : 0] chk_interrupt_prv;
  input  [31 : 0] chk_interrupt_mstatus;
  input  [13 : 0] chk_interrupt_mip;
  input  [11 : 0] chk_interrupt_mie;
  input  [4 : 0] chk_interrupt_debug;
  input  chk_interrupt_step_done;
  output [7 : 0] chk_interrupt;

  // signals for module outputs
  wire [7 : 0] chk_interrupt;

  // remaining internal signals
  wire [13 : 0] debug_interrupts__h32, pending_interrupts__h35;
  wire [11 : 0] m_interrupts__h34, x__h191, x__h395, y__h192, y__h194;
  wire [5 : 0] x__h26;
  wire [4 : 0] IF_chk_interrupt_step_done_AND_NOT_chk_interru_ETC___d38;

  // value method chk_interrupt
  assign chk_interrupt =
	     { x__h26,
	       pending_interrupts__h35 != 14'd0 ||
	       chk_interrupt_step_done && !chk_interrupt_debug[3],
	       x__h395 != 12'd0 } ;

  // remaining internal signals
  assign IF_chk_interrupt_step_done_AND_NOT_chk_interru_ETC___d38 =
	     (chk_interrupt_step_done && !chk_interrupt_debug[3]) ?
	       5'd20 :
	       (pending_interrupts__h35[12] ?
		  5'd19 :
		  (pending_interrupts__h35[13] ?
		     5'd22 :
		     (pending_interrupts__h35[11] ?
			5'd11 :
			(pending_interrupts__h35[3] ?
			   5'd3 :
			   (pending_interrupts__h35[7] ?
			      5'd7 :
			      (pending_interrupts__h35[8] ?
				 5'd8 :
				 (pending_interrupts__h35[0] ?
				    5'd0 :
				    (pending_interrupts__h35[4] ?
				       5'd4 :
				       5'd31)))))))) ;
  assign debug_interrupts__h32 = { chk_interrupt_mip[13:12], 12'd0 } ;
  assign m_interrupts__h34 = x__h191 & y__h192 ;
  assign pending_interrupts__h35 =
	     (chk_interrupt_debug[4] && chk_interrupt_debug[0]) ?
	       debug_interrupts__h32 :
	       ((chk_interrupt_prv != 2'd3 || chk_interrupt_mstatus[3]) ?
		  { 2'd0, m_interrupts__h34 } :
		  14'd0) ;
  assign x__h191 = x__h395 & y__h194 ;
  assign x__h26 =
	     { 1'b1,
	       IF_chk_interrupt_step_done_AND_NOT_chk_interru_ETC___d38 } ;
  assign x__h395 = chk_interrupt_mie & chk_interrupt_mip[11:0] ;
  assign y__h192 = {12{!chk_interrupt_debug[3]}} ;
  assign y__h194 =
	     {12{chk_interrupt_prv != 2'd3 || chk_interrupt_mstatus[3]}} ;
endmodule  // module_chk_interrupt
