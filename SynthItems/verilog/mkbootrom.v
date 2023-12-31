//
// Generated by Bluespec Compiler, version 2022.01-36-ga6304315 (build a6304315)
//
// On Tue Oct  4 10:37:19 CEST 2022
//
//
// Ports:
// Name                         I/O  size props
// slave_awready                  O     1 reg
// slave_wready                   O     1 reg
// slave_bvalid                   O     1 reg
// slave_bresp                    O     2 reg
// slave_arready                  O     1 reg
// slave_rvalid                   O     1 reg
// slave_rresp                    O     2 reg
// slave_rdata                    O    32 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// slave_m_awvalid_awvalid        I     1
// slave_m_awvalid_awaddr         I    32 reg
// slave_m_awvalid_awsize         I     2 reg
// slave_m_awvalid_awprot         I     3 reg
// slave_m_wvalid_wvalid          I     1
// slave_m_wvalid_wdata           I    32 reg
// slave_m_wvalid_wstrb           I     4 reg
// slave_m_bready_bready          I     1
// slave_m_arvalid_arvalid        I     1
// slave_m_arvalid_araddr         I    32 reg
// slave_m_arvalid_arsize         I     2 reg
// slave_m_arvalid_arprot         I     3 reg
// slave_m_rready_rready          I     1
//
// No combinational paths from inputs to outputs
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

module mkbootrom(CLK,
		 RST_N,

		 slave_m_awvalid_awvalid,
		 slave_m_awvalid_awaddr,
		 slave_m_awvalid_awsize,
		 slave_m_awvalid_awprot,

		 slave_awready,

		 slave_m_wvalid_wvalid,
		 slave_m_wvalid_wdata,
		 slave_m_wvalid_wstrb,

		 slave_wready,

		 slave_bvalid,

		 slave_bresp,

		 slave_m_bready_bready,

		 slave_m_arvalid_arvalid,
		 slave_m_arvalid_araddr,
		 slave_m_arvalid_arsize,
		 slave_m_arvalid_arprot,

		 slave_arready,

		 slave_rvalid,

		 slave_rresp,

		 slave_rdata,

		 slave_m_rready_rready);
  input  CLK;
  input  RST_N;

  // action method slave_m_awvalid
  input  slave_m_awvalid_awvalid;
  input  [31 : 0] slave_m_awvalid_awaddr;
  input  [1 : 0] slave_m_awvalid_awsize;
  input  [2 : 0] slave_m_awvalid_awprot;

  // value method slave_m_awready
  output slave_awready;

  // action method slave_m_wvalid
  input  slave_m_wvalid_wvalid;
  input  [31 : 0] slave_m_wvalid_wdata;
  input  [3 : 0] slave_m_wvalid_wstrb;

  // value method slave_m_wready
  output slave_wready;

  // value method slave_m_bvalid
  output slave_bvalid;

  // value method slave_m_bresp
  output [1 : 0] slave_bresp;

  // value method slave_m_buser

  // action method slave_m_bready
  input  slave_m_bready_bready;

  // action method slave_m_arvalid
  input  slave_m_arvalid_arvalid;
  input  [31 : 0] slave_m_arvalid_araddr;
  input  [1 : 0] slave_m_arvalid_arsize;
  input  [2 : 0] slave_m_arvalid_arprot;

  // value method slave_m_arready
  output slave_arready;

  // value method slave_m_rvalid
  output slave_rvalid;

  // value method slave_m_rresp
  output [1 : 0] slave_rresp;

  // value method slave_m_rdata
  output [31 : 0] slave_rdata;

  // value method slave_m_ruser

  // action method slave_m_rready
  input  slave_m_rready_rready;

  // signals for module outputs
  wire [31 : 0] slave_rdata;
  wire [1 : 0] slave_bresp, slave_rresp;
  wire slave_arready, slave_awready, slave_bvalid, slave_rvalid, slave_wready;

  // register dut_read_request_sent
  reg dut_read_request_sent;
  wire dut_read_request_sent_D_IN, dut_read_request_sent_EN;

  // register dut_rg_req
  reg [3 : 0] dut_rg_req;
  wire [3 : 0] dut_rg_req_D_IN;
  wire dut_rg_req_EN;

  // register rg_offset
  reg [1 : 0] rg_offset;
  wire [1 : 0] rg_offset_D_IN;
  wire rg_offset_EN;

  // register rg_size
  reg [1 : 0] rg_size;
  wire [1 : 0] rg_size_D_IN;
  wire rg_size_EN;

  // ports of submodule dut_dmemLSB
  wire [31 : 0] dut_dmemLSB_DI, dut_dmemLSB_DO;
  wire [7 : 0] dut_dmemLSB_ADDR;
  wire dut_dmemLSB_EN, dut_dmemLSB_WE;

  // ports of submodule s_xactor_f_rd_addr
  wire [36 : 0] s_xactor_f_rd_addr_D_IN, s_xactor_f_rd_addr_D_OUT;
  wire s_xactor_f_rd_addr_CLR,
       s_xactor_f_rd_addr_DEQ,
       s_xactor_f_rd_addr_EMPTY_N,
       s_xactor_f_rd_addr_ENQ,
       s_xactor_f_rd_addr_FULL_N;

  // ports of submodule s_xactor_f_rd_data
  wire [33 : 0] s_xactor_f_rd_data_D_IN, s_xactor_f_rd_data_D_OUT;
  wire s_xactor_f_rd_data_CLR,
       s_xactor_f_rd_data_DEQ,
       s_xactor_f_rd_data_EMPTY_N,
       s_xactor_f_rd_data_ENQ,
       s_xactor_f_rd_data_FULL_N;

  // ports of submodule s_xactor_f_wr_addr
  wire [36 : 0] s_xactor_f_wr_addr_D_IN;
  wire s_xactor_f_wr_addr_CLR,
       s_xactor_f_wr_addr_DEQ,
       s_xactor_f_wr_addr_EMPTY_N,
       s_xactor_f_wr_addr_ENQ,
       s_xactor_f_wr_addr_FULL_N;

  // ports of submodule s_xactor_f_wr_data
  wire [35 : 0] s_xactor_f_wr_data_D_IN;
  wire s_xactor_f_wr_data_CLR,
       s_xactor_f_wr_data_DEQ,
       s_xactor_f_wr_data_EMPTY_N,
       s_xactor_f_wr_data_ENQ,
       s_xactor_f_wr_data_FULL_N;

  // ports of submodule s_xactor_f_wr_resp
  wire [1 : 0] s_xactor_f_wr_resp_D_IN, s_xactor_f_wr_resp_D_OUT;
  wire s_xactor_f_wr_resp_CLR,
       s_xactor_f_wr_resp_DEQ,
       s_xactor_f_wr_resp_EMPTY_N,
       s_xactor_f_wr_resp_ENQ,
       s_xactor_f_wr_resp_FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_dut_read_request_sent__dreg_update,
       CAN_FIRE_RL_read_request_first,
       CAN_FIRE_RL_read_response,
       CAN_FIRE_RL_write_request_address_channel,
       CAN_FIRE_slave_m_arvalid,
       CAN_FIRE_slave_m_awvalid,
       CAN_FIRE_slave_m_bready,
       CAN_FIRE_slave_m_rready,
       CAN_FIRE_slave_m_wvalid,
       WILL_FIRE_RL_dut_read_request_sent__dreg_update,
       WILL_FIRE_RL_read_request_first,
       WILL_FIRE_RL_read_response,
       WILL_FIRE_RL_write_request_address_channel,
       WILL_FIRE_slave_m_arvalid,
       WILL_FIRE_slave_m_awvalid,
       WILL_FIRE_slave_m_bready,
       WILL_FIRE_slave_m_rready,
       WILL_FIRE_slave_m_wvalid;

  // remaining internal signals
  wire [31 : 0] s_xactor_f_rd_addrD_OUT_BITS_36_TO_5_MINUS_0x_ETC__q1;

  // action method slave_m_awvalid
  assign CAN_FIRE_slave_m_awvalid = 1'd1 ;
  assign WILL_FIRE_slave_m_awvalid = 1'd1 ;

  // value method slave_m_awready
  assign slave_awready = s_xactor_f_wr_addr_FULL_N ;

  // action method slave_m_wvalid
  assign CAN_FIRE_slave_m_wvalid = 1'd1 ;
  assign WILL_FIRE_slave_m_wvalid = 1'd1 ;

  // value method slave_m_wready
  assign slave_wready = s_xactor_f_wr_data_FULL_N ;

  // value method slave_m_bvalid
  assign slave_bvalid = s_xactor_f_wr_resp_EMPTY_N ;

  // value method slave_m_bresp
  assign slave_bresp = s_xactor_f_wr_resp_D_OUT ;

  // action method slave_m_bready
  assign CAN_FIRE_slave_m_bready = 1'd1 ;
  assign WILL_FIRE_slave_m_bready = 1'd1 ;

  // action method slave_m_arvalid
  assign CAN_FIRE_slave_m_arvalid = 1'd1 ;
  assign WILL_FIRE_slave_m_arvalid = 1'd1 ;

  // value method slave_m_arready
  assign slave_arready = s_xactor_f_rd_addr_FULL_N ;

  // value method slave_m_rvalid
  assign slave_rvalid = s_xactor_f_rd_data_EMPTY_N ;

  // value method slave_m_rresp
  assign slave_rresp = s_xactor_f_rd_data_D_OUT[33:32] ;

  // value method slave_m_rdata
  assign slave_rdata = s_xactor_f_rd_data_D_OUT[31:0] ;

  // action method slave_m_rready
  assign CAN_FIRE_slave_m_rready = 1'd1 ;
  assign WILL_FIRE_slave_m_rready = 1'd1 ;

  // submodule dut_dmemLSB
  BRAM1Load #(.FILENAME("boot.LSB"),
	      .PIPELINED(1'd0),
	      .ADDR_WIDTH(32'd8),
	      .DATA_WIDTH(32'd32),
	      .MEMSIZE(9'd256),
	      .BINARY(1'd0)) dut_dmemLSB(.CLK(CLK),
					 .ADDR(dut_dmemLSB_ADDR),
					 .DI(dut_dmemLSB_DI),
					 .WE(dut_dmemLSB_WE),
					 .EN(dut_dmemLSB_EN),
					 .DO(dut_dmemLSB_DO));

  // submodule s_xactor_f_rd_addr
  FIFO2 #(.width(32'd37), .guarded(1'd1)) s_xactor_f_rd_addr(.RST(RST_N),
							     .CLK(CLK),
							     .D_IN(s_xactor_f_rd_addr_D_IN),
							     .ENQ(s_xactor_f_rd_addr_ENQ),
							     .DEQ(s_xactor_f_rd_addr_DEQ),
							     .CLR(s_xactor_f_rd_addr_CLR),
							     .D_OUT(s_xactor_f_rd_addr_D_OUT),
							     .FULL_N(s_xactor_f_rd_addr_FULL_N),
							     .EMPTY_N(s_xactor_f_rd_addr_EMPTY_N));

  // submodule s_xactor_f_rd_data
  FIFO2 #(.width(32'd34), .guarded(1'd1)) s_xactor_f_rd_data(.RST(RST_N),
							     .CLK(CLK),
							     .D_IN(s_xactor_f_rd_data_D_IN),
							     .ENQ(s_xactor_f_rd_data_ENQ),
							     .DEQ(s_xactor_f_rd_data_DEQ),
							     .CLR(s_xactor_f_rd_data_CLR),
							     .D_OUT(s_xactor_f_rd_data_D_OUT),
							     .FULL_N(s_xactor_f_rd_data_FULL_N),
							     .EMPTY_N(s_xactor_f_rd_data_EMPTY_N));

  // submodule s_xactor_f_wr_addr
  FIFO2 #(.width(32'd37), .guarded(1'd1)) s_xactor_f_wr_addr(.RST(RST_N),
							     .CLK(CLK),
							     .D_IN(s_xactor_f_wr_addr_D_IN),
							     .ENQ(s_xactor_f_wr_addr_ENQ),
							     .DEQ(s_xactor_f_wr_addr_DEQ),
							     .CLR(s_xactor_f_wr_addr_CLR),
							     .D_OUT(),
							     .FULL_N(s_xactor_f_wr_addr_FULL_N),
							     .EMPTY_N(s_xactor_f_wr_addr_EMPTY_N));

  // submodule s_xactor_f_wr_data
  FIFO2 #(.width(32'd36), .guarded(1'd1)) s_xactor_f_wr_data(.RST(RST_N),
							     .CLK(CLK),
							     .D_IN(s_xactor_f_wr_data_D_IN),
							     .ENQ(s_xactor_f_wr_data_ENQ),
							     .DEQ(s_xactor_f_wr_data_DEQ),
							     .CLR(s_xactor_f_wr_data_CLR),
							     .D_OUT(),
							     .FULL_N(s_xactor_f_wr_data_FULL_N),
							     .EMPTY_N(s_xactor_f_wr_data_EMPTY_N));

  // submodule s_xactor_f_wr_resp
  FIFO2 #(.width(32'd2), .guarded(1'd1)) s_xactor_f_wr_resp(.RST(RST_N),
							    .CLK(CLK),
							    .D_IN(s_xactor_f_wr_resp_D_IN),
							    .ENQ(s_xactor_f_wr_resp_ENQ),
							    .DEQ(s_xactor_f_wr_resp_DEQ),
							    .CLR(s_xactor_f_wr_resp_CLR),
							    .D_OUT(s_xactor_f_wr_resp_D_OUT),
							    .FULL_N(s_xactor_f_wr_resp_FULL_N),
							    .EMPTY_N(s_xactor_f_wr_resp_EMPTY_N));

  // rule RL_write_request_address_channel
  assign CAN_FIRE_RL_write_request_address_channel =
	     s_xactor_f_wr_addr_EMPTY_N && s_xactor_f_wr_data_EMPTY_N &&
	     s_xactor_f_wr_resp_FULL_N ;
  assign WILL_FIRE_RL_write_request_address_channel =
	     CAN_FIRE_RL_write_request_address_channel ;

  // rule RL_read_request_first
  assign CAN_FIRE_RL_read_request_first = s_xactor_f_rd_addr_EMPTY_N ;
  assign WILL_FIRE_RL_read_request_first = s_xactor_f_rd_addr_EMPTY_N ;

  // rule RL_read_response
  assign CAN_FIRE_RL_read_response =
	     dut_read_request_sent && s_xactor_f_rd_data_FULL_N ;
  assign WILL_FIRE_RL_read_response = CAN_FIRE_RL_read_response ;

  // rule RL_dut_read_request_sent__dreg_update
  assign CAN_FIRE_RL_dut_read_request_sent__dreg_update = 1'd1 ;
  assign WILL_FIRE_RL_dut_read_request_sent__dreg_update = 1'd1 ;

  // register dut_read_request_sent
  assign dut_read_request_sent_D_IN = s_xactor_f_rd_addr_EMPTY_N ;
  assign dut_read_request_sent_EN = 1'd1 ;

  // register dut_rg_req
  assign dut_rg_req_D_IN =
	     { s_xactor_f_rd_addr_D_OUT[6:5],
	       s_xactor_f_rd_addr_D_OUT[1:0] } ;
  assign dut_rg_req_EN = s_xactor_f_rd_addr_EMPTY_N ;

  // register rg_offset
  assign rg_offset_D_IN = s_xactor_f_rd_addr_D_OUT[6:5] ;
  assign rg_offset_EN = s_xactor_f_rd_addr_EMPTY_N ;

  // register rg_size
  assign rg_size_D_IN = s_xactor_f_rd_addr_D_OUT[1:0] ;
  assign rg_size_EN = s_xactor_f_rd_addr_EMPTY_N ;

  // submodule dut_dmemLSB
  assign dut_dmemLSB_ADDR =
	     s_xactor_f_rd_addrD_OUT_BITS_36_TO_5_MINUS_0x_ETC__q1[9:2] ;
  assign dut_dmemLSB_DI =
	     32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */  ;
  assign dut_dmemLSB_WE = 1'd0 ;
  assign dut_dmemLSB_EN = s_xactor_f_rd_addr_EMPTY_N ;

  // submodule s_xactor_f_rd_addr
  assign s_xactor_f_rd_addr_D_IN =
	     { slave_m_arvalid_araddr,
	       slave_m_arvalid_arprot,
	       slave_m_arvalid_arsize } ;
  assign s_xactor_f_rd_addr_ENQ =
	     slave_m_arvalid_arvalid && s_xactor_f_rd_addr_FULL_N ;
  assign s_xactor_f_rd_addr_DEQ = s_xactor_f_rd_addr_EMPTY_N ;
  assign s_xactor_f_rd_addr_CLR = 1'b0 ;

  // submodule s_xactor_f_rd_data
  assign s_xactor_f_rd_data_D_IN = { 2'd0, dut_dmemLSB_DO } ;
  assign s_xactor_f_rd_data_ENQ =
	     dut_read_request_sent && s_xactor_f_rd_data_FULL_N ;
  assign s_xactor_f_rd_data_DEQ =
	     slave_m_rready_rready && s_xactor_f_rd_data_EMPTY_N ;
  assign s_xactor_f_rd_data_CLR = 1'b0 ;

  // submodule s_xactor_f_wr_addr
  assign s_xactor_f_wr_addr_D_IN =
	     { slave_m_awvalid_awaddr,
	       slave_m_awvalid_awprot,
	       slave_m_awvalid_awsize } ;
  assign s_xactor_f_wr_addr_ENQ =
	     slave_m_awvalid_awvalid && s_xactor_f_wr_addr_FULL_N ;
  assign s_xactor_f_wr_addr_DEQ =
	     s_xactor_f_wr_addr_EMPTY_N && s_xactor_f_wr_data_EMPTY_N &&
	     s_xactor_f_wr_resp_FULL_N ;
  assign s_xactor_f_wr_addr_CLR = 1'b0 ;

  // submodule s_xactor_f_wr_data
  assign s_xactor_f_wr_data_D_IN =
	     { slave_m_wvalid_wdata, slave_m_wvalid_wstrb } ;
  assign s_xactor_f_wr_data_ENQ =
	     slave_m_wvalid_wvalid && s_xactor_f_wr_data_FULL_N ;
  assign s_xactor_f_wr_data_DEQ =
	     s_xactor_f_wr_addr_EMPTY_N && s_xactor_f_wr_data_EMPTY_N &&
	     s_xactor_f_wr_resp_FULL_N ;
  assign s_xactor_f_wr_data_CLR = 1'b0 ;

  // submodule s_xactor_f_wr_resp
  assign s_xactor_f_wr_resp_D_IN = 2'd2 ;
  assign s_xactor_f_wr_resp_ENQ =
	     s_xactor_f_wr_addr_EMPTY_N && s_xactor_f_wr_data_EMPTY_N &&
	     s_xactor_f_wr_resp_FULL_N ;
  assign s_xactor_f_wr_resp_DEQ =
	     slave_m_bready_bready && s_xactor_f_wr_resp_EMPTY_N ;
  assign s_xactor_f_wr_resp_CLR = 1'b0 ;

  // remaining internal signals
  assign s_xactor_f_rd_addrD_OUT_BITS_36_TO_5_MINUS_0x_ETC__q1 =
	     s_xactor_f_rd_addr_D_OUT[36:5] - 32'h00001000 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        dut_read_request_sent <= `BSV_ASSIGNMENT_DELAY 1'd0;
	dut_rg_req <= `BSV_ASSIGNMENT_DELAY 4'd0;
	rg_offset <= `BSV_ASSIGNMENT_DELAY 2'd0;
	rg_size <= `BSV_ASSIGNMENT_DELAY 2'd3;
      end
    else
      begin
        if (dut_read_request_sent_EN)
	  dut_read_request_sent <= `BSV_ASSIGNMENT_DELAY
	      dut_read_request_sent_D_IN;
	if (dut_rg_req_EN)
	  dut_rg_req <= `BSV_ASSIGNMENT_DELAY dut_rg_req_D_IN;
	if (rg_offset_EN) rg_offset <= `BSV_ASSIGNMENT_DELAY rg_offset_D_IN;
	if (rg_size_EN) rg_size <= `BSV_ASSIGNMENT_DELAY rg_size_D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    dut_read_request_sent = 1'h0;
    dut_rg_req = 4'hA;
    rg_offset = 2'h2;
    rg_size = 2'h2;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkbootrom

