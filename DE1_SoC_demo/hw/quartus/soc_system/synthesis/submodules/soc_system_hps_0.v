// soc_system_hps_0.v

// This file was auto-generated from altera_hps_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 15.1 185

`timescale 1 ps / 1 ps
module soc_system_hps_0 #(
		parameter F2S_Width = 0,
		parameter S2F_Width = 0
	) (
		output wire        h2f_rst_n,                //         h2f_reset.reset_n
		input  wire        h2f_lw_axi_clk,           //  h2f_lw_axi_clock.clk
		output wire [11:0] h2f_lw_AWID,              // h2f_lw_axi_master.awid
		output wire [20:0] h2f_lw_AWADDR,            //                  .awaddr
		output wire [3:0]  h2f_lw_AWLEN,             //                  .awlen
		output wire [2:0]  h2f_lw_AWSIZE,            //                  .awsize
		output wire [1:0]  h2f_lw_AWBURST,           //                  .awburst
		output wire [1:0]  h2f_lw_AWLOCK,            //                  .awlock
		output wire [3:0]  h2f_lw_AWCACHE,           //                  .awcache
		output wire [2:0]  h2f_lw_AWPROT,            //                  .awprot
		output wire        h2f_lw_AWVALID,           //                  .awvalid
		input  wire        h2f_lw_AWREADY,           //                  .awready
		output wire [11:0] h2f_lw_WID,               //                  .wid
		output wire [31:0] h2f_lw_WDATA,             //                  .wdata
		output wire [3:0]  h2f_lw_WSTRB,             //                  .wstrb
		output wire        h2f_lw_WLAST,             //                  .wlast
		output wire        h2f_lw_WVALID,            //                  .wvalid
		input  wire        h2f_lw_WREADY,            //                  .wready
		input  wire [11:0] h2f_lw_BID,               //                  .bid
		input  wire [1:0]  h2f_lw_BRESP,             //                  .bresp
		input  wire        h2f_lw_BVALID,            //                  .bvalid
		output wire        h2f_lw_BREADY,            //                  .bready
		output wire [11:0] h2f_lw_ARID,              //                  .arid
		output wire [20:0] h2f_lw_ARADDR,            //                  .araddr
		output wire [3:0]  h2f_lw_ARLEN,             //                  .arlen
		output wire [2:0]  h2f_lw_ARSIZE,            //                  .arsize
		output wire [1:0]  h2f_lw_ARBURST,           //                  .arburst
		output wire [1:0]  h2f_lw_ARLOCK,            //                  .arlock
		output wire [3:0]  h2f_lw_ARCACHE,           //                  .arcache
		output wire [2:0]  h2f_lw_ARPROT,            //                  .arprot
		output wire        h2f_lw_ARVALID,           //                  .arvalid
		input  wire        h2f_lw_ARREADY,           //                  .arready
		input  wire [11:0] h2f_lw_RID,               //                  .rid
		input  wire [31:0] h2f_lw_RDATA,             //                  .rdata
		input  wire [1:0]  h2f_lw_RRESP,             //                  .rresp
		input  wire        h2f_lw_RLAST,             //                  .rlast
		input  wire        h2f_lw_RVALID,            //                  .rvalid
		output wire        h2f_lw_RREADY,            //                  .rready
		output wire [14:0] mem_a,                    //            memory.mem_a
		output wire [2:0]  mem_ba,                   //                  .mem_ba
		output wire        mem_ck,                   //                  .mem_ck
		output wire        mem_ck_n,                 //                  .mem_ck_n
		output wire        mem_cke,                  //                  .mem_cke
		output wire        mem_cs_n,                 //                  .mem_cs_n
		output wire        mem_ras_n,                //                  .mem_ras_n
		output wire        mem_cas_n,                //                  .mem_cas_n
		output wire        mem_we_n,                 //                  .mem_we_n
		output wire        mem_reset_n,              //                  .mem_reset_n
		inout  wire [31:0] mem_dq,                   //                  .mem_dq
		inout  wire [3:0]  mem_dqs,                  //                  .mem_dqs
		inout  wire [3:0]  mem_dqs_n,                //                  .mem_dqs_n
		output wire        mem_odt,                  //                  .mem_odt
		output wire [3:0]  mem_dm,                   //                  .mem_dm
		input  wire        oct_rzqin,                //                  .oct_rzqin
		output wire        hps_io_emac1_inst_TX_CLK, //            hps_io.hps_io_emac1_inst_TX_CLK
		output wire        hps_io_emac1_inst_TXD0,   //                  .hps_io_emac1_inst_TXD0
		output wire        hps_io_emac1_inst_TXD1,   //                  .hps_io_emac1_inst_TXD1
		output wire        hps_io_emac1_inst_TXD2,   //                  .hps_io_emac1_inst_TXD2
		output wire        hps_io_emac1_inst_TXD3,   //                  .hps_io_emac1_inst_TXD3
		input  wire        hps_io_emac1_inst_RXD0,   //                  .hps_io_emac1_inst_RXD0
		inout  wire        hps_io_emac1_inst_MDIO,   //                  .hps_io_emac1_inst_MDIO
		output wire        hps_io_emac1_inst_MDC,    //                  .hps_io_emac1_inst_MDC
		input  wire        hps_io_emac1_inst_RX_CTL, //                  .hps_io_emac1_inst_RX_CTL
		output wire        hps_io_emac1_inst_TX_CTL, //                  .hps_io_emac1_inst_TX_CTL
		input  wire        hps_io_emac1_inst_RX_CLK, //                  .hps_io_emac1_inst_RX_CLK
		input  wire        hps_io_emac1_inst_RXD1,   //                  .hps_io_emac1_inst_RXD1
		input  wire        hps_io_emac1_inst_RXD2,   //                  .hps_io_emac1_inst_RXD2
		input  wire        hps_io_emac1_inst_RXD3,   //                  .hps_io_emac1_inst_RXD3
		inout  wire        hps_io_qspi_inst_IO0,     //                  .hps_io_qspi_inst_IO0
		inout  wire        hps_io_qspi_inst_IO1,     //                  .hps_io_qspi_inst_IO1
		inout  wire        hps_io_qspi_inst_IO2,     //                  .hps_io_qspi_inst_IO2
		inout  wire        hps_io_qspi_inst_IO3,     //                  .hps_io_qspi_inst_IO3
		output wire        hps_io_qspi_inst_SS0,     //                  .hps_io_qspi_inst_SS0
		output wire        hps_io_qspi_inst_CLK,     //                  .hps_io_qspi_inst_CLK
		inout  wire        hps_io_sdio_inst_CMD,     //                  .hps_io_sdio_inst_CMD
		inout  wire        hps_io_sdio_inst_D0,      //                  .hps_io_sdio_inst_D0
		inout  wire        hps_io_sdio_inst_D1,      //                  .hps_io_sdio_inst_D1
		output wire        hps_io_sdio_inst_CLK,     //                  .hps_io_sdio_inst_CLK
		inout  wire        hps_io_sdio_inst_D2,      //                  .hps_io_sdio_inst_D2
		inout  wire        hps_io_sdio_inst_D3,      //                  .hps_io_sdio_inst_D3
		inout  wire        hps_io_usb1_inst_D0,      //                  .hps_io_usb1_inst_D0
		inout  wire        hps_io_usb1_inst_D1,      //                  .hps_io_usb1_inst_D1
		inout  wire        hps_io_usb1_inst_D2,      //                  .hps_io_usb1_inst_D2
		inout  wire        hps_io_usb1_inst_D3,      //                  .hps_io_usb1_inst_D3
		inout  wire        hps_io_usb1_inst_D4,      //                  .hps_io_usb1_inst_D4
		inout  wire        hps_io_usb1_inst_D5,      //                  .hps_io_usb1_inst_D5
		inout  wire        hps_io_usb1_inst_D6,      //                  .hps_io_usb1_inst_D6
		inout  wire        hps_io_usb1_inst_D7,      //                  .hps_io_usb1_inst_D7
		input  wire        hps_io_usb1_inst_CLK,     //                  .hps_io_usb1_inst_CLK
		output wire        hps_io_usb1_inst_STP,     //                  .hps_io_usb1_inst_STP
		input  wire        hps_io_usb1_inst_DIR,     //                  .hps_io_usb1_inst_DIR
		input  wire        hps_io_usb1_inst_NXT,     //                  .hps_io_usb1_inst_NXT
		output wire        hps_io_spim1_inst_CLK,    //                  .hps_io_spim1_inst_CLK
		output wire        hps_io_spim1_inst_MOSI,   //                  .hps_io_spim1_inst_MOSI
		input  wire        hps_io_spim1_inst_MISO,   //                  .hps_io_spim1_inst_MISO
		output wire        hps_io_spim1_inst_SS0,    //                  .hps_io_spim1_inst_SS0
		input  wire        hps_io_uart0_inst_RX,     //                  .hps_io_uart0_inst_RX
		output wire        hps_io_uart0_inst_TX,     //                  .hps_io_uart0_inst_TX
		inout  wire        hps_io_i2c0_inst_SDA,     //                  .hps_io_i2c0_inst_SDA
		inout  wire        hps_io_i2c0_inst_SCL,     //                  .hps_io_i2c0_inst_SCL
		inout  wire        hps_io_i2c1_inst_SDA,     //                  .hps_io_i2c1_inst_SDA
		inout  wire        hps_io_i2c1_inst_SCL,     //                  .hps_io_i2c1_inst_SCL
		inout  wire        hps_io_gpio_inst_GPIO09,  //                  .hps_io_gpio_inst_GPIO09
		inout  wire        hps_io_gpio_inst_GPIO35,  //                  .hps_io_gpio_inst_GPIO35
		inout  wire        hps_io_gpio_inst_GPIO40,  //                  .hps_io_gpio_inst_GPIO40
		inout  wire        hps_io_gpio_inst_GPIO48,  //                  .hps_io_gpio_inst_GPIO48
		inout  wire        hps_io_gpio_inst_GPIO53,  //                  .hps_io_gpio_inst_GPIO53
		inout  wire        hps_io_gpio_inst_GPIO54,  //                  .hps_io_gpio_inst_GPIO54
		inout  wire        hps_io_gpio_inst_GPIO61   //                  .hps_io_gpio_inst_GPIO61
	);

	generate
		// If any of the display statements (or deliberately broken
		// instantiations) within this generate block triggers then this module
		// has been instantiated this module with a set of parameters different
		// from those it was generated for.  This will usually result in a
		// non-functioning system.
		if (F2S_Width != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					f2s_width_check ( .error(1'b1) );
		end
		if (S2F_Width != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					s2f_width_check ( .error(1'b1) );
		end
	endgenerate

	soc_system_hps_0_fpga_interfaces fpga_interfaces (
		.h2f_rst_n      (h2f_rst_n),      //         h2f_reset.reset_n
		.h2f_lw_axi_clk (h2f_lw_axi_clk), //  h2f_lw_axi_clock.clk
		.h2f_lw_AWID    (h2f_lw_AWID),    // h2f_lw_axi_master.awid
		.h2f_lw_AWADDR  (h2f_lw_AWADDR),  //                  .awaddr
		.h2f_lw_AWLEN   (h2f_lw_AWLEN),   //                  .awlen
		.h2f_lw_AWSIZE  (h2f_lw_AWSIZE),  //                  .awsize
		.h2f_lw_AWBURST (h2f_lw_AWBURST), //                  .awburst
		.h2f_lw_AWLOCK  (h2f_lw_AWLOCK),  //                  .awlock
		.h2f_lw_AWCACHE (h2f_lw_AWCACHE), //                  .awcache
		.h2f_lw_AWPROT  (h2f_lw_AWPROT),  //                  .awprot
		.h2f_lw_AWVALID (h2f_lw_AWVALID), //                  .awvalid
		.h2f_lw_AWREADY (h2f_lw_AWREADY), //                  .awready
		.h2f_lw_WID     (h2f_lw_WID),     //                  .wid
		.h2f_lw_WDATA   (h2f_lw_WDATA),   //                  .wdata
		.h2f_lw_WSTRB   (h2f_lw_WSTRB),   //                  .wstrb
		.h2f_lw_WLAST   (h2f_lw_WLAST),   //                  .wlast
		.h2f_lw_WVALID  (h2f_lw_WVALID),  //                  .wvalid
		.h2f_lw_WREADY  (h2f_lw_WREADY),  //                  .wready
		.h2f_lw_BID     (h2f_lw_BID),     //                  .bid
		.h2f_lw_BRESP   (h2f_lw_BRESP),   //                  .bresp
		.h2f_lw_BVALID  (h2f_lw_BVALID),  //                  .bvalid
		.h2f_lw_BREADY  (h2f_lw_BREADY),  //                  .bready
		.h2f_lw_ARID    (h2f_lw_ARID),    //                  .arid
		.h2f_lw_ARADDR  (h2f_lw_ARADDR),  //                  .araddr
		.h2f_lw_ARLEN   (h2f_lw_ARLEN),   //                  .arlen
		.h2f_lw_ARSIZE  (h2f_lw_ARSIZE),  //                  .arsize
		.h2f_lw_ARBURST (h2f_lw_ARBURST), //                  .arburst
		.h2f_lw_ARLOCK  (h2f_lw_ARLOCK),  //                  .arlock
		.h2f_lw_ARCACHE (h2f_lw_ARCACHE), //                  .arcache
		.h2f_lw_ARPROT  (h2f_lw_ARPROT),  //                  .arprot
		.h2f_lw_ARVALID (h2f_lw_ARVALID), //                  .arvalid
		.h2f_lw_ARREADY (h2f_lw_ARREADY), //                  .arready
		.h2f_lw_RID     (h2f_lw_RID),     //                  .rid
		.h2f_lw_RDATA   (h2f_lw_RDATA),   //                  .rdata
		.h2f_lw_RRESP   (h2f_lw_RRESP),   //                  .rresp
		.h2f_lw_RLAST   (h2f_lw_RLAST),   //                  .rlast
		.h2f_lw_RVALID  (h2f_lw_RVALID),  //                  .rvalid
		.h2f_lw_RREADY  (h2f_lw_RREADY)   //                  .rready
	);

	soc_system_hps_0_hps_io hps_io (
		.mem_a                    (mem_a),                    // memory.mem_a
		.mem_ba                   (mem_ba),                   //       .mem_ba
		.mem_ck                   (mem_ck),                   //       .mem_ck
		.mem_ck_n                 (mem_ck_n),                 //       .mem_ck_n
		.mem_cke                  (mem_cke),                  //       .mem_cke
		.mem_cs_n                 (mem_cs_n),                 //       .mem_cs_n
		.mem_ras_n                (mem_ras_n),                //       .mem_ras_n
		.mem_cas_n                (mem_cas_n),                //       .mem_cas_n
		.mem_we_n                 (mem_we_n),                 //       .mem_we_n
		.mem_reset_n              (mem_reset_n),              //       .mem_reset_n
		.mem_dq                   (mem_dq),                   //       .mem_dq
		.mem_dqs                  (mem_dqs),                  //       .mem_dqs
		.mem_dqs_n                (mem_dqs_n),                //       .mem_dqs_n
		.mem_odt                  (mem_odt),                  //       .mem_odt
		.mem_dm                   (mem_dm),                   //       .mem_dm
		.oct_rzqin                (oct_rzqin),                //       .oct_rzqin
		.hps_io_emac1_inst_TX_CLK (hps_io_emac1_inst_TX_CLK), // hps_io.hps_io_emac1_inst_TX_CLK
		.hps_io_emac1_inst_TXD0   (hps_io_emac1_inst_TXD0),   //       .hps_io_emac1_inst_TXD0
		.hps_io_emac1_inst_TXD1   (hps_io_emac1_inst_TXD1),   //       .hps_io_emac1_inst_TXD1
		.hps_io_emac1_inst_TXD2   (hps_io_emac1_inst_TXD2),   //       .hps_io_emac1_inst_TXD2
		.hps_io_emac1_inst_TXD3   (hps_io_emac1_inst_TXD3),   //       .hps_io_emac1_inst_TXD3
		.hps_io_emac1_inst_RXD0   (hps_io_emac1_inst_RXD0),   //       .hps_io_emac1_inst_RXD0
		.hps_io_emac1_inst_MDIO   (hps_io_emac1_inst_MDIO),   //       .hps_io_emac1_inst_MDIO
		.hps_io_emac1_inst_MDC    (hps_io_emac1_inst_MDC),    //       .hps_io_emac1_inst_MDC
		.hps_io_emac1_inst_RX_CTL (hps_io_emac1_inst_RX_CTL), //       .hps_io_emac1_inst_RX_CTL
		.hps_io_emac1_inst_TX_CTL (hps_io_emac1_inst_TX_CTL), //       .hps_io_emac1_inst_TX_CTL
		.hps_io_emac1_inst_RX_CLK (hps_io_emac1_inst_RX_CLK), //       .hps_io_emac1_inst_RX_CLK
		.hps_io_emac1_inst_RXD1   (hps_io_emac1_inst_RXD1),   //       .hps_io_emac1_inst_RXD1
		.hps_io_emac1_inst_RXD2   (hps_io_emac1_inst_RXD2),   //       .hps_io_emac1_inst_RXD2
		.hps_io_emac1_inst_RXD3   (hps_io_emac1_inst_RXD3),   //       .hps_io_emac1_inst_RXD3
		.hps_io_qspi_inst_IO0     (hps_io_qspi_inst_IO0),     //       .hps_io_qspi_inst_IO0
		.hps_io_qspi_inst_IO1     (hps_io_qspi_inst_IO1),     //       .hps_io_qspi_inst_IO1
		.hps_io_qspi_inst_IO2     (hps_io_qspi_inst_IO2),     //       .hps_io_qspi_inst_IO2
		.hps_io_qspi_inst_IO3     (hps_io_qspi_inst_IO3),     //       .hps_io_qspi_inst_IO3
		.hps_io_qspi_inst_SS0     (hps_io_qspi_inst_SS0),     //       .hps_io_qspi_inst_SS0
		.hps_io_qspi_inst_CLK     (hps_io_qspi_inst_CLK),     //       .hps_io_qspi_inst_CLK
		.hps_io_sdio_inst_CMD     (hps_io_sdio_inst_CMD),     //       .hps_io_sdio_inst_CMD
		.hps_io_sdio_inst_D0      (hps_io_sdio_inst_D0),      //       .hps_io_sdio_inst_D0
		.hps_io_sdio_inst_D1      (hps_io_sdio_inst_D1),      //       .hps_io_sdio_inst_D1
		.hps_io_sdio_inst_CLK     (hps_io_sdio_inst_CLK),     //       .hps_io_sdio_inst_CLK
		.hps_io_sdio_inst_D2      (hps_io_sdio_inst_D2),      //       .hps_io_sdio_inst_D2
		.hps_io_sdio_inst_D3      (hps_io_sdio_inst_D3),      //       .hps_io_sdio_inst_D3
		.hps_io_usb1_inst_D0      (hps_io_usb1_inst_D0),      //       .hps_io_usb1_inst_D0
		.hps_io_usb1_inst_D1      (hps_io_usb1_inst_D1),      //       .hps_io_usb1_inst_D1
		.hps_io_usb1_inst_D2      (hps_io_usb1_inst_D2),      //       .hps_io_usb1_inst_D2
		.hps_io_usb1_inst_D3      (hps_io_usb1_inst_D3),      //       .hps_io_usb1_inst_D3
		.hps_io_usb1_inst_D4      (hps_io_usb1_inst_D4),      //       .hps_io_usb1_inst_D4
		.hps_io_usb1_inst_D5      (hps_io_usb1_inst_D5),      //       .hps_io_usb1_inst_D5
		.hps_io_usb1_inst_D6      (hps_io_usb1_inst_D6),      //       .hps_io_usb1_inst_D6
		.hps_io_usb1_inst_D7      (hps_io_usb1_inst_D7),      //       .hps_io_usb1_inst_D7
		.hps_io_usb1_inst_CLK     (hps_io_usb1_inst_CLK),     //       .hps_io_usb1_inst_CLK
		.hps_io_usb1_inst_STP     (hps_io_usb1_inst_STP),     //       .hps_io_usb1_inst_STP
		.hps_io_usb1_inst_DIR     (hps_io_usb1_inst_DIR),     //       .hps_io_usb1_inst_DIR
		.hps_io_usb1_inst_NXT     (hps_io_usb1_inst_NXT),     //       .hps_io_usb1_inst_NXT
		.hps_io_spim1_inst_CLK    (hps_io_spim1_inst_CLK),    //       .hps_io_spim1_inst_CLK
		.hps_io_spim1_inst_MOSI   (hps_io_spim1_inst_MOSI),   //       .hps_io_spim1_inst_MOSI
		.hps_io_spim1_inst_MISO   (hps_io_spim1_inst_MISO),   //       .hps_io_spim1_inst_MISO
		.hps_io_spim1_inst_SS0    (hps_io_spim1_inst_SS0),    //       .hps_io_spim1_inst_SS0
		.hps_io_uart0_inst_RX     (hps_io_uart0_inst_RX),     //       .hps_io_uart0_inst_RX
		.hps_io_uart0_inst_TX     (hps_io_uart0_inst_TX),     //       .hps_io_uart0_inst_TX
		.hps_io_i2c0_inst_SDA     (hps_io_i2c0_inst_SDA),     //       .hps_io_i2c0_inst_SDA
		.hps_io_i2c0_inst_SCL     (hps_io_i2c0_inst_SCL),     //       .hps_io_i2c0_inst_SCL
		.hps_io_i2c1_inst_SDA     (hps_io_i2c1_inst_SDA),     //       .hps_io_i2c1_inst_SDA
		.hps_io_i2c1_inst_SCL     (hps_io_i2c1_inst_SCL),     //       .hps_io_i2c1_inst_SCL
		.hps_io_gpio_inst_GPIO09  (hps_io_gpio_inst_GPIO09),  //       .hps_io_gpio_inst_GPIO09
		.hps_io_gpio_inst_GPIO35  (hps_io_gpio_inst_GPIO35),  //       .hps_io_gpio_inst_GPIO35
		.hps_io_gpio_inst_GPIO40  (hps_io_gpio_inst_GPIO40),  //       .hps_io_gpio_inst_GPIO40
		.hps_io_gpio_inst_GPIO48  (hps_io_gpio_inst_GPIO48),  //       .hps_io_gpio_inst_GPIO48
		.hps_io_gpio_inst_GPIO53  (hps_io_gpio_inst_GPIO53),  //       .hps_io_gpio_inst_GPIO53
		.hps_io_gpio_inst_GPIO54  (hps_io_gpio_inst_GPIO54),  //       .hps_io_gpio_inst_GPIO54
		.hps_io_gpio_inst_GPIO61  (hps_io_gpio_inst_GPIO61)   //       .hps_io_gpio_inst_GPIO61
	);

endmodule
