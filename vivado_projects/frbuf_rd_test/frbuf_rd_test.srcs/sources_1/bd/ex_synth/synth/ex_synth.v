//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Mon Apr 26 10:12:52 2021
//Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target ex_synth.bd
//Design      : ex_synth
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clock_and_reset_imp_1YV5WNU
   (bus_struct_reset,
    clk_in1,
    mb_debug_sys_rst,
    mb_reset,
    peripheral_aresetn,
    peripheral_aresetn1,
    peripheral_aresetn2,
    reset,
    slowest_sync_clk,
    slowest_sync_clk1,
    slowest_sync_clk2);
  output [0:0]bus_struct_reset;
  input clk_in1;
  input mb_debug_sys_rst;
  output mb_reset;
  output [0:0]peripheral_aresetn;
  output [0:0]peripheral_aresetn1;
  output [0:0]peripheral_aresetn2;
  input reset;
  output slowest_sync_clk;
  output slowest_sync_clk1;
  output slowest_sync_clk2;

  wire clk_wiz_1_clk_out2;
  wire clk_wiz_1_clk_out3;
  wire clk_wiz_1_locked;
  wire mdm_1_debug_sys_rst;
  wire mig_ui_clk;
  wire processor_Clk;
  wire reset_1;
  wire [0:0]rst_clk_wiz_1_100M_bus_struct_reset;
  wire rst_clk_wiz_1_100M_mb_reset;
  wire [0:0]rst_clk_wiz_1_100M_peripheral_aresetn;
  wire [0:0]rst_clk_wiz_1_150M_peripheral_aresetn;
  wire [0:0]rst_clk_wiz_1_200M_peripheral_aresetn;

  assign bus_struct_reset[0] = rst_clk_wiz_1_100M_bus_struct_reset;
  assign mb_reset = rst_clk_wiz_1_100M_mb_reset;
  assign mdm_1_debug_sys_rst = mb_debug_sys_rst;
  assign mig_ui_clk = clk_in1;
  assign peripheral_aresetn[0] = rst_clk_wiz_1_100M_peripheral_aresetn;
  assign peripheral_aresetn1[0] = rst_clk_wiz_1_150M_peripheral_aresetn;
  assign peripheral_aresetn2[0] = rst_clk_wiz_1_200M_peripheral_aresetn;
  assign reset_1 = reset;
  assign slowest_sync_clk = processor_Clk;
  assign slowest_sync_clk1 = clk_wiz_1_clk_out2;
  assign slowest_sync_clk2 = clk_wiz_1_clk_out3;
  ex_synth_clk_wiz_1_0 clk_wiz_1
       (.clk_in1(mig_ui_clk),
        .clk_out1(processor_Clk),
        .clk_out2(clk_wiz_1_clk_out2),
        .clk_out3(clk_wiz_1_clk_out3),
        .locked(clk_wiz_1_locked),
        .resetn(reset_1));
  ex_synth_rst_clk_wiz_1_100M_0 rst_clk_wiz_1_100M
       (.aux_reset_in(1'b1),
        .bus_struct_reset(rst_clk_wiz_1_100M_bus_struct_reset),
        .dcm_locked(clk_wiz_1_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .mb_reset(rst_clk_wiz_1_100M_mb_reset),
        .peripheral_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .slowest_sync_clk(processor_Clk));
  ex_synth_rst_clk_wiz_1_150M_0 rst_clk_wiz_1_150M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_1_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_1_150M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_1_clk_out2));
  ex_synth_rst_clk_wiz_1_200M_0 rst_clk_wiz_1_200M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_1_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_1_200M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_1_clk_out3));
endmodule

(* CORE_GENERATION_INFO = "ex_synth,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ex_synth,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=64,numReposBlks=43,numNonXlnxBlks=0,numHierBlks=21,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=11,da_board_cnt=6,da_clkrst_cnt=1,da_mb_cnt=1,da_mig7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ex_synth.hwdef" *) 
module ex_synth
   (Blue,
    Green,
    Red,
    clk,
    ddr3_sdram_addr,
    ddr3_sdram_ba,
    ddr3_sdram_cas_n,
    ddr3_sdram_ck_n,
    ddr3_sdram_ck_p,
    ddr3_sdram_cke,
    ddr3_sdram_cs_n,
    ddr3_sdram_dm,
    ddr3_sdram_dq,
    ddr3_sdram_dqs_n,
    ddr3_sdram_dqs_p,
    ddr3_sdram_odt,
    ddr3_sdram_ras_n,
    ddr3_sdram_reset_n,
    ddr3_sdram_we_n,
    eth_mdio_mdc_mdc,
    eth_mdio_mdc_mdio_i,
    eth_mdio_mdc_mdio_o,
    eth_mdio_mdc_mdio_t,
    eth_mii_col,
    eth_mii_crs,
    eth_mii_rst_n,
    eth_mii_rx_clk,
    eth_mii_rx_dv,
    eth_mii_rx_er,
    eth_mii_rxd,
    eth_mii_tx_clk,
    eth_mii_tx_en,
    eth_mii_txd,
    qspi_flash_io0_i,
    qspi_flash_io0_o,
    qspi_flash_io0_t,
    qspi_flash_io1_i,
    qspi_flash_io1_o,
    qspi_flash_io1_t,
    qspi_flash_io2_i,
    qspi_flash_io2_o,
    qspi_flash_io2_t,
    qspi_flash_io3_i,
    qspi_flash_io3_o,
    qspi_flash_io3_t,
    qspi_flash_sck_i,
    qspi_flash_sck_o,
    qspi_flash_sck_t,
    qspi_flash_ss_i,
    qspi_flash_ss_o,
    qspi_flash_ss_t,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd,
    vid_active_video_0,
    vid_hsync_0,
    vid_vsync_0);
  output [3:0]Blue;
  output [3:0]Green;
  output [3:0]Red;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN ex_synth_mig_0_ui_clk, FREQ_HZ 39999840, INSERT_VIP 0, PHASE 0.0" *) output clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr3_sdram, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [13:0]ddr3_sdram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram BA" *) output [2:0]ddr3_sdram_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram CAS_N" *) output ddr3_sdram_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram CK_N" *) output [0:0]ddr3_sdram_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram CK_P" *) output [0:0]ddr3_sdram_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram CKE" *) output [0:0]ddr3_sdram_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram CS_N" *) output [0:0]ddr3_sdram_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram DM" *) output [1:0]ddr3_sdram_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram DQ" *) inout [15:0]ddr3_sdram_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram DQS_N" *) inout [1:0]ddr3_sdram_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram DQS_P" *) inout [1:0]ddr3_sdram_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram ODT" *) output [0:0]ddr3_sdram_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram RAS_N" *) output ddr3_sdram_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram RESET_N" *) output ddr3_sdram_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram WE_N" *) output ddr3_sdram_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 eth_mdio_mdc MDC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME eth_mdio_mdc, CAN_DEBUG false" *) output eth_mdio_mdc_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 eth_mdio_mdc MDIO_I" *) input eth_mdio_mdc_mdio_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 eth_mdio_mdc MDIO_O" *) output eth_mdio_mdc_mdio_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 eth_mdio_mdc MDIO_T" *) output eth_mdio_mdc_mdio_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 eth_mii COL" *) input eth_mii_col;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 eth_mii CRS" *) input eth_mii_crs;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 eth_mii RST_N" *) output eth_mii_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 eth_mii RX_CLK" *) input eth_mii_rx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 eth_mii RX_DV" *) input eth_mii_rx_dv;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 eth_mii RX_ER" *) input eth_mii_rx_er;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 eth_mii RXD" *) input [3:0]eth_mii_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 eth_mii TX_CLK" *) input eth_mii_tx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 eth_mii TX_EN" *) output eth_mii_tx_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 eth_mii TXD" *) output [3:0]eth_mii_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_I" *) input qspi_flash_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_O" *) output qspi_flash_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_T" *) output qspi_flash_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_I" *) input qspi_flash_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_O" *) output qspi_flash_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_T" *) output qspi_flash_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO2_I" *) input qspi_flash_io2_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO2_O" *) output qspi_flash_io2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO2_T" *) output qspi_flash_io2_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO3_I" *) input qspi_flash_io3_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO3_O" *) output qspi_flash_io3_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO3_T" *) output qspi_flash_io3_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SCK_I" *) input qspi_flash_sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SCK_O" *) output qspi_flash_sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SCK_T" *) output qspi_flash_sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_I" *) input qspi_flash_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_O" *) output qspi_flash_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_T" *) output qspi_flash_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN ex_synth_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart RxD" *) input usb_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart TxD" *) output usb_uart_txd;
  output vid_active_video_0;
  output vid_hsync_0;
  output vid_vsync_0;

  wire axi_ethernetlite_0_MDIO_MDC;
  wire axi_ethernetlite_0_MDIO_MDIO_I;
  wire axi_ethernetlite_0_MDIO_MDIO_O;
  wire axi_ethernetlite_0_MDIO_MDIO_T;
  wire axi_ethernetlite_0_MII_COL;
  wire axi_ethernetlite_0_MII_CRS;
  wire axi_ethernetlite_0_MII_RST_N;
  wire [3:0]axi_ethernetlite_0_MII_RXD;
  wire axi_ethernetlite_0_MII_RX_CLK;
  wire axi_ethernetlite_0_MII_RX_DV;
  wire axi_ethernetlite_0_MII_RX_ER;
  wire [3:0]axi_ethernetlite_0_MII_TXD;
  wire axi_ethernetlite_0_MII_TX_CLK;
  wire axi_ethernetlite_0_MII_TX_EN;
  wire axi_quad_spi_0_SPI_0_IO0_I;
  wire axi_quad_spi_0_SPI_0_IO0_O;
  wire axi_quad_spi_0_SPI_0_IO0_T;
  wire axi_quad_spi_0_SPI_0_IO1_I;
  wire axi_quad_spi_0_SPI_0_IO1_O;
  wire axi_quad_spi_0_SPI_0_IO1_T;
  wire axi_quad_spi_0_SPI_0_IO2_I;
  wire axi_quad_spi_0_SPI_0_IO2_O;
  wire axi_quad_spi_0_SPI_0_IO2_T;
  wire axi_quad_spi_0_SPI_0_IO3_I;
  wire axi_quad_spi_0_SPI_0_IO3_O;
  wire axi_quad_spi_0_SPI_0_IO3_T;
  wire axi_quad_spi_0_SPI_0_SCK_I;
  wire axi_quad_spi_0_SPI_0_SCK_O;
  wire axi_quad_spi_0_SPI_0_SCK_T;
  wire axi_quad_spi_0_SPI_0_SS_I;
  wire [0:0]axi_quad_spi_0_SPI_0_SS_O;
  wire axi_quad_spi_0_SPI_0_SS_T;
  wire axi_quad_spi_0_ip2intc_irpt;
  wire axi_uartlite_0_UART_RxD;
  wire axi_uartlite_0_UART_TxD;
  wire axi_uartlite_0_interrupt;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_1_clk_out2;
  wire clk_wiz_1_clk_out3;
  wire [0:0]hls_ip_reset_gpio_io_o;
  wire mdm_1_debug_sys_rst;
  wire [13:0]mig_DDR3_ADDR;
  wire [2:0]mig_DDR3_BA;
  wire mig_DDR3_CAS_N;
  wire [0:0]mig_DDR3_CKE;
  wire [0:0]mig_DDR3_CK_N;
  wire [0:0]mig_DDR3_CK_P;
  wire [0:0]mig_DDR3_CS_N;
  wire [1:0]mig_DDR3_DM;
  wire [15:0]mig_DDR3_DQ;
  wire [1:0]mig_DDR3_DQS_N;
  wire [1:0]mig_DDR3_DQS_P;
  wire [0:0]mig_DDR3_ODT;
  wire mig_DDR3_RAS_N;
  wire mig_DDR3_RESET_N;
  wire mig_DDR3_WE_N;
  wire mig_ui_clk;
  wire processor_Clk;
  wire [31:0]processor_M_AXI_DC_ARADDR;
  wire [1:0]processor_M_AXI_DC_ARBURST;
  wire [3:0]processor_M_AXI_DC_ARCACHE;
  wire [7:0]processor_M_AXI_DC_ARLEN;
  wire processor_M_AXI_DC_ARLOCK;
  wire [2:0]processor_M_AXI_DC_ARPROT;
  wire [3:0]processor_M_AXI_DC_ARQOS;
  wire processor_M_AXI_DC_ARREADY;
  wire [2:0]processor_M_AXI_DC_ARSIZE;
  wire processor_M_AXI_DC_ARVALID;
  wire [31:0]processor_M_AXI_DC_AWADDR;
  wire [1:0]processor_M_AXI_DC_AWBURST;
  wire [3:0]processor_M_AXI_DC_AWCACHE;
  wire [7:0]processor_M_AXI_DC_AWLEN;
  wire processor_M_AXI_DC_AWLOCK;
  wire [2:0]processor_M_AXI_DC_AWPROT;
  wire [3:0]processor_M_AXI_DC_AWQOS;
  wire processor_M_AXI_DC_AWREADY;
  wire [2:0]processor_M_AXI_DC_AWSIZE;
  wire processor_M_AXI_DC_AWVALID;
  wire processor_M_AXI_DC_BREADY;
  wire [1:0]processor_M_AXI_DC_BRESP;
  wire processor_M_AXI_DC_BVALID;
  wire [31:0]processor_M_AXI_DC_RDATA;
  wire processor_M_AXI_DC_RLAST;
  wire processor_M_AXI_DC_RREADY;
  wire [1:0]processor_M_AXI_DC_RRESP;
  wire processor_M_AXI_DC_RVALID;
  wire [31:0]processor_M_AXI_DC_WDATA;
  wire processor_M_AXI_DC_WLAST;
  wire processor_M_AXI_DC_WREADY;
  wire [3:0]processor_M_AXI_DC_WSTRB;
  wire processor_M_AXI_DC_WVALID;
  wire [31:0]processor_M_AXI_IC_ARADDR;
  wire [1:0]processor_M_AXI_IC_ARBURST;
  wire [3:0]processor_M_AXI_IC_ARCACHE;
  wire [7:0]processor_M_AXI_IC_ARLEN;
  wire processor_M_AXI_IC_ARLOCK;
  wire [2:0]processor_M_AXI_IC_ARPROT;
  wire [3:0]processor_M_AXI_IC_ARQOS;
  wire processor_M_AXI_IC_ARREADY;
  wire [2:0]processor_M_AXI_IC_ARSIZE;
  wire processor_M_AXI_IC_ARVALID;
  wire [31:0]processor_M_AXI_IC_RDATA;
  wire processor_M_AXI_IC_RLAST;
  wire processor_M_AXI_IC_RREADY;
  wire [1:0]processor_M_AXI_IC_RRESP;
  wire processor_M_AXI_IC_RVALID;
  wire [31:0]processor_axi_periph_M02_AXI_ARADDR;
  wire processor_axi_periph_M02_AXI_ARREADY;
  wire processor_axi_periph_M02_AXI_ARVALID;
  wire [31:0]processor_axi_periph_M02_AXI_AWADDR;
  wire processor_axi_periph_M02_AXI_AWREADY;
  wire processor_axi_periph_M02_AXI_AWVALID;
  wire processor_axi_periph_M02_AXI_BREADY;
  wire [1:0]processor_axi_periph_M02_AXI_BRESP;
  wire processor_axi_periph_M02_AXI_BVALID;
  wire [31:0]processor_axi_periph_M02_AXI_RDATA;
  wire processor_axi_periph_M02_AXI_RREADY;
  wire [1:0]processor_axi_periph_M02_AXI_RRESP;
  wire processor_axi_periph_M02_AXI_RVALID;
  wire [31:0]processor_axi_periph_M02_AXI_WDATA;
  wire processor_axi_periph_M02_AXI_WREADY;
  wire [3:0]processor_axi_periph_M02_AXI_WSTRB;
  wire processor_axi_periph_M02_AXI_WVALID;
  wire [8:0]processor_axi_periph_M03_AXI_ARADDR;
  wire processor_axi_periph_M03_AXI_ARREADY;
  wire processor_axi_periph_M03_AXI_ARVALID;
  wire [8:0]processor_axi_periph_M03_AXI_AWADDR;
  wire processor_axi_periph_M03_AXI_AWREADY;
  wire processor_axi_periph_M03_AXI_AWVALID;
  wire processor_axi_periph_M03_AXI_BREADY;
  wire [1:0]processor_axi_periph_M03_AXI_BRESP;
  wire processor_axi_periph_M03_AXI_BVALID;
  wire [31:0]processor_axi_periph_M03_AXI_RDATA;
  wire processor_axi_periph_M03_AXI_RREADY;
  wire [1:0]processor_axi_periph_M03_AXI_RRESP;
  wire processor_axi_periph_M03_AXI_RVALID;
  wire [31:0]processor_axi_periph_M03_AXI_WDATA;
  wire processor_axi_periph_M03_AXI_WREADY;
  wire [3:0]processor_axi_periph_M03_AXI_WSTRB;
  wire processor_axi_periph_M03_AXI_WVALID;
  wire [8:0]processor_axi_periph_M04_AXI_ARADDR;
  wire processor_axi_periph_M04_AXI_ARREADY;
  wire processor_axi_periph_M04_AXI_ARVALID;
  wire [8:0]processor_axi_periph_M04_AXI_AWADDR;
  wire processor_axi_periph_M04_AXI_AWREADY;
  wire processor_axi_periph_M04_AXI_AWVALID;
  wire processor_axi_periph_M04_AXI_BREADY;
  wire [1:0]processor_axi_periph_M04_AXI_BRESP;
  wire processor_axi_periph_M04_AXI_BVALID;
  wire [31:0]processor_axi_periph_M04_AXI_RDATA;
  wire processor_axi_periph_M04_AXI_RREADY;
  wire [1:0]processor_axi_periph_M04_AXI_RRESP;
  wire processor_axi_periph_M04_AXI_RVALID;
  wire [31:0]processor_axi_periph_M04_AXI_WDATA;
  wire processor_axi_periph_M04_AXI_WREADY;
  wire [3:0]processor_axi_periph_M04_AXI_WSTRB;
  wire processor_axi_periph_M04_AXI_WVALID;
  wire [6:0]processor_axi_periph_M05_AXI_ARADDR;
  wire processor_axi_periph_M05_AXI_ARREADY;
  wire processor_axi_periph_M05_AXI_ARVALID;
  wire [6:0]processor_axi_periph_M05_AXI_AWADDR;
  wire processor_axi_periph_M05_AXI_AWREADY;
  wire processor_axi_periph_M05_AXI_AWVALID;
  wire processor_axi_periph_M05_AXI_BREADY;
  wire [1:0]processor_axi_periph_M05_AXI_BRESP;
  wire processor_axi_periph_M05_AXI_BVALID;
  wire [31:0]processor_axi_periph_M05_AXI_RDATA;
  wire processor_axi_periph_M05_AXI_RREADY;
  wire [1:0]processor_axi_periph_M05_AXI_RRESP;
  wire processor_axi_periph_M05_AXI_RVALID;
  wire [31:0]processor_axi_periph_M05_AXI_WDATA;
  wire processor_axi_periph_M05_AXI_WREADY;
  wire [3:0]processor_axi_periph_M05_AXI_WSTRB;
  wire processor_axi_periph_M05_AXI_WVALID;
  wire [3:0]processor_ss_M06_AXI_ARADDR;
  wire processor_ss_M06_AXI_ARREADY;
  wire processor_ss_M06_AXI_ARVALID;
  wire [3:0]processor_ss_M06_AXI_AWADDR;
  wire processor_ss_M06_AXI_AWREADY;
  wire processor_ss_M06_AXI_AWVALID;
  wire processor_ss_M06_AXI_BREADY;
  wire [1:0]processor_ss_M06_AXI_BRESP;
  wire processor_ss_M06_AXI_BVALID;
  wire [31:0]processor_ss_M06_AXI_RDATA;
  wire processor_ss_M06_AXI_RREADY;
  wire [1:0]processor_ss_M06_AXI_RRESP;
  wire processor_ss_M06_AXI_RVALID;
  wire [31:0]processor_ss_M06_AXI_WDATA;
  wire processor_ss_M06_AXI_WREADY;
  wire [3:0]processor_ss_M06_AXI_WSTRB;
  wire processor_ss_M06_AXI_WVALID;
  wire [6:0]processor_ss_M07_AXI_ARADDR;
  wire processor_ss_M07_AXI_ARREADY;
  wire processor_ss_M07_AXI_ARVALID;
  wire [6:0]processor_ss_M07_AXI_AWADDR;
  wire processor_ss_M07_AXI_AWREADY;
  wire processor_ss_M07_AXI_AWVALID;
  wire processor_ss_M07_AXI_BREADY;
  wire [1:0]processor_ss_M07_AXI_BRESP;
  wire processor_ss_M07_AXI_BVALID;
  wire [31:0]processor_ss_M07_AXI_RDATA;
  wire processor_ss_M07_AXI_RREADY;
  wire [1:0]processor_ss_M07_AXI_RRESP;
  wire processor_ss_M07_AXI_RVALID;
  wire [31:0]processor_ss_M07_AXI_WDATA;
  wire processor_ss_M07_AXI_WREADY;
  wire [3:0]processor_ss_M07_AXI_WSTRB;
  wire processor_ss_M07_AXI_WVALID;
  wire [12:0]processor_ss_M08_AXI_ARADDR;
  wire processor_ss_M08_AXI_ARREADY;
  wire processor_ss_M08_AXI_ARVALID;
  wire [12:0]processor_ss_M08_AXI_AWADDR;
  wire processor_ss_M08_AXI_AWREADY;
  wire processor_ss_M08_AXI_AWVALID;
  wire processor_ss_M08_AXI_BREADY;
  wire [1:0]processor_ss_M08_AXI_BRESP;
  wire processor_ss_M08_AXI_BVALID;
  wire [31:0]processor_ss_M08_AXI_RDATA;
  wire processor_ss_M08_AXI_RREADY;
  wire [1:0]processor_ss_M08_AXI_RRESP;
  wire processor_ss_M08_AXI_RVALID;
  wire [31:0]processor_ss_M08_AXI_WDATA;
  wire processor_ss_M08_AXI_WREADY;
  wire [3:0]processor_ss_M08_AXI_WSTRB;
  wire processor_ss_M08_AXI_WVALID;
  wire [4:0]processor_ss_M09_AXI_ARADDR;
  wire processor_ss_M09_AXI_ARREADY;
  wire processor_ss_M09_AXI_ARVALID;
  wire [4:0]processor_ss_M09_AXI_AWADDR;
  wire processor_ss_M09_AXI_AWREADY;
  wire processor_ss_M09_AXI_AWVALID;
  wire processor_ss_M09_AXI_BREADY;
  wire [1:0]processor_ss_M09_AXI_BRESP;
  wire processor_ss_M09_AXI_BVALID;
  wire [31:0]processor_ss_M09_AXI_RDATA;
  wire processor_ss_M09_AXI_RREADY;
  wire [1:0]processor_ss_M09_AXI_RRESP;
  wire processor_ss_M09_AXI_RVALID;
  wire [31:0]processor_ss_M09_AXI_WDATA;
  wire processor_ss_M09_AXI_WREADY;
  wire [3:0]processor_ss_M09_AXI_WSTRB;
  wire processor_ss_M09_AXI_WVALID;
  wire reset_1;
  wire [0:0]rst_clk_wiz_1_100M_bus_struct_reset;
  wire rst_clk_wiz_1_100M_mb_reset;
  wire [0:0]rst_clk_wiz_1_100M_peripheral_aresetn;
  wire [0:0]rst_clk_wiz_1_150M_peripheral_aresetn;
  wire [0:0]rst_clk_wiz_1_200M_peripheral_aresetn;
  wire sys_clock_1;
  wire v_frmbuf_rd_0_interrupt;
  wire [31:0]v_frmbuf_rd_0_m_axi_mm_video_ARADDR;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_ARBURST;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_ARCACHE;
  wire [7:0]v_frmbuf_rd_0_m_axi_mm_video_ARLEN;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_ARLOCK;
  wire [2:0]v_frmbuf_rd_0_m_axi_mm_video_ARPROT;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_ARQOS;
  wire v_frmbuf_rd_0_m_axi_mm_video_ARREADY;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_ARREGION;
  wire [2:0]v_frmbuf_rd_0_m_axi_mm_video_ARSIZE;
  wire v_frmbuf_rd_0_m_axi_mm_video_ARVALID;
  wire [31:0]v_frmbuf_rd_0_m_axi_mm_video_AWADDR;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_AWBURST;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_AWCACHE;
  wire [7:0]v_frmbuf_rd_0_m_axi_mm_video_AWLEN;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_AWLOCK;
  wire [2:0]v_frmbuf_rd_0_m_axi_mm_video_AWPROT;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_AWQOS;
  wire v_frmbuf_rd_0_m_axi_mm_video_AWREADY;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_AWREGION;
  wire [2:0]v_frmbuf_rd_0_m_axi_mm_video_AWSIZE;
  wire v_frmbuf_rd_0_m_axi_mm_video_AWVALID;
  wire v_frmbuf_rd_0_m_axi_mm_video_BREADY;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_BRESP;
  wire v_frmbuf_rd_0_m_axi_mm_video_BVALID;
  wire [63:0]v_frmbuf_rd_0_m_axi_mm_video_RDATA;
  wire v_frmbuf_rd_0_m_axi_mm_video_RLAST;
  wire v_frmbuf_rd_0_m_axi_mm_video_RREADY;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_RRESP;
  wire v_frmbuf_rd_0_m_axi_mm_video_RVALID;
  wire [63:0]v_frmbuf_rd_0_m_axi_mm_video_WDATA;
  wire v_frmbuf_rd_0_m_axi_mm_video_WLAST;
  wire v_frmbuf_rd_0_m_axi_mm_video_WREADY;
  wire [7:0]v_frmbuf_rd_0_m_axi_mm_video_WSTRB;
  wire v_frmbuf_rd_0_m_axi_mm_video_WVALID;
  wire [23:0]v_frmbuf_rd_0_m_axis_video_TDATA;
  wire [0:0]v_frmbuf_rd_0_m_axis_video_TLAST;
  wire v_frmbuf_rd_0_m_axis_video_TREADY;
  wire [0:0]v_frmbuf_rd_0_m_axis_video_TUSER;
  wire v_frmbuf_rd_0_m_axis_video_TVALID;
  wire v_tc_0_vtiming_out_ACTIVE_VIDEO;
  wire v_tc_0_vtiming_out_HBLANK;
  wire v_tc_0_vtiming_out_HSYNC;
  wire v_tc_0_vtiming_out_VBLANK;
  wire v_tc_0_vtiming_out_VSYNC;
  wire vid_out_locked;
  wire vid_out_vid_active_video;
  wire [23:0]vid_out_vid_data;
  wire vid_out_vid_hsync;
  wire vid_out_vid_vsync;
  wire vid_out_vtg_ce;
  wire [2:0]xlconcat_0_dout;
  wire [3:0]xlslice_0_Dout;
  wire [3:0]xlslice_1_Dout;
  wire [3:0]xlslice_2_Dout;

  assign Blue[3:0] = xlslice_2_Dout;
  assign Green[3:0] = xlslice_1_Dout;
  assign Red[3:0] = xlslice_0_Dout;
  assign axi_ethernetlite_0_MDIO_MDIO_I = eth_mdio_mdc_mdio_i;
  assign axi_ethernetlite_0_MII_COL = eth_mii_col;
  assign axi_ethernetlite_0_MII_CRS = eth_mii_crs;
  assign axi_ethernetlite_0_MII_RXD = eth_mii_rxd[3:0];
  assign axi_ethernetlite_0_MII_RX_CLK = eth_mii_rx_clk;
  assign axi_ethernetlite_0_MII_RX_DV = eth_mii_rx_dv;
  assign axi_ethernetlite_0_MII_RX_ER = eth_mii_rx_er;
  assign axi_ethernetlite_0_MII_TX_CLK = eth_mii_tx_clk;
  assign axi_quad_spi_0_SPI_0_IO0_I = qspi_flash_io0_i;
  assign axi_quad_spi_0_SPI_0_IO1_I = qspi_flash_io1_i;
  assign axi_quad_spi_0_SPI_0_IO2_I = qspi_flash_io2_i;
  assign axi_quad_spi_0_SPI_0_IO3_I = qspi_flash_io3_i;
  assign axi_quad_spi_0_SPI_0_SCK_I = qspi_flash_sck_i;
  assign axi_quad_spi_0_SPI_0_SS_I = qspi_flash_ss_i;
  assign axi_uartlite_0_UART_RxD = usb_uart_rxd;
  assign clk = clk_wiz_1_clk_out2;
  assign ddr3_sdram_addr[13:0] = mig_DDR3_ADDR;
  assign ddr3_sdram_ba[2:0] = mig_DDR3_BA;
  assign ddr3_sdram_cas_n = mig_DDR3_CAS_N;
  assign ddr3_sdram_ck_n[0] = mig_DDR3_CK_N;
  assign ddr3_sdram_ck_p[0] = mig_DDR3_CK_P;
  assign ddr3_sdram_cke[0] = mig_DDR3_CKE;
  assign ddr3_sdram_cs_n[0] = mig_DDR3_CS_N;
  assign ddr3_sdram_dm[1:0] = mig_DDR3_DM;
  assign ddr3_sdram_odt[0] = mig_DDR3_ODT;
  assign ddr3_sdram_ras_n = mig_DDR3_RAS_N;
  assign ddr3_sdram_reset_n = mig_DDR3_RESET_N;
  assign ddr3_sdram_we_n = mig_DDR3_WE_N;
  assign eth_mdio_mdc_mdc = axi_ethernetlite_0_MDIO_MDC;
  assign eth_mdio_mdc_mdio_o = axi_ethernetlite_0_MDIO_MDIO_O;
  assign eth_mdio_mdc_mdio_t = axi_ethernetlite_0_MDIO_MDIO_T;
  assign eth_mii_rst_n = axi_ethernetlite_0_MII_RST_N;
  assign eth_mii_tx_en = axi_ethernetlite_0_MII_TX_EN;
  assign eth_mii_txd[3:0] = axi_ethernetlite_0_MII_TXD;
  assign qspi_flash_io0_o = axi_quad_spi_0_SPI_0_IO0_O;
  assign qspi_flash_io0_t = axi_quad_spi_0_SPI_0_IO0_T;
  assign qspi_flash_io1_o = axi_quad_spi_0_SPI_0_IO1_O;
  assign qspi_flash_io1_t = axi_quad_spi_0_SPI_0_IO1_T;
  assign qspi_flash_io2_o = axi_quad_spi_0_SPI_0_IO2_O;
  assign qspi_flash_io2_t = axi_quad_spi_0_SPI_0_IO2_T;
  assign qspi_flash_io3_o = axi_quad_spi_0_SPI_0_IO3_O;
  assign qspi_flash_io3_t = axi_quad_spi_0_SPI_0_IO3_T;
  assign qspi_flash_sck_o = axi_quad_spi_0_SPI_0_SCK_O;
  assign qspi_flash_sck_t = axi_quad_spi_0_SPI_0_SCK_T;
  assign qspi_flash_ss_o = axi_quad_spi_0_SPI_0_SS_O;
  assign qspi_flash_ss_t = axi_quad_spi_0_SPI_0_SS_T;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  assign usb_uart_txd = axi_uartlite_0_UART_TxD;
  assign vid_active_video_0 = vid_out_vid_active_video;
  assign vid_hsync_0 = vid_out_vid_hsync;
  assign vid_vsync_0 = vid_out_vid_vsync;
  ex_synth_axi_ethernetlite_0_0 axi_ethernetlite_0
       (.phy_col(axi_ethernetlite_0_MII_COL),
        .phy_crs(axi_ethernetlite_0_MII_CRS),
        .phy_dv(axi_ethernetlite_0_MII_RX_DV),
        .phy_mdc(axi_ethernetlite_0_MDIO_MDC),
        .phy_mdio_i(axi_ethernetlite_0_MDIO_MDIO_I),
        .phy_mdio_o(axi_ethernetlite_0_MDIO_MDIO_O),
        .phy_mdio_t(axi_ethernetlite_0_MDIO_MDIO_T),
        .phy_rst_n(axi_ethernetlite_0_MII_RST_N),
        .phy_rx_clk(axi_ethernetlite_0_MII_RX_CLK),
        .phy_rx_data(axi_ethernetlite_0_MII_RXD),
        .phy_rx_er(axi_ethernetlite_0_MII_RX_ER),
        .phy_tx_clk(axi_ethernetlite_0_MII_TX_CLK),
        .phy_tx_data(axi_ethernetlite_0_MII_TXD),
        .phy_tx_en(axi_ethernetlite_0_MII_TX_EN),
        .s_axi_aclk(clk_wiz_1_clk_out3),
        .s_axi_araddr(processor_ss_M08_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(processor_ss_M08_AXI_ARREADY),
        .s_axi_arvalid(processor_ss_M08_AXI_ARVALID),
        .s_axi_awaddr(processor_ss_M08_AXI_AWADDR),
        .s_axi_awready(processor_ss_M08_AXI_AWREADY),
        .s_axi_awvalid(processor_ss_M08_AXI_AWVALID),
        .s_axi_bready(processor_ss_M08_AXI_BREADY),
        .s_axi_bresp(processor_ss_M08_AXI_BRESP),
        .s_axi_bvalid(processor_ss_M08_AXI_BVALID),
        .s_axi_rdata(processor_ss_M08_AXI_RDATA),
        .s_axi_rready(processor_ss_M08_AXI_RREADY),
        .s_axi_rresp(processor_ss_M08_AXI_RRESP),
        .s_axi_rvalid(processor_ss_M08_AXI_RVALID),
        .s_axi_wdata(processor_ss_M08_AXI_WDATA),
        .s_axi_wready(processor_ss_M08_AXI_WREADY),
        .s_axi_wstrb(processor_ss_M08_AXI_WSTRB),
        .s_axi_wvalid(processor_ss_M08_AXI_WVALID));
  ex_synth_axi_quad_spi_0_0 axi_quad_spi_0
       (.ext_spi_clk(mig_ui_clk),
        .io0_i(axi_quad_spi_0_SPI_0_IO0_I),
        .io0_o(axi_quad_spi_0_SPI_0_IO0_O),
        .io0_t(axi_quad_spi_0_SPI_0_IO0_T),
        .io1_i(axi_quad_spi_0_SPI_0_IO1_I),
        .io1_o(axi_quad_spi_0_SPI_0_IO1_O),
        .io1_t(axi_quad_spi_0_SPI_0_IO1_T),
        .io2_i(axi_quad_spi_0_SPI_0_IO2_I),
        .io2_o(axi_quad_spi_0_SPI_0_IO2_O),
        .io2_t(axi_quad_spi_0_SPI_0_IO2_T),
        .io3_i(axi_quad_spi_0_SPI_0_IO3_I),
        .io3_o(axi_quad_spi_0_SPI_0_IO3_O),
        .io3_t(axi_quad_spi_0_SPI_0_IO3_T),
        .ip2intc_irpt(axi_quad_spi_0_ip2intc_irpt),
        .s_axi_aclk(clk_wiz_1_clk_out3),
        .s_axi_araddr(processor_ss_M07_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(processor_ss_M07_AXI_ARREADY),
        .s_axi_arvalid(processor_ss_M07_AXI_ARVALID),
        .s_axi_awaddr(processor_ss_M07_AXI_AWADDR),
        .s_axi_awready(processor_ss_M07_AXI_AWREADY),
        .s_axi_awvalid(processor_ss_M07_AXI_AWVALID),
        .s_axi_bready(processor_ss_M07_AXI_BREADY),
        .s_axi_bresp(processor_ss_M07_AXI_BRESP),
        .s_axi_bvalid(processor_ss_M07_AXI_BVALID),
        .s_axi_rdata(processor_ss_M07_AXI_RDATA),
        .s_axi_rready(processor_ss_M07_AXI_RREADY),
        .s_axi_rresp(processor_ss_M07_AXI_RRESP),
        .s_axi_rvalid(processor_ss_M07_AXI_RVALID),
        .s_axi_wdata(processor_ss_M07_AXI_WDATA),
        .s_axi_wready(processor_ss_M07_AXI_WREADY),
        .s_axi_wstrb(processor_ss_M07_AXI_WSTRB),
        .s_axi_wvalid(processor_ss_M07_AXI_WVALID),
        .sck_i(axi_quad_spi_0_SPI_0_SCK_I),
        .sck_o(axi_quad_spi_0_SPI_0_SCK_O),
        .sck_t(axi_quad_spi_0_SPI_0_SCK_T),
        .ss_i(axi_quad_spi_0_SPI_0_SS_I),
        .ss_o(axi_quad_spi_0_SPI_0_SS_O),
        .ss_t(axi_quad_spi_0_SPI_0_SS_T));
  ex_synth_axi_timer_0_0 axi_timer_0
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .s_axi_aclk(clk_wiz_1_clk_out3),
        .s_axi_araddr(processor_ss_M09_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(processor_ss_M09_AXI_ARREADY),
        .s_axi_arvalid(processor_ss_M09_AXI_ARVALID),
        .s_axi_awaddr(processor_ss_M09_AXI_AWADDR),
        .s_axi_awready(processor_ss_M09_AXI_AWREADY),
        .s_axi_awvalid(processor_ss_M09_AXI_AWVALID),
        .s_axi_bready(processor_ss_M09_AXI_BREADY),
        .s_axi_bresp(processor_ss_M09_AXI_BRESP),
        .s_axi_bvalid(processor_ss_M09_AXI_BVALID),
        .s_axi_rdata(processor_ss_M09_AXI_RDATA),
        .s_axi_rready(processor_ss_M09_AXI_RREADY),
        .s_axi_rresp(processor_ss_M09_AXI_RRESP),
        .s_axi_rvalid(processor_ss_M09_AXI_RVALID),
        .s_axi_wdata(processor_ss_M09_AXI_WDATA),
        .s_axi_wready(processor_ss_M09_AXI_WREADY),
        .s_axi_wstrb(processor_ss_M09_AXI_WSTRB),
        .s_axi_wvalid(processor_ss_M09_AXI_WVALID));
  ex_synth_axi_uartlite_0_0 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(axi_uartlite_0_UART_RxD),
        .s_axi_aclk(clk_wiz_1_clk_out3),
        .s_axi_araddr(processor_ss_M06_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_200M_peripheral_aresetn),
        .s_axi_arready(processor_ss_M06_AXI_ARREADY),
        .s_axi_arvalid(processor_ss_M06_AXI_ARVALID),
        .s_axi_awaddr(processor_ss_M06_AXI_AWADDR),
        .s_axi_awready(processor_ss_M06_AXI_AWREADY),
        .s_axi_awvalid(processor_ss_M06_AXI_AWVALID),
        .s_axi_bready(processor_ss_M06_AXI_BREADY),
        .s_axi_bresp(processor_ss_M06_AXI_BRESP),
        .s_axi_bvalid(processor_ss_M06_AXI_BVALID),
        .s_axi_rdata(processor_ss_M06_AXI_RDATA),
        .s_axi_rready(processor_ss_M06_AXI_RREADY),
        .s_axi_rresp(processor_ss_M06_AXI_RRESP),
        .s_axi_rvalid(processor_ss_M06_AXI_RVALID),
        .s_axi_wdata(processor_ss_M06_AXI_WDATA),
        .s_axi_wready(processor_ss_M06_AXI_WREADY),
        .s_axi_wstrb(processor_ss_M06_AXI_WSTRB),
        .s_axi_wvalid(processor_ss_M06_AXI_WVALID),
        .tx(axi_uartlite_0_UART_TxD));
  ex_synth_xlslice_1_0 blue_2
       (.Din(vid_out_vid_data),
        .Dout(xlslice_2_Dout));
  ex_synth_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .resetn(reset_1));
  clock_and_reset_imp_1YV5WNU clock_and_reset
       (.bus_struct_reset(rst_clk_wiz_1_100M_bus_struct_reset),
        .clk_in1(mig_ui_clk),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .mb_reset(rst_clk_wiz_1_100M_mb_reset),
        .peripheral_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .peripheral_aresetn1(rst_clk_wiz_1_150M_peripheral_aresetn),
        .peripheral_aresetn2(rst_clk_wiz_1_200M_peripheral_aresetn),
        .reset(reset_1),
        .slowest_sync_clk(processor_Clk),
        .slowest_sync_clk1(clk_wiz_1_clk_out2),
        .slowest_sync_clk2(clk_wiz_1_clk_out3));
  ex_synth_xlslice_0_1 green_1
       (.Din(vid_out_vid_data),
        .Dout(xlslice_1_Dout));
  ex_synth_hls_ip_reset_0 hls_ip_reset
       (.gpio_io_o(hls_ip_reset_gpio_io_o),
        .s_axi_aclk(clk_wiz_1_clk_out3),
        .s_axi_araddr(processor_axi_periph_M04_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_200M_peripheral_aresetn),
        .s_axi_arready(processor_axi_periph_M04_AXI_ARREADY),
        .s_axi_arvalid(processor_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr(processor_axi_periph_M04_AXI_AWADDR),
        .s_axi_awready(processor_axi_periph_M04_AXI_AWREADY),
        .s_axi_awvalid(processor_axi_periph_M04_AXI_AWVALID),
        .s_axi_bready(processor_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(processor_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(processor_axi_periph_M04_AXI_BVALID),
        .s_axi_rdata(processor_axi_periph_M04_AXI_RDATA),
        .s_axi_rready(processor_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(processor_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(processor_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata(processor_axi_periph_M04_AXI_WDATA),
        .s_axi_wready(processor_axi_periph_M04_AXI_WREADY),
        .s_axi_wstrb(processor_axi_periph_M04_AXI_WSTRB),
        .s_axi_wvalid(processor_axi_periph_M04_AXI_WVALID));
  memory_ss_imp_13FY2QP memory_ss
       (.M00_ACLK(mig_ui_clk),
        .S00_AXI_araddr(processor_M_AXI_DC_ARADDR),
        .S00_AXI_arburst(processor_M_AXI_DC_ARBURST),
        .S00_AXI_arcache(processor_M_AXI_DC_ARCACHE),
        .S00_AXI_arlen(processor_M_AXI_DC_ARLEN),
        .S00_AXI_arlock(processor_M_AXI_DC_ARLOCK),
        .S00_AXI_arprot(processor_M_AXI_DC_ARPROT),
        .S00_AXI_arqos(processor_M_AXI_DC_ARQOS),
        .S00_AXI_arready(processor_M_AXI_DC_ARREADY),
        .S00_AXI_arsize(processor_M_AXI_DC_ARSIZE),
        .S00_AXI_arvalid(processor_M_AXI_DC_ARVALID),
        .S00_AXI_awaddr(processor_M_AXI_DC_AWADDR),
        .S00_AXI_awburst(processor_M_AXI_DC_AWBURST),
        .S00_AXI_awcache(processor_M_AXI_DC_AWCACHE),
        .S00_AXI_awlen(processor_M_AXI_DC_AWLEN),
        .S00_AXI_awlock(processor_M_AXI_DC_AWLOCK),
        .S00_AXI_awprot(processor_M_AXI_DC_AWPROT),
        .S00_AXI_awqos(processor_M_AXI_DC_AWQOS),
        .S00_AXI_awready(processor_M_AXI_DC_AWREADY),
        .S00_AXI_awsize(processor_M_AXI_DC_AWSIZE),
        .S00_AXI_awvalid(processor_M_AXI_DC_AWVALID),
        .S00_AXI_bready(processor_M_AXI_DC_BREADY),
        .S00_AXI_bresp(processor_M_AXI_DC_BRESP),
        .S00_AXI_bvalid(processor_M_AXI_DC_BVALID),
        .S00_AXI_rdata(processor_M_AXI_DC_RDATA),
        .S00_AXI_rlast(processor_M_AXI_DC_RLAST),
        .S00_AXI_rready(processor_M_AXI_DC_RREADY),
        .S00_AXI_rresp(processor_M_AXI_DC_RRESP),
        .S00_AXI_rvalid(processor_M_AXI_DC_RVALID),
        .S00_AXI_wdata(processor_M_AXI_DC_WDATA),
        .S00_AXI_wlast(processor_M_AXI_DC_WLAST),
        .S00_AXI_wready(processor_M_AXI_DC_WREADY),
        .S00_AXI_wstrb(processor_M_AXI_DC_WSTRB),
        .S00_AXI_wvalid(processor_M_AXI_DC_WVALID),
        .S01_ACLK(processor_Clk),
        .S01_ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .S01_AXI_araddr(processor_M_AXI_IC_ARADDR),
        .S01_AXI_arburst(processor_M_AXI_IC_ARBURST),
        .S01_AXI_arcache(processor_M_AXI_IC_ARCACHE),
        .S01_AXI_arlen(processor_M_AXI_IC_ARLEN),
        .S01_AXI_arlock(processor_M_AXI_IC_ARLOCK),
        .S01_AXI_arprot(processor_M_AXI_IC_ARPROT),
        .S01_AXI_arqos(processor_M_AXI_IC_ARQOS),
        .S01_AXI_arready(processor_M_AXI_IC_ARREADY),
        .S01_AXI_arsize(processor_M_AXI_IC_ARSIZE),
        .S01_AXI_arvalid(processor_M_AXI_IC_ARVALID),
        .S01_AXI_rdata(processor_M_AXI_IC_RDATA),
        .S01_AXI_rlast(processor_M_AXI_IC_RLAST),
        .S01_AXI_rready(processor_M_AXI_IC_RREADY),
        .S01_AXI_rresp(processor_M_AXI_IC_RRESP),
        .S01_AXI_rvalid(processor_M_AXI_IC_RVALID),
        .S02_ACLK(clk_wiz_1_clk_out3),
        .S02_ARESETN(rst_clk_wiz_1_200M_peripheral_aresetn),
        .S02_AXI_araddr(v_frmbuf_rd_0_m_axi_mm_video_ARADDR),
        .S02_AXI_arburst(v_frmbuf_rd_0_m_axi_mm_video_ARBURST),
        .S02_AXI_arcache(v_frmbuf_rd_0_m_axi_mm_video_ARCACHE),
        .S02_AXI_arlen(v_frmbuf_rd_0_m_axi_mm_video_ARLEN),
        .S02_AXI_arlock(v_frmbuf_rd_0_m_axi_mm_video_ARLOCK),
        .S02_AXI_arprot(v_frmbuf_rd_0_m_axi_mm_video_ARPROT),
        .S02_AXI_arqos(v_frmbuf_rd_0_m_axi_mm_video_ARQOS),
        .S02_AXI_arready(v_frmbuf_rd_0_m_axi_mm_video_ARREADY),
        .S02_AXI_arregion(v_frmbuf_rd_0_m_axi_mm_video_ARREGION),
        .S02_AXI_arsize(v_frmbuf_rd_0_m_axi_mm_video_ARSIZE),
        .S02_AXI_arvalid(v_frmbuf_rd_0_m_axi_mm_video_ARVALID),
        .S02_AXI_awaddr(v_frmbuf_rd_0_m_axi_mm_video_AWADDR),
        .S02_AXI_awburst(v_frmbuf_rd_0_m_axi_mm_video_AWBURST),
        .S02_AXI_awcache(v_frmbuf_rd_0_m_axi_mm_video_AWCACHE),
        .S02_AXI_awlen(v_frmbuf_rd_0_m_axi_mm_video_AWLEN),
        .S02_AXI_awlock(v_frmbuf_rd_0_m_axi_mm_video_AWLOCK),
        .S02_AXI_awprot(v_frmbuf_rd_0_m_axi_mm_video_AWPROT),
        .S02_AXI_awqos(v_frmbuf_rd_0_m_axi_mm_video_AWQOS),
        .S02_AXI_awready(v_frmbuf_rd_0_m_axi_mm_video_AWREADY),
        .S02_AXI_awregion(v_frmbuf_rd_0_m_axi_mm_video_AWREGION),
        .S02_AXI_awsize(v_frmbuf_rd_0_m_axi_mm_video_AWSIZE),
        .S02_AXI_awvalid(v_frmbuf_rd_0_m_axi_mm_video_AWVALID),
        .S02_AXI_bready(v_frmbuf_rd_0_m_axi_mm_video_BREADY),
        .S02_AXI_bresp(v_frmbuf_rd_0_m_axi_mm_video_BRESP),
        .S02_AXI_bvalid(v_frmbuf_rd_0_m_axi_mm_video_BVALID),
        .S02_AXI_rdata(v_frmbuf_rd_0_m_axi_mm_video_RDATA),
        .S02_AXI_rlast(v_frmbuf_rd_0_m_axi_mm_video_RLAST),
        .S02_AXI_rready(v_frmbuf_rd_0_m_axi_mm_video_RREADY),
        .S02_AXI_rresp(v_frmbuf_rd_0_m_axi_mm_video_RRESP),
        .S02_AXI_rvalid(v_frmbuf_rd_0_m_axi_mm_video_RVALID),
        .S02_AXI_wdata(v_frmbuf_rd_0_m_axi_mm_video_WDATA),
        .S02_AXI_wlast(v_frmbuf_rd_0_m_axi_mm_video_WLAST),
        .S02_AXI_wready(v_frmbuf_rd_0_m_axi_mm_video_WREADY),
        .S02_AXI_wstrb(v_frmbuf_rd_0_m_axi_mm_video_WSTRB),
        .S02_AXI_wvalid(v_frmbuf_rd_0_m_axi_mm_video_WVALID),
        .clk_ref_i(clk_wiz_0_clk_out2),
        .ddr3_sdram_addr(mig_DDR3_ADDR),
        .ddr3_sdram_ba(mig_DDR3_BA),
        .ddr3_sdram_cas_n(mig_DDR3_CAS_N),
        .ddr3_sdram_ck_n(mig_DDR3_CK_N),
        .ddr3_sdram_ck_p(mig_DDR3_CK_P),
        .ddr3_sdram_cke(mig_DDR3_CKE),
        .ddr3_sdram_cs_n(mig_DDR3_CS_N),
        .ddr3_sdram_dm(mig_DDR3_DM),
        .ddr3_sdram_dq(ddr3_sdram_dq[15:0]),
        .ddr3_sdram_dqs_n(ddr3_sdram_dqs_n[1:0]),
        .ddr3_sdram_dqs_p(ddr3_sdram_dqs_p[1:0]),
        .ddr3_sdram_odt(mig_DDR3_ODT),
        .ddr3_sdram_ras_n(mig_DDR3_RAS_N),
        .ddr3_sdram_reset_n(mig_DDR3_RESET_N),
        .ddr3_sdram_we_n(mig_DDR3_WE_N),
        .reset(reset_1),
        .sys_clk_i(clk_wiz_0_clk_out1));
  processor_ss_imp_C8KBYH processor_ss
       (.ACLK(processor_Clk),
        .ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .Debug_SYS_Rst(mdm_1_debug_sys_rst),
        .M01_AXI_arready(1'b0),
        .M01_AXI_awready(1'b0),
        .M01_AXI_bresp(1'b0),
        .M01_AXI_bvalid(1'b0),
        .M01_AXI_rdata(1'b0),
        .M01_AXI_rresp(1'b0),
        .M01_AXI_rvalid(1'b0),
        .M01_AXI_wready(1'b0),
        .M02_AXI_araddr(processor_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(processor_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(processor_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(processor_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(processor_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(processor_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(processor_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(processor_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(processor_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(processor_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(processor_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(processor_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(processor_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(processor_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(processor_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(processor_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(processor_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(clk_wiz_1_clk_out2),
        .M03_ARESETN(rst_clk_wiz_1_150M_peripheral_aresetn),
        .M03_AXI_araddr(processor_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arready(processor_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(processor_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(processor_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awready(processor_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(processor_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(processor_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(processor_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(processor_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(processor_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(processor_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(processor_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(processor_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(processor_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(processor_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(processor_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(processor_axi_periph_M03_AXI_WVALID),
        .M04_AXI_araddr(processor_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arready(processor_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(processor_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(processor_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awready(processor_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(processor_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(processor_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(processor_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(processor_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(processor_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(processor_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(processor_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(processor_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(processor_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(processor_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(processor_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(processor_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(clk_wiz_1_clk_out3),
        .M05_ARESETN(rst_clk_wiz_1_200M_peripheral_aresetn),
        .M05_AXI_araddr(processor_axi_periph_M05_AXI_ARADDR),
        .M05_AXI_arready(processor_axi_periph_M05_AXI_ARREADY),
        .M05_AXI_arvalid(processor_axi_periph_M05_AXI_ARVALID),
        .M05_AXI_awaddr(processor_axi_periph_M05_AXI_AWADDR),
        .M05_AXI_awready(processor_axi_periph_M05_AXI_AWREADY),
        .M05_AXI_awvalid(processor_axi_periph_M05_AXI_AWVALID),
        .M05_AXI_bready(processor_axi_periph_M05_AXI_BREADY),
        .M05_AXI_bresp(processor_axi_periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(processor_axi_periph_M05_AXI_BVALID),
        .M05_AXI_rdata(processor_axi_periph_M05_AXI_RDATA),
        .M05_AXI_rready(processor_axi_periph_M05_AXI_RREADY),
        .M05_AXI_rresp(processor_axi_periph_M05_AXI_RRESP),
        .M05_AXI_rvalid(processor_axi_periph_M05_AXI_RVALID),
        .M05_AXI_wdata(processor_axi_periph_M05_AXI_WDATA),
        .M05_AXI_wready(processor_axi_periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(processor_axi_periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(processor_axi_periph_M05_AXI_WVALID),
        .M06_AXI_araddr(processor_ss_M06_AXI_ARADDR),
        .M06_AXI_arready(processor_ss_M06_AXI_ARREADY),
        .M06_AXI_arvalid(processor_ss_M06_AXI_ARVALID),
        .M06_AXI_awaddr(processor_ss_M06_AXI_AWADDR),
        .M06_AXI_awready(processor_ss_M06_AXI_AWREADY),
        .M06_AXI_awvalid(processor_ss_M06_AXI_AWVALID),
        .M06_AXI_bready(processor_ss_M06_AXI_BREADY),
        .M06_AXI_bresp(processor_ss_M06_AXI_BRESP),
        .M06_AXI_bvalid(processor_ss_M06_AXI_BVALID),
        .M06_AXI_rdata(processor_ss_M06_AXI_RDATA),
        .M06_AXI_rready(processor_ss_M06_AXI_RREADY),
        .M06_AXI_rresp(processor_ss_M06_AXI_RRESP),
        .M06_AXI_rvalid(processor_ss_M06_AXI_RVALID),
        .M06_AXI_wdata(processor_ss_M06_AXI_WDATA),
        .M06_AXI_wready(processor_ss_M06_AXI_WREADY),
        .M06_AXI_wstrb(processor_ss_M06_AXI_WSTRB),
        .M06_AXI_wvalid(processor_ss_M06_AXI_WVALID),
        .M07_AXI_araddr(processor_ss_M07_AXI_ARADDR),
        .M07_AXI_arready(processor_ss_M07_AXI_ARREADY),
        .M07_AXI_arvalid(processor_ss_M07_AXI_ARVALID),
        .M07_AXI_awaddr(processor_ss_M07_AXI_AWADDR),
        .M07_AXI_awready(processor_ss_M07_AXI_AWREADY),
        .M07_AXI_awvalid(processor_ss_M07_AXI_AWVALID),
        .M07_AXI_bready(processor_ss_M07_AXI_BREADY),
        .M07_AXI_bresp(processor_ss_M07_AXI_BRESP),
        .M07_AXI_bvalid(processor_ss_M07_AXI_BVALID),
        .M07_AXI_rdata(processor_ss_M07_AXI_RDATA),
        .M07_AXI_rready(processor_ss_M07_AXI_RREADY),
        .M07_AXI_rresp(processor_ss_M07_AXI_RRESP),
        .M07_AXI_rvalid(processor_ss_M07_AXI_RVALID),
        .M07_AXI_wdata(processor_ss_M07_AXI_WDATA),
        .M07_AXI_wready(processor_ss_M07_AXI_WREADY),
        .M07_AXI_wstrb(processor_ss_M07_AXI_WSTRB),
        .M07_AXI_wvalid(processor_ss_M07_AXI_WVALID),
        .M08_AXI_araddr(processor_ss_M08_AXI_ARADDR),
        .M08_AXI_arready(processor_ss_M08_AXI_ARREADY),
        .M08_AXI_arvalid(processor_ss_M08_AXI_ARVALID),
        .M08_AXI_awaddr(processor_ss_M08_AXI_AWADDR),
        .M08_AXI_awready(processor_ss_M08_AXI_AWREADY),
        .M08_AXI_awvalid(processor_ss_M08_AXI_AWVALID),
        .M08_AXI_bready(processor_ss_M08_AXI_BREADY),
        .M08_AXI_bresp(processor_ss_M08_AXI_BRESP),
        .M08_AXI_bvalid(processor_ss_M08_AXI_BVALID),
        .M08_AXI_rdata(processor_ss_M08_AXI_RDATA),
        .M08_AXI_rready(processor_ss_M08_AXI_RREADY),
        .M08_AXI_rresp(processor_ss_M08_AXI_RRESP),
        .M08_AXI_rvalid(processor_ss_M08_AXI_RVALID),
        .M08_AXI_wdata(processor_ss_M08_AXI_WDATA),
        .M08_AXI_wready(processor_ss_M08_AXI_WREADY),
        .M08_AXI_wstrb(processor_ss_M08_AXI_WSTRB),
        .M08_AXI_wvalid(processor_ss_M08_AXI_WVALID),
        .M09_AXI_araddr(processor_ss_M09_AXI_ARADDR),
        .M09_AXI_arready(processor_ss_M09_AXI_ARREADY),
        .M09_AXI_arvalid(processor_ss_M09_AXI_ARVALID),
        .M09_AXI_awaddr(processor_ss_M09_AXI_AWADDR),
        .M09_AXI_awready(processor_ss_M09_AXI_AWREADY),
        .M09_AXI_awvalid(processor_ss_M09_AXI_AWVALID),
        .M09_AXI_bready(processor_ss_M09_AXI_BREADY),
        .M09_AXI_bresp(processor_ss_M09_AXI_BRESP),
        .M09_AXI_bvalid(processor_ss_M09_AXI_BVALID),
        .M09_AXI_rdata(processor_ss_M09_AXI_RDATA),
        .M09_AXI_rready(processor_ss_M09_AXI_RREADY),
        .M09_AXI_rresp(processor_ss_M09_AXI_RRESP),
        .M09_AXI_rvalid(processor_ss_M09_AXI_RVALID),
        .M09_AXI_wdata(processor_ss_M09_AXI_WDATA),
        .M09_AXI_wready(processor_ss_M09_AXI_WREADY),
        .M09_AXI_wstrb(processor_ss_M09_AXI_WSTRB),
        .M09_AXI_wvalid(processor_ss_M09_AXI_WVALID),
        .M_AXI_DC_araddr(processor_M_AXI_DC_ARADDR),
        .M_AXI_DC_arburst(processor_M_AXI_DC_ARBURST),
        .M_AXI_DC_arcache(processor_M_AXI_DC_ARCACHE),
        .M_AXI_DC_arlen(processor_M_AXI_DC_ARLEN),
        .M_AXI_DC_arlock(processor_M_AXI_DC_ARLOCK),
        .M_AXI_DC_arprot(processor_M_AXI_DC_ARPROT),
        .M_AXI_DC_arqos(processor_M_AXI_DC_ARQOS),
        .M_AXI_DC_arready(processor_M_AXI_DC_ARREADY),
        .M_AXI_DC_arsize(processor_M_AXI_DC_ARSIZE),
        .M_AXI_DC_arvalid(processor_M_AXI_DC_ARVALID),
        .M_AXI_DC_awaddr(processor_M_AXI_DC_AWADDR),
        .M_AXI_DC_awburst(processor_M_AXI_DC_AWBURST),
        .M_AXI_DC_awcache(processor_M_AXI_DC_AWCACHE),
        .M_AXI_DC_awlen(processor_M_AXI_DC_AWLEN),
        .M_AXI_DC_awlock(processor_M_AXI_DC_AWLOCK),
        .M_AXI_DC_awprot(processor_M_AXI_DC_AWPROT),
        .M_AXI_DC_awqos(processor_M_AXI_DC_AWQOS),
        .M_AXI_DC_awready(processor_M_AXI_DC_AWREADY),
        .M_AXI_DC_awsize(processor_M_AXI_DC_AWSIZE),
        .M_AXI_DC_awvalid(processor_M_AXI_DC_AWVALID),
        .M_AXI_DC_bready(processor_M_AXI_DC_BREADY),
        .M_AXI_DC_bresp(processor_M_AXI_DC_BRESP),
        .M_AXI_DC_bvalid(processor_M_AXI_DC_BVALID),
        .M_AXI_DC_rdata(processor_M_AXI_DC_RDATA),
        .M_AXI_DC_rlast(processor_M_AXI_DC_RLAST),
        .M_AXI_DC_rready(processor_M_AXI_DC_RREADY),
        .M_AXI_DC_rresp(processor_M_AXI_DC_RRESP),
        .M_AXI_DC_rvalid(processor_M_AXI_DC_RVALID),
        .M_AXI_DC_wdata(processor_M_AXI_DC_WDATA),
        .M_AXI_DC_wlast(processor_M_AXI_DC_WLAST),
        .M_AXI_DC_wready(processor_M_AXI_DC_WREADY),
        .M_AXI_DC_wstrb(processor_M_AXI_DC_WSTRB),
        .M_AXI_DC_wvalid(processor_M_AXI_DC_WVALID),
        .M_AXI_IC_araddr(processor_M_AXI_IC_ARADDR),
        .M_AXI_IC_arburst(processor_M_AXI_IC_ARBURST),
        .M_AXI_IC_arcache(processor_M_AXI_IC_ARCACHE),
        .M_AXI_IC_arlen(processor_M_AXI_IC_ARLEN),
        .M_AXI_IC_arlock(processor_M_AXI_IC_ARLOCK),
        .M_AXI_IC_arprot(processor_M_AXI_IC_ARPROT),
        .M_AXI_IC_arqos(processor_M_AXI_IC_ARQOS),
        .M_AXI_IC_arready(processor_M_AXI_IC_ARREADY),
        .M_AXI_IC_arsize(processor_M_AXI_IC_ARSIZE),
        .M_AXI_IC_arvalid(processor_M_AXI_IC_ARVALID),
        .M_AXI_IC_rdata(processor_M_AXI_IC_RDATA),
        .M_AXI_IC_rlast(processor_M_AXI_IC_RLAST),
        .M_AXI_IC_rready(processor_M_AXI_IC_RREADY),
        .M_AXI_IC_rresp(processor_M_AXI_IC_RRESP),
        .M_AXI_IC_rvalid(processor_M_AXI_IC_RVALID),
        .SYS_Rst(rst_clk_wiz_1_100M_bus_struct_reset),
        .intr(xlconcat_0_dout),
        .processor_rst(rst_clk_wiz_1_100M_mb_reset));
  ex_synth_xlslice_0_0 red_0
       (.Din(vid_out_vid_data),
        .Dout(xlslice_0_Dout));
  ex_synth_v_frmbuf_rd_0_0 v_frmbuf_rd_0
       (.ap_clk(clk_wiz_1_clk_out3),
        .ap_rst_n(hls_ip_reset_gpio_io_o),
        .interrupt(v_frmbuf_rd_0_interrupt),
        .m_axi_mm_video_ARADDR(v_frmbuf_rd_0_m_axi_mm_video_ARADDR),
        .m_axi_mm_video_ARBURST(v_frmbuf_rd_0_m_axi_mm_video_ARBURST),
        .m_axi_mm_video_ARCACHE(v_frmbuf_rd_0_m_axi_mm_video_ARCACHE),
        .m_axi_mm_video_ARLEN(v_frmbuf_rd_0_m_axi_mm_video_ARLEN),
        .m_axi_mm_video_ARLOCK(v_frmbuf_rd_0_m_axi_mm_video_ARLOCK),
        .m_axi_mm_video_ARPROT(v_frmbuf_rd_0_m_axi_mm_video_ARPROT),
        .m_axi_mm_video_ARQOS(v_frmbuf_rd_0_m_axi_mm_video_ARQOS),
        .m_axi_mm_video_ARREADY(v_frmbuf_rd_0_m_axi_mm_video_ARREADY),
        .m_axi_mm_video_ARREGION(v_frmbuf_rd_0_m_axi_mm_video_ARREGION),
        .m_axi_mm_video_ARSIZE(v_frmbuf_rd_0_m_axi_mm_video_ARSIZE),
        .m_axi_mm_video_ARVALID(v_frmbuf_rd_0_m_axi_mm_video_ARVALID),
        .m_axi_mm_video_AWADDR(v_frmbuf_rd_0_m_axi_mm_video_AWADDR),
        .m_axi_mm_video_AWBURST(v_frmbuf_rd_0_m_axi_mm_video_AWBURST),
        .m_axi_mm_video_AWCACHE(v_frmbuf_rd_0_m_axi_mm_video_AWCACHE),
        .m_axi_mm_video_AWLEN(v_frmbuf_rd_0_m_axi_mm_video_AWLEN),
        .m_axi_mm_video_AWLOCK(v_frmbuf_rd_0_m_axi_mm_video_AWLOCK),
        .m_axi_mm_video_AWPROT(v_frmbuf_rd_0_m_axi_mm_video_AWPROT),
        .m_axi_mm_video_AWQOS(v_frmbuf_rd_0_m_axi_mm_video_AWQOS),
        .m_axi_mm_video_AWREADY(v_frmbuf_rd_0_m_axi_mm_video_AWREADY),
        .m_axi_mm_video_AWREGION(v_frmbuf_rd_0_m_axi_mm_video_AWREGION),
        .m_axi_mm_video_AWSIZE(v_frmbuf_rd_0_m_axi_mm_video_AWSIZE),
        .m_axi_mm_video_AWVALID(v_frmbuf_rd_0_m_axi_mm_video_AWVALID),
        .m_axi_mm_video_BREADY(v_frmbuf_rd_0_m_axi_mm_video_BREADY),
        .m_axi_mm_video_BRESP(v_frmbuf_rd_0_m_axi_mm_video_BRESP),
        .m_axi_mm_video_BVALID(v_frmbuf_rd_0_m_axi_mm_video_BVALID),
        .m_axi_mm_video_RDATA(v_frmbuf_rd_0_m_axi_mm_video_RDATA),
        .m_axi_mm_video_RLAST(v_frmbuf_rd_0_m_axi_mm_video_RLAST),
        .m_axi_mm_video_RREADY(v_frmbuf_rd_0_m_axi_mm_video_RREADY),
        .m_axi_mm_video_RRESP(v_frmbuf_rd_0_m_axi_mm_video_RRESP),
        .m_axi_mm_video_RVALID(v_frmbuf_rd_0_m_axi_mm_video_RVALID),
        .m_axi_mm_video_WDATA(v_frmbuf_rd_0_m_axi_mm_video_WDATA),
        .m_axi_mm_video_WLAST(v_frmbuf_rd_0_m_axi_mm_video_WLAST),
        .m_axi_mm_video_WREADY(v_frmbuf_rd_0_m_axi_mm_video_WREADY),
        .m_axi_mm_video_WSTRB(v_frmbuf_rd_0_m_axi_mm_video_WSTRB),
        .m_axi_mm_video_WVALID(v_frmbuf_rd_0_m_axi_mm_video_WVALID),
        .m_axis_video_TDATA(v_frmbuf_rd_0_m_axis_video_TDATA),
        .m_axis_video_TLAST(v_frmbuf_rd_0_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_frmbuf_rd_0_m_axis_video_TREADY),
        .m_axis_video_TUSER(v_frmbuf_rd_0_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_frmbuf_rd_0_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(processor_axi_periph_M05_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(processor_axi_periph_M05_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(processor_axi_periph_M05_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(processor_axi_periph_M05_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(processor_axi_periph_M05_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(processor_axi_periph_M05_AXI_AWVALID),
        .s_axi_CTRL_BREADY(processor_axi_periph_M05_AXI_BREADY),
        .s_axi_CTRL_BRESP(processor_axi_periph_M05_AXI_BRESP),
        .s_axi_CTRL_BVALID(processor_axi_periph_M05_AXI_BVALID),
        .s_axi_CTRL_RDATA(processor_axi_periph_M05_AXI_RDATA),
        .s_axi_CTRL_RREADY(processor_axi_periph_M05_AXI_RREADY),
        .s_axi_CTRL_RRESP(processor_axi_periph_M05_AXI_RRESP),
        .s_axi_CTRL_RVALID(processor_axi_periph_M05_AXI_RVALID),
        .s_axi_CTRL_WDATA(processor_axi_periph_M05_AXI_WDATA),
        .s_axi_CTRL_WREADY(processor_axi_periph_M05_AXI_WREADY),
        .s_axi_CTRL_WSTRB(processor_axi_periph_M05_AXI_WSTRB),
        .s_axi_CTRL_WVALID(processor_axi_periph_M05_AXI_WVALID));
  ex_synth_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .clk(clk_wiz_1_clk_out2),
        .clken(1'b1),
        .fsync_in(1'b0),
        .gen_clken(vid_out_vtg_ce),
        .hblank_out(v_tc_0_vtiming_out_HBLANK),
        .hsync_out(v_tc_0_vtiming_out_HSYNC),
        .resetn(1'b1),
        .s_axi_aclk(processor_Clk),
        .s_axi_aclken(1'b1),
        .s_axi_araddr(processor_axi_periph_M02_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(processor_axi_periph_M02_AXI_ARREADY),
        .s_axi_arvalid(processor_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(processor_axi_periph_M02_AXI_AWADDR[8:0]),
        .s_axi_awready(processor_axi_periph_M02_AXI_AWREADY),
        .s_axi_awvalid(processor_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(processor_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(processor_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(processor_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(processor_axi_periph_M02_AXI_RDATA),
        .s_axi_rready(processor_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(processor_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(processor_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(processor_axi_periph_M02_AXI_WDATA),
        .s_axi_wready(processor_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(processor_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(processor_axi_periph_M02_AXI_WVALID),
        .vblank_out(v_tc_0_vtiming_out_VBLANK),
        .vsync_out(v_tc_0_vtiming_out_VSYNC));
  ex_synth_vid_out_0 vid_out
       (.aclk(clk_wiz_1_clk_out3),
        .aclken(1'b1),
        .aresetn(hls_ip_reset_gpio_io_o),
        .fid(1'b0),
        .locked(vid_out_locked),
        .s_axis_video_tdata(v_frmbuf_rd_0_m_axis_video_TDATA),
        .s_axis_video_tlast(v_frmbuf_rd_0_m_axis_video_TLAST),
        .s_axis_video_tready(v_frmbuf_rd_0_m_axis_video_TREADY),
        .s_axis_video_tuser(v_frmbuf_rd_0_m_axis_video_TUSER),
        .s_axis_video_tvalid(v_frmbuf_rd_0_m_axis_video_TVALID),
        .vid_active_video(vid_out_vid_active_video),
        .vid_data(vid_out_vid_data),
        .vid_hsync(vid_out_vid_hsync),
        .vid_io_out_ce(1'b1),
        .vid_io_out_clk(clk_wiz_1_clk_out2),
        .vid_io_out_reset(1'b0),
        .vid_vsync(vid_out_vid_vsync),
        .vtg_active_video(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .vtg_ce(vid_out_vtg_ce),
        .vtg_field_id(1'b0),
        .vtg_hblank(v_tc_0_vtiming_out_HBLANK),
        .vtg_hsync(v_tc_0_vtiming_out_HSYNC),
        .vtg_vblank(v_tc_0_vtiming_out_VBLANK),
        .vtg_vsync(v_tc_0_vtiming_out_VSYNC));
  ex_synth_video_lock_monitor_0 video_lock_monitor
       (.gpio_io_i(vid_out_locked),
        .s_axi_aclk(clk_wiz_1_clk_out2),
        .s_axi_araddr(processor_axi_periph_M03_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_150M_peripheral_aresetn),
        .s_axi_arready(processor_axi_periph_M03_AXI_ARREADY),
        .s_axi_arvalid(processor_axi_periph_M03_AXI_ARVALID),
        .s_axi_awaddr(processor_axi_periph_M03_AXI_AWADDR),
        .s_axi_awready(processor_axi_periph_M03_AXI_AWREADY),
        .s_axi_awvalid(processor_axi_periph_M03_AXI_AWVALID),
        .s_axi_bready(processor_axi_periph_M03_AXI_BREADY),
        .s_axi_bresp(processor_axi_periph_M03_AXI_BRESP),
        .s_axi_bvalid(processor_axi_periph_M03_AXI_BVALID),
        .s_axi_rdata(processor_axi_periph_M03_AXI_RDATA),
        .s_axi_rready(processor_axi_periph_M03_AXI_RREADY),
        .s_axi_rresp(processor_axi_periph_M03_AXI_RRESP),
        .s_axi_rvalid(processor_axi_periph_M03_AXI_RVALID),
        .s_axi_wdata(processor_axi_periph_M03_AXI_WDATA),
        .s_axi_wready(processor_axi_periph_M03_AXI_WREADY),
        .s_axi_wstrb(processor_axi_periph_M03_AXI_WSTRB),
        .s_axi_wvalid(processor_axi_periph_M03_AXI_WVALID));
  ex_synth_xlconcat_0_0 xlconcat_0
       (.In0(v_frmbuf_rd_0_interrupt),
        .In1(axi_quad_spi_0_ip2intc_irpt),
        .In2(axi_uartlite_0_interrupt),
        .dout(xlconcat_0_dout));
endmodule

module ex_synth_axi_mem_intercon_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arregion,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awregion,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [1:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [31:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [7:0]S02_AXI_arlen;
  input [1:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output S02_AXI_arready;
  input [3:0]S02_AXI_arregion;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [1:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output S02_AXI_awready;
  input [3:0]S02_AXI_awregion;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output [63:0]S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input [63:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [7:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire S02_ACLK_1;
  wire S02_ARESETN_1;
  wire axi_mem_intercon_ACLK_net;
  wire axi_mem_intercon_ARESETN_net;
  wire [31:0]axi_mem_intercon_to_s00_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_to_s00_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_to_s00_couplers_ARCACHE;
  wire [7:0]axi_mem_intercon_to_s00_couplers_ARLEN;
  wire axi_mem_intercon_to_s00_couplers_ARLOCK;
  wire [2:0]axi_mem_intercon_to_s00_couplers_ARPROT;
  wire [3:0]axi_mem_intercon_to_s00_couplers_ARQOS;
  wire axi_mem_intercon_to_s00_couplers_ARREADY;
  wire [2:0]axi_mem_intercon_to_s00_couplers_ARSIZE;
  wire axi_mem_intercon_to_s00_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_to_s00_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWCACHE;
  wire [7:0]axi_mem_intercon_to_s00_couplers_AWLEN;
  wire axi_mem_intercon_to_s00_couplers_AWLOCK;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWPROT;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWQOS;
  wire axi_mem_intercon_to_s00_couplers_AWREADY;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWSIZE;
  wire axi_mem_intercon_to_s00_couplers_AWVALID;
  wire axi_mem_intercon_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_BRESP;
  wire axi_mem_intercon_to_s00_couplers_BVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_RDATA;
  wire axi_mem_intercon_to_s00_couplers_RLAST;
  wire axi_mem_intercon_to_s00_couplers_RREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_RRESP;
  wire axi_mem_intercon_to_s00_couplers_RVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_WDATA;
  wire axi_mem_intercon_to_s00_couplers_WLAST;
  wire axi_mem_intercon_to_s00_couplers_WREADY;
  wire [3:0]axi_mem_intercon_to_s00_couplers_WSTRB;
  wire axi_mem_intercon_to_s00_couplers_WVALID;
  wire [31:0]axi_mem_intercon_to_s01_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_to_s01_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_to_s01_couplers_ARCACHE;
  wire [7:0]axi_mem_intercon_to_s01_couplers_ARLEN;
  wire axi_mem_intercon_to_s01_couplers_ARLOCK;
  wire [2:0]axi_mem_intercon_to_s01_couplers_ARPROT;
  wire [3:0]axi_mem_intercon_to_s01_couplers_ARQOS;
  wire axi_mem_intercon_to_s01_couplers_ARREADY;
  wire [2:0]axi_mem_intercon_to_s01_couplers_ARSIZE;
  wire axi_mem_intercon_to_s01_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_to_s01_couplers_RDATA;
  wire axi_mem_intercon_to_s01_couplers_RLAST;
  wire axi_mem_intercon_to_s01_couplers_RREADY;
  wire [1:0]axi_mem_intercon_to_s01_couplers_RRESP;
  wire axi_mem_intercon_to_s01_couplers_RVALID;
  wire [31:0]axi_mem_intercon_to_s02_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_to_s02_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_to_s02_couplers_ARCACHE;
  wire [7:0]axi_mem_intercon_to_s02_couplers_ARLEN;
  wire [1:0]axi_mem_intercon_to_s02_couplers_ARLOCK;
  wire [2:0]axi_mem_intercon_to_s02_couplers_ARPROT;
  wire [3:0]axi_mem_intercon_to_s02_couplers_ARQOS;
  wire axi_mem_intercon_to_s02_couplers_ARREADY;
  wire [3:0]axi_mem_intercon_to_s02_couplers_ARREGION;
  wire [2:0]axi_mem_intercon_to_s02_couplers_ARSIZE;
  wire axi_mem_intercon_to_s02_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_to_s02_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_to_s02_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_to_s02_couplers_AWCACHE;
  wire [7:0]axi_mem_intercon_to_s02_couplers_AWLEN;
  wire [1:0]axi_mem_intercon_to_s02_couplers_AWLOCK;
  wire [2:0]axi_mem_intercon_to_s02_couplers_AWPROT;
  wire [3:0]axi_mem_intercon_to_s02_couplers_AWQOS;
  wire axi_mem_intercon_to_s02_couplers_AWREADY;
  wire [3:0]axi_mem_intercon_to_s02_couplers_AWREGION;
  wire [2:0]axi_mem_intercon_to_s02_couplers_AWSIZE;
  wire axi_mem_intercon_to_s02_couplers_AWVALID;
  wire axi_mem_intercon_to_s02_couplers_BREADY;
  wire [1:0]axi_mem_intercon_to_s02_couplers_BRESP;
  wire axi_mem_intercon_to_s02_couplers_BVALID;
  wire [63:0]axi_mem_intercon_to_s02_couplers_RDATA;
  wire axi_mem_intercon_to_s02_couplers_RLAST;
  wire axi_mem_intercon_to_s02_couplers_RREADY;
  wire [1:0]axi_mem_intercon_to_s02_couplers_RRESP;
  wire axi_mem_intercon_to_s02_couplers_RVALID;
  wire [63:0]axi_mem_intercon_to_s02_couplers_WDATA;
  wire axi_mem_intercon_to_s02_couplers_WLAST;
  wire axi_mem_intercon_to_s02_couplers_WREADY;
  wire [7:0]axi_mem_intercon_to_s02_couplers_WSTRB;
  wire axi_mem_intercon_to_s02_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_mem_intercon_ARADDR;
  wire [1:0]m00_couplers_to_axi_mem_intercon_ARBURST;
  wire [3:0]m00_couplers_to_axi_mem_intercon_ARCACHE;
  wire [1:0]m00_couplers_to_axi_mem_intercon_ARID;
  wire [7:0]m00_couplers_to_axi_mem_intercon_ARLEN;
  wire m00_couplers_to_axi_mem_intercon_ARLOCK;
  wire [2:0]m00_couplers_to_axi_mem_intercon_ARPROT;
  wire [3:0]m00_couplers_to_axi_mem_intercon_ARQOS;
  wire m00_couplers_to_axi_mem_intercon_ARREADY;
  wire [2:0]m00_couplers_to_axi_mem_intercon_ARSIZE;
  wire m00_couplers_to_axi_mem_intercon_ARVALID;
  wire [31:0]m00_couplers_to_axi_mem_intercon_AWADDR;
  wire [1:0]m00_couplers_to_axi_mem_intercon_AWBURST;
  wire [3:0]m00_couplers_to_axi_mem_intercon_AWCACHE;
  wire [1:0]m00_couplers_to_axi_mem_intercon_AWID;
  wire [7:0]m00_couplers_to_axi_mem_intercon_AWLEN;
  wire m00_couplers_to_axi_mem_intercon_AWLOCK;
  wire [2:0]m00_couplers_to_axi_mem_intercon_AWPROT;
  wire [3:0]m00_couplers_to_axi_mem_intercon_AWQOS;
  wire m00_couplers_to_axi_mem_intercon_AWREADY;
  wire [2:0]m00_couplers_to_axi_mem_intercon_AWSIZE;
  wire m00_couplers_to_axi_mem_intercon_AWVALID;
  wire [1:0]m00_couplers_to_axi_mem_intercon_BID;
  wire m00_couplers_to_axi_mem_intercon_BREADY;
  wire [1:0]m00_couplers_to_axi_mem_intercon_BRESP;
  wire m00_couplers_to_axi_mem_intercon_BVALID;
  wire [127:0]m00_couplers_to_axi_mem_intercon_RDATA;
  wire [1:0]m00_couplers_to_axi_mem_intercon_RID;
  wire m00_couplers_to_axi_mem_intercon_RLAST;
  wire m00_couplers_to_axi_mem_intercon_RREADY;
  wire [1:0]m00_couplers_to_axi_mem_intercon_RRESP;
  wire m00_couplers_to_axi_mem_intercon_RVALID;
  wire [127:0]m00_couplers_to_axi_mem_intercon_WDATA;
  wire m00_couplers_to_axi_mem_intercon_WLAST;
  wire m00_couplers_to_axi_mem_intercon_WREADY;
  wire [15:0]m00_couplers_to_axi_mem_intercon_WSTRB;
  wire m00_couplers_to_axi_mem_intercon_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [127:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [127:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [15:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [255:128]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [383:256]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [127:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [15:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [1:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [1:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [1:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [127:0]xbar_to_m00_couplers_RDATA;
  wire [1:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [127:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [15:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [2:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [5:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_mem_intercon_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_mem_intercon_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_mem_intercon_ARCACHE;
  assign M00_AXI_arid[1:0] = m00_couplers_to_axi_mem_intercon_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_mem_intercon_ARLEN;
  assign M00_AXI_arlock = m00_couplers_to_axi_mem_intercon_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_mem_intercon_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_mem_intercon_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_mem_intercon_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_mem_intercon_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_mem_intercon_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_mem_intercon_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_mem_intercon_AWCACHE;
  assign M00_AXI_awid[1:0] = m00_couplers_to_axi_mem_intercon_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_mem_intercon_AWLEN;
  assign M00_AXI_awlock = m00_couplers_to_axi_mem_intercon_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_mem_intercon_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_mem_intercon_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_mem_intercon_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_mem_intercon_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_mem_intercon_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_mem_intercon_RREADY;
  assign M00_AXI_wdata[127:0] = m00_couplers_to_axi_mem_intercon_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_mem_intercon_WLAST;
  assign M00_AXI_wstrb[15:0] = m00_couplers_to_axi_mem_intercon_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_mem_intercon_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_mem_intercon_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_mem_intercon_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_mem_intercon_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_mem_intercon_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_mem_intercon_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_mem_intercon_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_mem_intercon_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = axi_mem_intercon_to_s01_couplers_ARREADY;
  assign S01_AXI_rdata[31:0] = axi_mem_intercon_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = axi_mem_intercon_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_mem_intercon_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_mem_intercon_to_s01_couplers_RVALID;
  assign S02_ACLK_1 = S02_ACLK;
  assign S02_ARESETN_1 = S02_ARESETN;
  assign S02_AXI_arready = axi_mem_intercon_to_s02_couplers_ARREADY;
  assign S02_AXI_awready = axi_mem_intercon_to_s02_couplers_AWREADY;
  assign S02_AXI_bresp[1:0] = axi_mem_intercon_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid = axi_mem_intercon_to_s02_couplers_BVALID;
  assign S02_AXI_rdata[63:0] = axi_mem_intercon_to_s02_couplers_RDATA;
  assign S02_AXI_rlast = axi_mem_intercon_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = axi_mem_intercon_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = axi_mem_intercon_to_s02_couplers_RVALID;
  assign S02_AXI_wready = axi_mem_intercon_to_s02_couplers_WREADY;
  assign axi_mem_intercon_ACLK_net = ACLK;
  assign axi_mem_intercon_ARESETN_net = ARESETN;
  assign axi_mem_intercon_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_mem_intercon_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_mem_intercon_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_mem_intercon_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_mem_intercon_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_mem_intercon_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_mem_intercon_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_mem_intercon_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_mem_intercon_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_mem_intercon_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_mem_intercon_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_mem_intercon_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_mem_intercon_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_intercon_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_intercon_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_mem_intercon_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_mem_intercon_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_mem_intercon_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_mem_intercon_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_mem_intercon_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign axi_mem_intercon_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_mem_intercon_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_mem_intercon_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_mem_intercon_to_s01_couplers_ARLOCK = S01_AXI_arlock;
  assign axi_mem_intercon_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_mem_intercon_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign axi_mem_intercon_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_mem_intercon_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_mem_intercon_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_mem_intercon_to_s02_couplers_ARADDR = S02_AXI_araddr[31:0];
  assign axi_mem_intercon_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign axi_mem_intercon_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign axi_mem_intercon_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign axi_mem_intercon_to_s02_couplers_ARLOCK = S02_AXI_arlock[1:0];
  assign axi_mem_intercon_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign axi_mem_intercon_to_s02_couplers_ARQOS = S02_AXI_arqos[3:0];
  assign axi_mem_intercon_to_s02_couplers_ARREGION = S02_AXI_arregion[3:0];
  assign axi_mem_intercon_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign axi_mem_intercon_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign axi_mem_intercon_to_s02_couplers_AWADDR = S02_AXI_awaddr[31:0];
  assign axi_mem_intercon_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign axi_mem_intercon_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign axi_mem_intercon_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign axi_mem_intercon_to_s02_couplers_AWLOCK = S02_AXI_awlock[1:0];
  assign axi_mem_intercon_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign axi_mem_intercon_to_s02_couplers_AWQOS = S02_AXI_awqos[3:0];
  assign axi_mem_intercon_to_s02_couplers_AWREGION = S02_AXI_awregion[3:0];
  assign axi_mem_intercon_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign axi_mem_intercon_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign axi_mem_intercon_to_s02_couplers_BREADY = S02_AXI_bready;
  assign axi_mem_intercon_to_s02_couplers_RREADY = S02_AXI_rready;
  assign axi_mem_intercon_to_s02_couplers_WDATA = S02_AXI_wdata[63:0];
  assign axi_mem_intercon_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign axi_mem_intercon_to_s02_couplers_WSTRB = S02_AXI_wstrb[7:0];
  assign axi_mem_intercon_to_s02_couplers_WVALID = S02_AXI_wvalid;
  assign m00_couplers_to_axi_mem_intercon_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_mem_intercon_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_mem_intercon_BID = M00_AXI_bid[1:0];
  assign m00_couplers_to_axi_mem_intercon_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_mem_intercon_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_mem_intercon_RDATA = M00_AXI_rdata[127:0];
  assign m00_couplers_to_axi_mem_intercon_RID = M00_AXI_rid[1:0];
  assign m00_couplers_to_axi_mem_intercon_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_mem_intercon_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_mem_intercon_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_mem_intercon_WREADY = M00_AXI_wready;
  m00_couplers_imp_95M5ZT m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_mem_intercon_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_mem_intercon_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_mem_intercon_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_mem_intercon_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_mem_intercon_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_mem_intercon_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_mem_intercon_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_mem_intercon_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_mem_intercon_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_mem_intercon_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_mem_intercon_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_mem_intercon_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_mem_intercon_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_mem_intercon_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_mem_intercon_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_mem_intercon_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_mem_intercon_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_mem_intercon_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_mem_intercon_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_mem_intercon_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_mem_intercon_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_mem_intercon_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_mem_intercon_BID),
        .M_AXI_bready(m00_couplers_to_axi_mem_intercon_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_mem_intercon_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_mem_intercon_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_mem_intercon_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_mem_intercon_RID),
        .M_AXI_rlast(m00_couplers_to_axi_mem_intercon_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_mem_intercon_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_mem_intercon_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_mem_intercon_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_mem_intercon_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_mem_intercon_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_mem_intercon_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_mem_intercon_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_mem_intercon_WVALID),
        .S_ACLK(axi_mem_intercon_ACLK_net),
        .S_ARESETN(axi_mem_intercon_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_1OF3FKR s00_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_intercon_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_mem_intercon_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_mem_intercon_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_mem_intercon_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_mem_intercon_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_intercon_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_intercon_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_intercon_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_mem_intercon_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_mem_intercon_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_mem_intercon_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_mem_intercon_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_intercon_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_mem_intercon_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_mem_intercon_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_mem_intercon_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_to_s00_couplers_WVALID));
  s01_couplers_imp_F55TOA s01_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_intercon_to_s01_couplers_ARLEN),
        .S_AXI_arlock(axi_mem_intercon_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(axi_mem_intercon_to_s01_couplers_ARPROT),
        .S_AXI_arqos(axi_mem_intercon_to_s01_couplers_ARQOS),
        .S_AXI_arready(axi_mem_intercon_to_s01_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_intercon_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_to_s01_couplers_ARVALID),
        .S_AXI_rdata(axi_mem_intercon_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_to_s01_couplers_RVALID));
  s02_couplers_imp_1P2CHSO s02_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(S02_ACLK_1),
        .S_ARESETN(S02_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_to_s02_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_to_s02_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_to_s02_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_intercon_to_s02_couplers_ARLEN),
        .S_AXI_arlock(axi_mem_intercon_to_s02_couplers_ARLOCK),
        .S_AXI_arprot(axi_mem_intercon_to_s02_couplers_ARPROT),
        .S_AXI_arqos(axi_mem_intercon_to_s02_couplers_ARQOS),
        .S_AXI_arready(axi_mem_intercon_to_s02_couplers_ARREADY),
        .S_AXI_arregion(axi_mem_intercon_to_s02_couplers_ARREGION),
        .S_AXI_arsize(axi_mem_intercon_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_to_s02_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_intercon_to_s02_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_to_s02_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_to_s02_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_intercon_to_s02_couplers_AWLEN),
        .S_AXI_awlock(axi_mem_intercon_to_s02_couplers_AWLOCK),
        .S_AXI_awprot(axi_mem_intercon_to_s02_couplers_AWPROT),
        .S_AXI_awqos(axi_mem_intercon_to_s02_couplers_AWQOS),
        .S_AXI_awready(axi_mem_intercon_to_s02_couplers_AWREADY),
        .S_AXI_awregion(axi_mem_intercon_to_s02_couplers_AWREGION),
        .S_AXI_awsize(axi_mem_intercon_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_to_s02_couplers_AWVALID),
        .S_AXI_bready(axi_mem_intercon_to_s02_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_to_s02_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_to_s02_couplers_BVALID),
        .S_AXI_rdata(axi_mem_intercon_to_s02_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_to_s02_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_to_s02_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_to_s02_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_to_s02_couplers_RVALID),
        .S_AXI_wdata(axi_mem_intercon_to_s02_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_to_s02_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_to_s02_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_to_s02_couplers_WVALID));
  ex_synth_xbar_2 xbar
       (.aclk(axi_mem_intercon_ACLK_net),
        .aresetn(axi_mem_intercon_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s02_couplers_to_xbar_ARADDR,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s02_couplers_to_xbar_ARBURST,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s02_couplers_to_xbar_ARCACHE,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({s02_couplers_to_xbar_ARLEN,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s02_couplers_to_xbar_ARLOCK,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s02_couplers_to_xbar_ARPROT,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s02_couplers_to_xbar_ARQOS,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s02_couplers_to_xbar_ARSIZE,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s02_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s02_couplers_to_xbar_AWBURST,1'b0,1'b0,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s02_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s02_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s02_couplers_to_xbar_AWLOCK,1'b0,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s02_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s02_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s02_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[1],s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s02_couplers_to_xbar_AWSIZE,1'b1,1'b0,1'b0,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s02_couplers_to_xbar_AWVALID,1'b0,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s02_couplers_to_xbar_BREADY,1'b0,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s02_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[3:2],s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s02_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[1],s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s02_couplers_to_xbar_RLAST,s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s02_couplers_to_xbar_RRESP,s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s02_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s02_couplers_to_xbar_WLAST,1'b0,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s02_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[1],s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s02_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s02_couplers_to_xbar_WVALID,1'b0,s00_couplers_to_xbar_WVALID}));
endmodule

module ex_synth_processor_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output M01_AXI_araddr;
  output M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output M01_AXI_awaddr;
  output M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input M01_AXI_bresp;
  input M01_AXI_bvalid;
  input M01_AXI_rdata;
  output M01_AXI_rready;
  input M01_AXI_rresp;
  input M01_AXI_rvalid;
  output M01_AXI_wdata;
  input M01_AXI_wready;
  output M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [8:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [8:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [8:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [8:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [6:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [6:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [3:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [3:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [6:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [6:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [12:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [12:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output [4:0]M09_AXI_araddr;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [4:0]M09_AXI_awaddr;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output M09_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire M08_ACLK_1;
  wire M08_ARESETN_1;
  wire M09_ACLK_1;
  wire M09_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]m00_couplers_to_processor_axi_periph_ARADDR;
  wire [0:0]m00_couplers_to_processor_axi_periph_ARREADY;
  wire [0:0]m00_couplers_to_processor_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_processor_axi_periph_AWADDR;
  wire [0:0]m00_couplers_to_processor_axi_periph_AWREADY;
  wire [0:0]m00_couplers_to_processor_axi_periph_AWVALID;
  wire [0:0]m00_couplers_to_processor_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_processor_axi_periph_BRESP;
  wire [0:0]m00_couplers_to_processor_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_processor_axi_periph_RDATA;
  wire [0:0]m00_couplers_to_processor_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_processor_axi_periph_RRESP;
  wire [0:0]m00_couplers_to_processor_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_processor_axi_periph_WDATA;
  wire [0:0]m00_couplers_to_processor_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_processor_axi_periph_WSTRB;
  wire [0:0]m00_couplers_to_processor_axi_periph_WVALID;
  wire m01_couplers_to_processor_axi_periph_ARADDR;
  wire m01_couplers_to_processor_axi_periph_ARPROT;
  wire m01_couplers_to_processor_axi_periph_ARREADY;
  wire m01_couplers_to_processor_axi_periph_ARVALID;
  wire m01_couplers_to_processor_axi_periph_AWADDR;
  wire m01_couplers_to_processor_axi_periph_AWPROT;
  wire m01_couplers_to_processor_axi_periph_AWREADY;
  wire m01_couplers_to_processor_axi_periph_AWVALID;
  wire m01_couplers_to_processor_axi_periph_BREADY;
  wire m01_couplers_to_processor_axi_periph_BRESP;
  wire m01_couplers_to_processor_axi_periph_BVALID;
  wire m01_couplers_to_processor_axi_periph_RDATA;
  wire m01_couplers_to_processor_axi_periph_RREADY;
  wire m01_couplers_to_processor_axi_periph_RRESP;
  wire m01_couplers_to_processor_axi_periph_RVALID;
  wire m01_couplers_to_processor_axi_periph_WDATA;
  wire m01_couplers_to_processor_axi_periph_WREADY;
  wire m01_couplers_to_processor_axi_periph_WSTRB;
  wire m01_couplers_to_processor_axi_periph_WVALID;
  wire [31:0]m02_couplers_to_processor_axi_periph_ARADDR;
  wire m02_couplers_to_processor_axi_periph_ARREADY;
  wire m02_couplers_to_processor_axi_periph_ARVALID;
  wire [31:0]m02_couplers_to_processor_axi_periph_AWADDR;
  wire m02_couplers_to_processor_axi_periph_AWREADY;
  wire m02_couplers_to_processor_axi_periph_AWVALID;
  wire m02_couplers_to_processor_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_processor_axi_periph_BRESP;
  wire m02_couplers_to_processor_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_processor_axi_periph_RDATA;
  wire m02_couplers_to_processor_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_processor_axi_periph_RRESP;
  wire m02_couplers_to_processor_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_processor_axi_periph_WDATA;
  wire m02_couplers_to_processor_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_processor_axi_periph_WSTRB;
  wire m02_couplers_to_processor_axi_periph_WVALID;
  wire [8:0]m03_couplers_to_processor_axi_periph_ARADDR;
  wire m03_couplers_to_processor_axi_periph_ARREADY;
  wire m03_couplers_to_processor_axi_periph_ARVALID;
  wire [8:0]m03_couplers_to_processor_axi_periph_AWADDR;
  wire m03_couplers_to_processor_axi_periph_AWREADY;
  wire m03_couplers_to_processor_axi_periph_AWVALID;
  wire m03_couplers_to_processor_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_processor_axi_periph_BRESP;
  wire m03_couplers_to_processor_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_processor_axi_periph_RDATA;
  wire m03_couplers_to_processor_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_processor_axi_periph_RRESP;
  wire m03_couplers_to_processor_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_processor_axi_periph_WDATA;
  wire m03_couplers_to_processor_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_processor_axi_periph_WSTRB;
  wire m03_couplers_to_processor_axi_periph_WVALID;
  wire [8:0]m04_couplers_to_processor_axi_periph_ARADDR;
  wire m04_couplers_to_processor_axi_periph_ARREADY;
  wire m04_couplers_to_processor_axi_periph_ARVALID;
  wire [8:0]m04_couplers_to_processor_axi_periph_AWADDR;
  wire m04_couplers_to_processor_axi_periph_AWREADY;
  wire m04_couplers_to_processor_axi_periph_AWVALID;
  wire m04_couplers_to_processor_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_processor_axi_periph_BRESP;
  wire m04_couplers_to_processor_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_processor_axi_periph_RDATA;
  wire m04_couplers_to_processor_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_processor_axi_periph_RRESP;
  wire m04_couplers_to_processor_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_processor_axi_periph_WDATA;
  wire m04_couplers_to_processor_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_processor_axi_periph_WSTRB;
  wire m04_couplers_to_processor_axi_periph_WVALID;
  wire [6:0]m05_couplers_to_processor_axi_periph_ARADDR;
  wire m05_couplers_to_processor_axi_periph_ARREADY;
  wire m05_couplers_to_processor_axi_periph_ARVALID;
  wire [6:0]m05_couplers_to_processor_axi_periph_AWADDR;
  wire m05_couplers_to_processor_axi_periph_AWREADY;
  wire m05_couplers_to_processor_axi_periph_AWVALID;
  wire m05_couplers_to_processor_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_processor_axi_periph_BRESP;
  wire m05_couplers_to_processor_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_processor_axi_periph_RDATA;
  wire m05_couplers_to_processor_axi_periph_RREADY;
  wire [1:0]m05_couplers_to_processor_axi_periph_RRESP;
  wire m05_couplers_to_processor_axi_periph_RVALID;
  wire [31:0]m05_couplers_to_processor_axi_periph_WDATA;
  wire m05_couplers_to_processor_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_processor_axi_periph_WSTRB;
  wire m05_couplers_to_processor_axi_periph_WVALID;
  wire [3:0]m06_couplers_to_processor_axi_periph_ARADDR;
  wire m06_couplers_to_processor_axi_periph_ARREADY;
  wire m06_couplers_to_processor_axi_periph_ARVALID;
  wire [3:0]m06_couplers_to_processor_axi_periph_AWADDR;
  wire m06_couplers_to_processor_axi_periph_AWREADY;
  wire m06_couplers_to_processor_axi_periph_AWVALID;
  wire m06_couplers_to_processor_axi_periph_BREADY;
  wire [1:0]m06_couplers_to_processor_axi_periph_BRESP;
  wire m06_couplers_to_processor_axi_periph_BVALID;
  wire [31:0]m06_couplers_to_processor_axi_periph_RDATA;
  wire m06_couplers_to_processor_axi_periph_RREADY;
  wire [1:0]m06_couplers_to_processor_axi_periph_RRESP;
  wire m06_couplers_to_processor_axi_periph_RVALID;
  wire [31:0]m06_couplers_to_processor_axi_periph_WDATA;
  wire m06_couplers_to_processor_axi_periph_WREADY;
  wire [3:0]m06_couplers_to_processor_axi_periph_WSTRB;
  wire m06_couplers_to_processor_axi_periph_WVALID;
  wire [6:0]m07_couplers_to_processor_axi_periph_ARADDR;
  wire m07_couplers_to_processor_axi_periph_ARREADY;
  wire m07_couplers_to_processor_axi_periph_ARVALID;
  wire [6:0]m07_couplers_to_processor_axi_periph_AWADDR;
  wire m07_couplers_to_processor_axi_periph_AWREADY;
  wire m07_couplers_to_processor_axi_periph_AWVALID;
  wire m07_couplers_to_processor_axi_periph_BREADY;
  wire [1:0]m07_couplers_to_processor_axi_periph_BRESP;
  wire m07_couplers_to_processor_axi_periph_BVALID;
  wire [31:0]m07_couplers_to_processor_axi_periph_RDATA;
  wire m07_couplers_to_processor_axi_periph_RREADY;
  wire [1:0]m07_couplers_to_processor_axi_periph_RRESP;
  wire m07_couplers_to_processor_axi_periph_RVALID;
  wire [31:0]m07_couplers_to_processor_axi_periph_WDATA;
  wire m07_couplers_to_processor_axi_periph_WREADY;
  wire [3:0]m07_couplers_to_processor_axi_periph_WSTRB;
  wire m07_couplers_to_processor_axi_periph_WVALID;
  wire [12:0]m08_couplers_to_processor_axi_periph_ARADDR;
  wire m08_couplers_to_processor_axi_periph_ARREADY;
  wire m08_couplers_to_processor_axi_periph_ARVALID;
  wire [12:0]m08_couplers_to_processor_axi_periph_AWADDR;
  wire m08_couplers_to_processor_axi_periph_AWREADY;
  wire m08_couplers_to_processor_axi_periph_AWVALID;
  wire m08_couplers_to_processor_axi_periph_BREADY;
  wire [1:0]m08_couplers_to_processor_axi_periph_BRESP;
  wire m08_couplers_to_processor_axi_periph_BVALID;
  wire [31:0]m08_couplers_to_processor_axi_periph_RDATA;
  wire m08_couplers_to_processor_axi_periph_RREADY;
  wire [1:0]m08_couplers_to_processor_axi_periph_RRESP;
  wire m08_couplers_to_processor_axi_periph_RVALID;
  wire [31:0]m08_couplers_to_processor_axi_periph_WDATA;
  wire m08_couplers_to_processor_axi_periph_WREADY;
  wire [3:0]m08_couplers_to_processor_axi_periph_WSTRB;
  wire m08_couplers_to_processor_axi_periph_WVALID;
  wire [4:0]m09_couplers_to_processor_axi_periph_ARADDR;
  wire m09_couplers_to_processor_axi_periph_ARREADY;
  wire m09_couplers_to_processor_axi_periph_ARVALID;
  wire [4:0]m09_couplers_to_processor_axi_periph_AWADDR;
  wire m09_couplers_to_processor_axi_periph_AWREADY;
  wire m09_couplers_to_processor_axi_periph_AWVALID;
  wire m09_couplers_to_processor_axi_periph_BREADY;
  wire [1:0]m09_couplers_to_processor_axi_periph_BRESP;
  wire m09_couplers_to_processor_axi_periph_BVALID;
  wire [31:0]m09_couplers_to_processor_axi_periph_RDATA;
  wire m09_couplers_to_processor_axi_periph_RREADY;
  wire [1:0]m09_couplers_to_processor_axi_periph_RRESP;
  wire m09_couplers_to_processor_axi_periph_RVALID;
  wire [31:0]m09_couplers_to_processor_axi_periph_WDATA;
  wire m09_couplers_to_processor_axi_periph_WREADY;
  wire [3:0]m09_couplers_to_processor_axi_periph_WSTRB;
  wire m09_couplers_to_processor_axi_periph_WVALID;
  wire processor_axi_periph_ACLK_net;
  wire processor_axi_periph_ARESETN_net;
  wire [31:0]processor_axi_periph_to_s00_couplers_ARADDR;
  wire [2:0]processor_axi_periph_to_s00_couplers_ARPROT;
  wire [0:0]processor_axi_periph_to_s00_couplers_ARREADY;
  wire [0:0]processor_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]processor_axi_periph_to_s00_couplers_AWADDR;
  wire [2:0]processor_axi_periph_to_s00_couplers_AWPROT;
  wire [0:0]processor_axi_periph_to_s00_couplers_AWREADY;
  wire [0:0]processor_axi_periph_to_s00_couplers_AWVALID;
  wire [0:0]processor_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]processor_axi_periph_to_s00_couplers_BRESP;
  wire [0:0]processor_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]processor_axi_periph_to_s00_couplers_RDATA;
  wire [0:0]processor_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]processor_axi_periph_to_s00_couplers_RRESP;
  wire [0:0]processor_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]processor_axi_periph_to_s00_couplers_WDATA;
  wire [0:0]processor_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]processor_axi_periph_to_s00_couplers_WSTRB;
  wire [0:0]processor_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [287:256]xbar_to_m08_couplers_ARADDR;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire xbar_to_m08_couplers_ARREADY;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [287:256]xbar_to_m08_couplers_AWADDR;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire xbar_to_m08_couplers_AWREADY;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [319:288]xbar_to_m09_couplers_ARADDR;
  wire [29:27]xbar_to_m09_couplers_ARPROT;
  wire xbar_to_m09_couplers_ARREADY;
  wire [9:9]xbar_to_m09_couplers_ARVALID;
  wire [319:288]xbar_to_m09_couplers_AWADDR;
  wire [29:27]xbar_to_m09_couplers_AWPROT;
  wire xbar_to_m09_couplers_AWREADY;
  wire [9:9]xbar_to_m09_couplers_AWVALID;
  wire [9:9]xbar_to_m09_couplers_BREADY;
  wire [1:0]xbar_to_m09_couplers_BRESP;
  wire xbar_to_m09_couplers_BVALID;
  wire [31:0]xbar_to_m09_couplers_RDATA;
  wire [9:9]xbar_to_m09_couplers_RREADY;
  wire [1:0]xbar_to_m09_couplers_RRESP;
  wire xbar_to_m09_couplers_RVALID;
  wire [319:288]xbar_to_m09_couplers_WDATA;
  wire xbar_to_m09_couplers_WREADY;
  wire [39:36]xbar_to_m09_couplers_WSTRB;
  wire [9:9]xbar_to_m09_couplers_WVALID;
  wire [29:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [29:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_processor_axi_periph_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_processor_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_processor_axi_periph_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_processor_axi_periph_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_processor_axi_periph_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_processor_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_processor_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_processor_axi_periph_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_processor_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr = m01_couplers_to_processor_axi_periph_ARADDR;
  assign M01_AXI_arprot = m01_couplers_to_processor_axi_periph_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_processor_axi_periph_ARVALID;
  assign M01_AXI_awaddr = m01_couplers_to_processor_axi_periph_AWADDR;
  assign M01_AXI_awprot = m01_couplers_to_processor_axi_periph_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_processor_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_processor_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_processor_axi_periph_RREADY;
  assign M01_AXI_wdata = m01_couplers_to_processor_axi_periph_WDATA;
  assign M01_AXI_wstrb = m01_couplers_to_processor_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_processor_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_processor_axi_periph_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_processor_axi_periph_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_processor_axi_periph_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_processor_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_processor_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_processor_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_processor_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_processor_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_processor_axi_periph_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[8:0] = m03_couplers_to_processor_axi_periph_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_processor_axi_periph_ARVALID;
  assign M03_AXI_awaddr[8:0] = m03_couplers_to_processor_axi_periph_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_processor_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_processor_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_processor_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_processor_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_processor_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_processor_axi_periph_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[8:0] = m04_couplers_to_processor_axi_periph_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_processor_axi_periph_ARVALID;
  assign M04_AXI_awaddr[8:0] = m04_couplers_to_processor_axi_periph_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_processor_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_processor_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_processor_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_processor_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_processor_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_processor_axi_periph_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[6:0] = m05_couplers_to_processor_axi_periph_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_processor_axi_periph_ARVALID;
  assign M05_AXI_awaddr[6:0] = m05_couplers_to_processor_axi_periph_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_processor_axi_periph_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_processor_axi_periph_BREADY;
  assign M05_AXI_rready = m05_couplers_to_processor_axi_periph_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_processor_axi_periph_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_processor_axi_periph_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_processor_axi_periph_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[3:0] = m06_couplers_to_processor_axi_periph_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_processor_axi_periph_ARVALID;
  assign M06_AXI_awaddr[3:0] = m06_couplers_to_processor_axi_periph_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_processor_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_processor_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_processor_axi_periph_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_processor_axi_periph_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_processor_axi_periph_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_processor_axi_periph_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[6:0] = m07_couplers_to_processor_axi_periph_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_processor_axi_periph_ARVALID;
  assign M07_AXI_awaddr[6:0] = m07_couplers_to_processor_axi_periph_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_processor_axi_periph_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_processor_axi_periph_BREADY;
  assign M07_AXI_rready = m07_couplers_to_processor_axi_periph_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_processor_axi_periph_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_processor_axi_periph_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_processor_axi_periph_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN;
  assign M08_AXI_araddr[12:0] = m08_couplers_to_processor_axi_periph_ARADDR;
  assign M08_AXI_arvalid = m08_couplers_to_processor_axi_periph_ARVALID;
  assign M08_AXI_awaddr[12:0] = m08_couplers_to_processor_axi_periph_AWADDR;
  assign M08_AXI_awvalid = m08_couplers_to_processor_axi_periph_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_processor_axi_periph_BREADY;
  assign M08_AXI_rready = m08_couplers_to_processor_axi_periph_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_processor_axi_periph_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_processor_axi_periph_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_processor_axi_periph_WVALID;
  assign M09_ACLK_1 = M09_ACLK;
  assign M09_ARESETN_1 = M09_ARESETN;
  assign M09_AXI_araddr[4:0] = m09_couplers_to_processor_axi_periph_ARADDR;
  assign M09_AXI_arvalid = m09_couplers_to_processor_axi_periph_ARVALID;
  assign M09_AXI_awaddr[4:0] = m09_couplers_to_processor_axi_periph_AWADDR;
  assign M09_AXI_awvalid = m09_couplers_to_processor_axi_periph_AWVALID;
  assign M09_AXI_bready = m09_couplers_to_processor_axi_periph_BREADY;
  assign M09_AXI_rready = m09_couplers_to_processor_axi_periph_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_processor_axi_periph_WDATA;
  assign M09_AXI_wstrb[3:0] = m09_couplers_to_processor_axi_periph_WSTRB;
  assign M09_AXI_wvalid = m09_couplers_to_processor_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = processor_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = processor_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = processor_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = processor_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = processor_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = processor_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = processor_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = processor_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_processor_axi_periph_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_processor_axi_periph_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_processor_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_processor_axi_periph_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_processor_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_processor_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_processor_axi_periph_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_processor_axi_periph_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_processor_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_processor_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_processor_axi_periph_BRESP = M01_AXI_bresp;
  assign m01_couplers_to_processor_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_processor_axi_periph_RDATA = M01_AXI_rdata;
  assign m01_couplers_to_processor_axi_periph_RRESP = M01_AXI_rresp;
  assign m01_couplers_to_processor_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_processor_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_processor_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_processor_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_processor_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_processor_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_processor_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_processor_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_processor_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_processor_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_processor_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_processor_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_processor_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_processor_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_processor_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_processor_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_processor_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_processor_axi_periph_WREADY = M03_AXI_wready;
  assign m04_couplers_to_processor_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_processor_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_processor_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_processor_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_processor_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_processor_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_processor_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_processor_axi_periph_WREADY = M04_AXI_wready;
  assign m05_couplers_to_processor_axi_periph_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_processor_axi_periph_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_processor_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_processor_axi_periph_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_processor_axi_periph_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_processor_axi_periph_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_processor_axi_periph_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_processor_axi_periph_WREADY = M05_AXI_wready;
  assign m06_couplers_to_processor_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_processor_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_processor_axi_periph_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_processor_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_processor_axi_periph_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_processor_axi_periph_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_processor_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_processor_axi_periph_WREADY = M06_AXI_wready;
  assign m07_couplers_to_processor_axi_periph_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_processor_axi_periph_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_processor_axi_periph_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_processor_axi_periph_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_processor_axi_periph_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_processor_axi_periph_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_processor_axi_periph_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_processor_axi_periph_WREADY = M07_AXI_wready;
  assign m08_couplers_to_processor_axi_periph_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_processor_axi_periph_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_processor_axi_periph_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_processor_axi_periph_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_processor_axi_periph_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_processor_axi_periph_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_processor_axi_periph_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_processor_axi_periph_WREADY = M08_AXI_wready;
  assign m09_couplers_to_processor_axi_periph_ARREADY = M09_AXI_arready;
  assign m09_couplers_to_processor_axi_periph_AWREADY = M09_AXI_awready;
  assign m09_couplers_to_processor_axi_periph_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_processor_axi_periph_BVALID = M09_AXI_bvalid;
  assign m09_couplers_to_processor_axi_periph_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_processor_axi_periph_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_processor_axi_periph_RVALID = M09_AXI_rvalid;
  assign m09_couplers_to_processor_axi_periph_WREADY = M09_AXI_wready;
  assign processor_axi_periph_ACLK_net = ACLK;
  assign processor_axi_periph_ARESETN_net = ARESETN;
  assign processor_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign processor_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign processor_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign processor_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign processor_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign processor_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign processor_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign processor_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign processor_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign processor_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign processor_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  m00_couplers_imp_12Z93D4 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_processor_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_processor_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_processor_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_processor_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_processor_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_processor_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_processor_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_processor_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_processor_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_processor_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_processor_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_processor_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_processor_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_processor_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_processor_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_processor_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_processor_axi_periph_WVALID),
        .S_ACLK(processor_axi_periph_ACLK_net),
        .S_ARESETN(processor_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_RIHXNT m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_processor_axi_periph_ARADDR),
        .M_AXI_arprot(m01_couplers_to_processor_axi_periph_ARPROT),
        .M_AXI_arready(m01_couplers_to_processor_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_processor_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_processor_axi_periph_AWADDR),
        .M_AXI_awprot(m01_couplers_to_processor_axi_periph_AWPROT),
        .M_AXI_awready(m01_couplers_to_processor_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_processor_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_processor_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_processor_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_processor_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_processor_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_processor_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_processor_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_processor_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_processor_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_processor_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_processor_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_processor_axi_periph_WVALID),
        .S_ACLK(processor_axi_periph_ACLK_net),
        .S_ARESETN(processor_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR[32]),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT[3]),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR[32]),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT[3]),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA[32]),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB[4]),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_127B8P7 m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_processor_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_processor_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_processor_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_processor_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_processor_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_processor_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_processor_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_processor_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_processor_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_processor_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_processor_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_processor_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_processor_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_processor_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_processor_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_processor_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_processor_axi_periph_WVALID),
        .S_ACLK(processor_axi_periph_ACLK_net),
        .S_ARESETN(processor_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_SKQ0IY m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_processor_axi_periph_ARADDR),
        .M_AXI_arready(m03_couplers_to_processor_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_processor_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_processor_axi_periph_AWADDR),
        .M_AXI_awready(m03_couplers_to_processor_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_processor_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_processor_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_processor_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_processor_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_processor_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_processor_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_processor_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_processor_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_processor_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_processor_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_processor_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_processor_axi_periph_WVALID),
        .S_ACLK(processor_axi_periph_ACLK_net),
        .S_ARESETN(processor_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_11OPL5A m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_processor_axi_periph_ARADDR),
        .M_AXI_arready(m04_couplers_to_processor_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_processor_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_processor_axi_periph_AWADDR),
        .M_AXI_awready(m04_couplers_to_processor_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_processor_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_processor_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_processor_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_processor_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_processor_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_processor_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_processor_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_processor_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_processor_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_processor_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_processor_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_processor_axi_periph_WVALID),
        .S_ACLK(processor_axi_periph_ACLK_net),
        .S_ARESETN(processor_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_SZVYY7 m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_processor_axi_periph_ARADDR),
        .M_AXI_arready(m05_couplers_to_processor_axi_periph_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_processor_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_processor_axi_periph_AWADDR),
        .M_AXI_awready(m05_couplers_to_processor_axi_periph_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_processor_axi_periph_AWVALID),
        .M_AXI_bready(m05_couplers_to_processor_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_processor_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_processor_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_processor_axi_periph_RDATA),
        .M_AXI_rready(m05_couplers_to_processor_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_processor_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_processor_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_processor_axi_periph_WDATA),
        .M_AXI_wready(m05_couplers_to_processor_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_processor_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_processor_axi_periph_WVALID),
        .S_ACLK(processor_axi_periph_ACLK_net),
        .S_ARESETN(processor_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_102TMFH m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_processor_axi_periph_ARADDR),
        .M_AXI_arready(m06_couplers_to_processor_axi_periph_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_processor_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_processor_axi_periph_AWADDR),
        .M_AXI_awready(m06_couplers_to_processor_axi_periph_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_processor_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_processor_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_processor_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_processor_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_processor_axi_periph_RDATA),
        .M_AXI_rready(m06_couplers_to_processor_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_processor_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_processor_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_processor_axi_periph_WDATA),
        .M_AXI_wready(m06_couplers_to_processor_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_processor_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_processor_axi_periph_WVALID),
        .S_ACLK(processor_axi_periph_ACLK_net),
        .S_ARESETN(processor_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_UC4CVG m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_processor_axi_periph_ARADDR),
        .M_AXI_arready(m07_couplers_to_processor_axi_periph_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_processor_axi_periph_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_processor_axi_periph_AWADDR),
        .M_AXI_awready(m07_couplers_to_processor_axi_periph_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_processor_axi_periph_AWVALID),
        .M_AXI_bready(m07_couplers_to_processor_axi_periph_BREADY),
        .M_AXI_bresp(m07_couplers_to_processor_axi_periph_BRESP),
        .M_AXI_bvalid(m07_couplers_to_processor_axi_periph_BVALID),
        .M_AXI_rdata(m07_couplers_to_processor_axi_periph_RDATA),
        .M_AXI_rready(m07_couplers_to_processor_axi_periph_RREADY),
        .M_AXI_rresp(m07_couplers_to_processor_axi_periph_RRESP),
        .M_AXI_rvalid(m07_couplers_to_processor_axi_periph_RVALID),
        .M_AXI_wdata(m07_couplers_to_processor_axi_periph_WDATA),
        .M_AXI_wready(m07_couplers_to_processor_axi_periph_WREADY),
        .M_AXI_wstrb(m07_couplers_to_processor_axi_periph_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_processor_axi_periph_WVALID),
        .S_ACLK(processor_axi_periph_ACLK_net),
        .S_ARESETN(processor_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_171WQBO m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_processor_axi_periph_ARADDR),
        .M_AXI_arready(m08_couplers_to_processor_axi_periph_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_processor_axi_periph_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_processor_axi_periph_AWADDR),
        .M_AXI_awready(m08_couplers_to_processor_axi_periph_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_processor_axi_periph_AWVALID),
        .M_AXI_bready(m08_couplers_to_processor_axi_periph_BREADY),
        .M_AXI_bresp(m08_couplers_to_processor_axi_periph_BRESP),
        .M_AXI_bvalid(m08_couplers_to_processor_axi_periph_BVALID),
        .M_AXI_rdata(m08_couplers_to_processor_axi_periph_RDATA),
        .M_AXI_rready(m08_couplers_to_processor_axi_periph_RREADY),
        .M_AXI_rresp(m08_couplers_to_processor_axi_periph_RRESP),
        .M_AXI_rvalid(m08_couplers_to_processor_axi_periph_RVALID),
        .M_AXI_wdata(m08_couplers_to_processor_axi_periph_WDATA),
        .M_AXI_wready(m08_couplers_to_processor_axi_periph_WREADY),
        .M_AXI_wstrb(m08_couplers_to_processor_axi_periph_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_processor_axi_periph_WVALID),
        .S_ACLK(processor_axi_periph_ACLK_net),
        .S_ARESETN(processor_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  m09_couplers_imp_WBEKYT m09_couplers
       (.M_ACLK(M09_ACLK_1),
        .M_ARESETN(M09_ARESETN_1),
        .M_AXI_araddr(m09_couplers_to_processor_axi_periph_ARADDR),
        .M_AXI_arready(m09_couplers_to_processor_axi_periph_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_processor_axi_periph_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_processor_axi_periph_AWADDR),
        .M_AXI_awready(m09_couplers_to_processor_axi_periph_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_processor_axi_periph_AWVALID),
        .M_AXI_bready(m09_couplers_to_processor_axi_periph_BREADY),
        .M_AXI_bresp(m09_couplers_to_processor_axi_periph_BRESP),
        .M_AXI_bvalid(m09_couplers_to_processor_axi_periph_BVALID),
        .M_AXI_rdata(m09_couplers_to_processor_axi_periph_RDATA),
        .M_AXI_rready(m09_couplers_to_processor_axi_periph_RREADY),
        .M_AXI_rresp(m09_couplers_to_processor_axi_periph_RRESP),
        .M_AXI_rvalid(m09_couplers_to_processor_axi_periph_RVALID),
        .M_AXI_wdata(m09_couplers_to_processor_axi_periph_WDATA),
        .M_AXI_wready(m09_couplers_to_processor_axi_periph_WREADY),
        .M_AXI_wstrb(m09_couplers_to_processor_axi_periph_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_processor_axi_periph_WVALID),
        .S_ACLK(processor_axi_periph_ACLK_net),
        .S_ARESETN(processor_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m09_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m09_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m09_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m09_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m09_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m09_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m09_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m09_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m09_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m09_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m09_couplers_RDATA),
        .S_AXI_rready(xbar_to_m09_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m09_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m09_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m09_couplers_WDATA),
        .S_AXI_wready(xbar_to_m09_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m09_couplers_WVALID));
  s00_couplers_imp_WJDP8Q s00_couplers
       (.M_ACLK(processor_axi_periph_ACLK_net),
        .M_ARESETN(processor_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(processor_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arprot(processor_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(processor_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(processor_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(processor_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(processor_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(processor_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(processor_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(processor_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(processor_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(processor_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(processor_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(processor_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(processor_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(processor_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(processor_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(processor_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(processor_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(processor_axi_periph_to_s00_couplers_WVALID));
  ex_synth_xbar_3 xbar
       (.aclk(processor_axi_periph_ACLK_net),
        .aresetn(processor_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m09_couplers_ARPROT,xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[8:6],xbar_to_m01_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m09_couplers_AWPROT,xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[8:6],xbar_to_m01_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_12Z93D4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_95M5ZT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [1:0]m00_couplers_to_m00_couplers_ARID;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire m00_couplers_to_m00_couplers_ARLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [3:0]m00_couplers_to_m00_couplers_ARQOS;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [1:0]m00_couplers_to_m00_couplers_AWID;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire m00_couplers_to_m00_couplers_AWLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [3:0]m00_couplers_to_m00_couplers_AWQOS;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire [1:0]m00_couplers_to_m00_couplers_BID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [127:0]m00_couplers_to_m00_couplers_RDATA;
  wire [1:0]m00_couplers_to_m00_couplers_RID;
  wire m00_couplers_to_m00_couplers_RLAST;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [127:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WLAST;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [15:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid[1:0] = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[127:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid[1:0] = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid[1:0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock;
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid[1:0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock;
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid[1:0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[127:0];
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid[1:0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[127:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[15:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_RIHXNT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARPROT;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWPROT;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arprot = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awprot = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr;
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot;
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr;
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot;
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp;
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata;
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp;
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata;
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb;
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_127B8P7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_SKQ0IY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [8:0]auto_cc_to_m03_couplers_ARADDR;
  wire auto_cc_to_m03_couplers_ARREADY;
  wire auto_cc_to_m03_couplers_ARVALID;
  wire [8:0]auto_cc_to_m03_couplers_AWADDR;
  wire auto_cc_to_m03_couplers_AWREADY;
  wire auto_cc_to_m03_couplers_AWVALID;
  wire auto_cc_to_m03_couplers_BREADY;
  wire [1:0]auto_cc_to_m03_couplers_BRESP;
  wire auto_cc_to_m03_couplers_BVALID;
  wire [31:0]auto_cc_to_m03_couplers_RDATA;
  wire auto_cc_to_m03_couplers_RREADY;
  wire [1:0]auto_cc_to_m03_couplers_RRESP;
  wire auto_cc_to_m03_couplers_RVALID;
  wire [31:0]auto_cc_to_m03_couplers_WDATA;
  wire auto_cc_to_m03_couplers_WREADY;
  wire [3:0]auto_cc_to_m03_couplers_WSTRB;
  wire auto_cc_to_m03_couplers_WVALID;
  wire [31:0]m03_couplers_to_auto_cc_ARADDR;
  wire [2:0]m03_couplers_to_auto_cc_ARPROT;
  wire m03_couplers_to_auto_cc_ARREADY;
  wire m03_couplers_to_auto_cc_ARVALID;
  wire [31:0]m03_couplers_to_auto_cc_AWADDR;
  wire [2:0]m03_couplers_to_auto_cc_AWPROT;
  wire m03_couplers_to_auto_cc_AWREADY;
  wire m03_couplers_to_auto_cc_AWVALID;
  wire m03_couplers_to_auto_cc_BREADY;
  wire [1:0]m03_couplers_to_auto_cc_BRESP;
  wire m03_couplers_to_auto_cc_BVALID;
  wire [31:0]m03_couplers_to_auto_cc_RDATA;
  wire m03_couplers_to_auto_cc_RREADY;
  wire [1:0]m03_couplers_to_auto_cc_RRESP;
  wire m03_couplers_to_auto_cc_RVALID;
  wire [31:0]m03_couplers_to_auto_cc_WDATA;
  wire m03_couplers_to_auto_cc_WREADY;
  wire [3:0]m03_couplers_to_auto_cc_WSTRB;
  wire m03_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  ex_synth_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m03_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m03_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m03_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m03_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m03_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m03_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m03_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m03_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m03_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m03_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m03_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m03_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m03_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m03_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m03_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m03_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m03_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_cc_WVALID));
endmodule

module m04_couplers_imp_11OPL5A
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [8:0]auto_cc_to_m04_couplers_ARADDR;
  wire auto_cc_to_m04_couplers_ARREADY;
  wire auto_cc_to_m04_couplers_ARVALID;
  wire [8:0]auto_cc_to_m04_couplers_AWADDR;
  wire auto_cc_to_m04_couplers_AWREADY;
  wire auto_cc_to_m04_couplers_AWVALID;
  wire auto_cc_to_m04_couplers_BREADY;
  wire [1:0]auto_cc_to_m04_couplers_BRESP;
  wire auto_cc_to_m04_couplers_BVALID;
  wire [31:0]auto_cc_to_m04_couplers_RDATA;
  wire auto_cc_to_m04_couplers_RREADY;
  wire [1:0]auto_cc_to_m04_couplers_RRESP;
  wire auto_cc_to_m04_couplers_RVALID;
  wire [31:0]auto_cc_to_m04_couplers_WDATA;
  wire auto_cc_to_m04_couplers_WREADY;
  wire [3:0]auto_cc_to_m04_couplers_WSTRB;
  wire auto_cc_to_m04_couplers_WVALID;
  wire [31:0]m04_couplers_to_auto_cc_ARADDR;
  wire [2:0]m04_couplers_to_auto_cc_ARPROT;
  wire m04_couplers_to_auto_cc_ARREADY;
  wire m04_couplers_to_auto_cc_ARVALID;
  wire [31:0]m04_couplers_to_auto_cc_AWADDR;
  wire [2:0]m04_couplers_to_auto_cc_AWPROT;
  wire m04_couplers_to_auto_cc_AWREADY;
  wire m04_couplers_to_auto_cc_AWVALID;
  wire m04_couplers_to_auto_cc_BREADY;
  wire [1:0]m04_couplers_to_auto_cc_BRESP;
  wire m04_couplers_to_auto_cc_BVALID;
  wire [31:0]m04_couplers_to_auto_cc_RDATA;
  wire m04_couplers_to_auto_cc_RREADY;
  wire [1:0]m04_couplers_to_auto_cc_RRESP;
  wire m04_couplers_to_auto_cc_RVALID;
  wire [31:0]m04_couplers_to_auto_cc_WDATA;
  wire m04_couplers_to_auto_cc_WREADY;
  wire [3:0]m04_couplers_to_auto_cc_WSTRB;
  wire m04_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m04_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m04_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m04_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m04_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m04_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  ex_synth_auto_cc_4 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m04_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m04_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m04_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m04_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m04_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m04_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m04_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m04_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m04_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m04_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m04_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m04_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m04_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m04_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m04_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m04_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m04_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m04_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m04_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m04_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m04_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m04_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m04_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m04_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m04_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m04_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m04_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_cc_WVALID));
endmodule

module m05_couplers_imp_SZVYY7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [6:0]auto_cc_to_m05_couplers_ARADDR;
  wire auto_cc_to_m05_couplers_ARREADY;
  wire auto_cc_to_m05_couplers_ARVALID;
  wire [6:0]auto_cc_to_m05_couplers_AWADDR;
  wire auto_cc_to_m05_couplers_AWREADY;
  wire auto_cc_to_m05_couplers_AWVALID;
  wire auto_cc_to_m05_couplers_BREADY;
  wire [1:0]auto_cc_to_m05_couplers_BRESP;
  wire auto_cc_to_m05_couplers_BVALID;
  wire [31:0]auto_cc_to_m05_couplers_RDATA;
  wire auto_cc_to_m05_couplers_RREADY;
  wire [1:0]auto_cc_to_m05_couplers_RRESP;
  wire auto_cc_to_m05_couplers_RVALID;
  wire [31:0]auto_cc_to_m05_couplers_WDATA;
  wire auto_cc_to_m05_couplers_WREADY;
  wire [3:0]auto_cc_to_m05_couplers_WSTRB;
  wire auto_cc_to_m05_couplers_WVALID;
  wire [31:0]m05_couplers_to_auto_cc_ARADDR;
  wire [2:0]m05_couplers_to_auto_cc_ARPROT;
  wire m05_couplers_to_auto_cc_ARREADY;
  wire m05_couplers_to_auto_cc_ARVALID;
  wire [31:0]m05_couplers_to_auto_cc_AWADDR;
  wire [2:0]m05_couplers_to_auto_cc_AWPROT;
  wire m05_couplers_to_auto_cc_AWREADY;
  wire m05_couplers_to_auto_cc_AWVALID;
  wire m05_couplers_to_auto_cc_BREADY;
  wire [1:0]m05_couplers_to_auto_cc_BRESP;
  wire m05_couplers_to_auto_cc_BVALID;
  wire [31:0]m05_couplers_to_auto_cc_RDATA;
  wire m05_couplers_to_auto_cc_RREADY;
  wire [1:0]m05_couplers_to_auto_cc_RRESP;
  wire m05_couplers_to_auto_cc_RVALID;
  wire [31:0]m05_couplers_to_auto_cc_WDATA;
  wire m05_couplers_to_auto_cc_WREADY;
  wire [3:0]m05_couplers_to_auto_cc_WSTRB;
  wire m05_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = auto_cc_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = auto_cc_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m05_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m05_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m05_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m05_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m05_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m05_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m05_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m05_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m05_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  ex_synth_auto_cc_5 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m05_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m05_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m05_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m05_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m05_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m05_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m05_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m05_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m05_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m05_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m05_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m05_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m05_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m05_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m05_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m05_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m05_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m05_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m05_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m05_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m05_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m05_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m05_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m05_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m05_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m05_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m05_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m05_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m05_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m05_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m05_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m05_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m05_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m05_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m05_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m05_couplers_to_auto_cc_WVALID));
endmodule

module m06_couplers_imp_102TMFH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [3:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [3:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [3:0]auto_cc_to_m06_couplers_ARADDR;
  wire auto_cc_to_m06_couplers_ARREADY;
  wire auto_cc_to_m06_couplers_ARVALID;
  wire [3:0]auto_cc_to_m06_couplers_AWADDR;
  wire auto_cc_to_m06_couplers_AWREADY;
  wire auto_cc_to_m06_couplers_AWVALID;
  wire auto_cc_to_m06_couplers_BREADY;
  wire [1:0]auto_cc_to_m06_couplers_BRESP;
  wire auto_cc_to_m06_couplers_BVALID;
  wire [31:0]auto_cc_to_m06_couplers_RDATA;
  wire auto_cc_to_m06_couplers_RREADY;
  wire [1:0]auto_cc_to_m06_couplers_RRESP;
  wire auto_cc_to_m06_couplers_RVALID;
  wire [31:0]auto_cc_to_m06_couplers_WDATA;
  wire auto_cc_to_m06_couplers_WREADY;
  wire [3:0]auto_cc_to_m06_couplers_WSTRB;
  wire auto_cc_to_m06_couplers_WVALID;
  wire [31:0]m06_couplers_to_auto_cc_ARADDR;
  wire [2:0]m06_couplers_to_auto_cc_ARPROT;
  wire m06_couplers_to_auto_cc_ARREADY;
  wire m06_couplers_to_auto_cc_ARVALID;
  wire [31:0]m06_couplers_to_auto_cc_AWADDR;
  wire [2:0]m06_couplers_to_auto_cc_AWPROT;
  wire m06_couplers_to_auto_cc_AWREADY;
  wire m06_couplers_to_auto_cc_AWVALID;
  wire m06_couplers_to_auto_cc_BREADY;
  wire [1:0]m06_couplers_to_auto_cc_BRESP;
  wire m06_couplers_to_auto_cc_BVALID;
  wire [31:0]m06_couplers_to_auto_cc_RDATA;
  wire m06_couplers_to_auto_cc_RREADY;
  wire [1:0]m06_couplers_to_auto_cc_RRESP;
  wire m06_couplers_to_auto_cc_RVALID;
  wire [31:0]m06_couplers_to_auto_cc_WDATA;
  wire m06_couplers_to_auto_cc_WREADY;
  wire [3:0]m06_couplers_to_auto_cc_WSTRB;
  wire m06_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[3:0] = auto_cc_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[3:0] = auto_cc_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m06_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m06_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m06_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m06_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m06_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m06_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m06_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m06_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m06_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  ex_synth_auto_cc_6 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m06_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m06_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m06_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m06_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m06_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m06_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m06_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m06_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m06_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m06_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m06_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m06_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m06_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m06_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m06_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m06_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m06_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m06_couplers_to_auto_cc_ARADDR[3:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m06_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m06_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m06_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m06_couplers_to_auto_cc_AWADDR[3:0]),
        .s_axi_awprot(m06_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m06_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m06_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m06_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m06_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m06_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m06_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m06_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m06_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m06_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m06_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m06_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m06_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m06_couplers_to_auto_cc_WVALID));
endmodule

module m07_couplers_imp_UC4CVG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [6:0]auto_cc_to_m07_couplers_ARADDR;
  wire auto_cc_to_m07_couplers_ARREADY;
  wire auto_cc_to_m07_couplers_ARVALID;
  wire [6:0]auto_cc_to_m07_couplers_AWADDR;
  wire auto_cc_to_m07_couplers_AWREADY;
  wire auto_cc_to_m07_couplers_AWVALID;
  wire auto_cc_to_m07_couplers_BREADY;
  wire [1:0]auto_cc_to_m07_couplers_BRESP;
  wire auto_cc_to_m07_couplers_BVALID;
  wire [31:0]auto_cc_to_m07_couplers_RDATA;
  wire auto_cc_to_m07_couplers_RREADY;
  wire [1:0]auto_cc_to_m07_couplers_RRESP;
  wire auto_cc_to_m07_couplers_RVALID;
  wire [31:0]auto_cc_to_m07_couplers_WDATA;
  wire auto_cc_to_m07_couplers_WREADY;
  wire [3:0]auto_cc_to_m07_couplers_WSTRB;
  wire auto_cc_to_m07_couplers_WVALID;
  wire [31:0]m07_couplers_to_auto_cc_ARADDR;
  wire [2:0]m07_couplers_to_auto_cc_ARPROT;
  wire m07_couplers_to_auto_cc_ARREADY;
  wire m07_couplers_to_auto_cc_ARVALID;
  wire [31:0]m07_couplers_to_auto_cc_AWADDR;
  wire [2:0]m07_couplers_to_auto_cc_AWPROT;
  wire m07_couplers_to_auto_cc_AWREADY;
  wire m07_couplers_to_auto_cc_AWVALID;
  wire m07_couplers_to_auto_cc_BREADY;
  wire [1:0]m07_couplers_to_auto_cc_BRESP;
  wire m07_couplers_to_auto_cc_BVALID;
  wire [31:0]m07_couplers_to_auto_cc_RDATA;
  wire m07_couplers_to_auto_cc_RREADY;
  wire [1:0]m07_couplers_to_auto_cc_RRESP;
  wire m07_couplers_to_auto_cc_RVALID;
  wire [31:0]m07_couplers_to_auto_cc_WDATA;
  wire m07_couplers_to_auto_cc_WREADY;
  wire [3:0]m07_couplers_to_auto_cc_WSTRB;
  wire m07_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = auto_cc_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = auto_cc_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m07_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m07_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m07_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m07_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m07_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m07_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m07_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m07_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m07_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  ex_synth_auto_cc_7 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m07_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m07_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m07_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m07_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m07_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m07_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m07_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m07_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m07_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m07_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m07_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m07_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m07_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m07_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m07_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m07_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m07_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m07_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m07_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m07_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m07_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m07_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m07_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m07_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m07_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m07_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m07_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m07_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m07_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m07_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m07_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m07_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m07_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m07_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m07_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m07_couplers_to_auto_cc_WVALID));
endmodule

module m08_couplers_imp_171WQBO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [12:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [12:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [12:0]auto_cc_to_m08_couplers_ARADDR;
  wire auto_cc_to_m08_couplers_ARREADY;
  wire auto_cc_to_m08_couplers_ARVALID;
  wire [12:0]auto_cc_to_m08_couplers_AWADDR;
  wire auto_cc_to_m08_couplers_AWREADY;
  wire auto_cc_to_m08_couplers_AWVALID;
  wire auto_cc_to_m08_couplers_BREADY;
  wire [1:0]auto_cc_to_m08_couplers_BRESP;
  wire auto_cc_to_m08_couplers_BVALID;
  wire [31:0]auto_cc_to_m08_couplers_RDATA;
  wire auto_cc_to_m08_couplers_RREADY;
  wire [1:0]auto_cc_to_m08_couplers_RRESP;
  wire auto_cc_to_m08_couplers_RVALID;
  wire [31:0]auto_cc_to_m08_couplers_WDATA;
  wire auto_cc_to_m08_couplers_WREADY;
  wire [3:0]auto_cc_to_m08_couplers_WSTRB;
  wire auto_cc_to_m08_couplers_WVALID;
  wire [31:0]m08_couplers_to_auto_cc_ARADDR;
  wire [2:0]m08_couplers_to_auto_cc_ARPROT;
  wire m08_couplers_to_auto_cc_ARREADY;
  wire m08_couplers_to_auto_cc_ARVALID;
  wire [31:0]m08_couplers_to_auto_cc_AWADDR;
  wire [2:0]m08_couplers_to_auto_cc_AWPROT;
  wire m08_couplers_to_auto_cc_AWREADY;
  wire m08_couplers_to_auto_cc_AWVALID;
  wire m08_couplers_to_auto_cc_BREADY;
  wire [1:0]m08_couplers_to_auto_cc_BRESP;
  wire m08_couplers_to_auto_cc_BVALID;
  wire [31:0]m08_couplers_to_auto_cc_RDATA;
  wire m08_couplers_to_auto_cc_RREADY;
  wire [1:0]m08_couplers_to_auto_cc_RRESP;
  wire m08_couplers_to_auto_cc_RVALID;
  wire [31:0]m08_couplers_to_auto_cc_WDATA;
  wire m08_couplers_to_auto_cc_WREADY;
  wire [3:0]m08_couplers_to_auto_cc_WSTRB;
  wire m08_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[12:0] = auto_cc_to_m08_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[12:0] = auto_cc_to_m08_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m08_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m08_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m08_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m08_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m08_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m08_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m08_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m08_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m08_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m08_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m08_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m08_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m08_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  ex_synth_auto_cc_8 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m08_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m08_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m08_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m08_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m08_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m08_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m08_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m08_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m08_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m08_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m08_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m08_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m08_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m08_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m08_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m08_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m08_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m08_couplers_to_auto_cc_ARADDR[12:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m08_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m08_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m08_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m08_couplers_to_auto_cc_AWADDR[12:0]),
        .s_axi_awprot(m08_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m08_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m08_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m08_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m08_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m08_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m08_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m08_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m08_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m08_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m08_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m08_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m08_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m08_couplers_to_auto_cc_WVALID));
endmodule

module m09_couplers_imp_WBEKYT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [4:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [4:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [4:0]auto_cc_to_m09_couplers_ARADDR;
  wire auto_cc_to_m09_couplers_ARREADY;
  wire auto_cc_to_m09_couplers_ARVALID;
  wire [4:0]auto_cc_to_m09_couplers_AWADDR;
  wire auto_cc_to_m09_couplers_AWREADY;
  wire auto_cc_to_m09_couplers_AWVALID;
  wire auto_cc_to_m09_couplers_BREADY;
  wire [1:0]auto_cc_to_m09_couplers_BRESP;
  wire auto_cc_to_m09_couplers_BVALID;
  wire [31:0]auto_cc_to_m09_couplers_RDATA;
  wire auto_cc_to_m09_couplers_RREADY;
  wire [1:0]auto_cc_to_m09_couplers_RRESP;
  wire auto_cc_to_m09_couplers_RVALID;
  wire [31:0]auto_cc_to_m09_couplers_WDATA;
  wire auto_cc_to_m09_couplers_WREADY;
  wire [3:0]auto_cc_to_m09_couplers_WSTRB;
  wire auto_cc_to_m09_couplers_WVALID;
  wire [31:0]m09_couplers_to_auto_cc_ARADDR;
  wire [2:0]m09_couplers_to_auto_cc_ARPROT;
  wire m09_couplers_to_auto_cc_ARREADY;
  wire m09_couplers_to_auto_cc_ARVALID;
  wire [31:0]m09_couplers_to_auto_cc_AWADDR;
  wire [2:0]m09_couplers_to_auto_cc_AWPROT;
  wire m09_couplers_to_auto_cc_AWREADY;
  wire m09_couplers_to_auto_cc_AWVALID;
  wire m09_couplers_to_auto_cc_BREADY;
  wire [1:0]m09_couplers_to_auto_cc_BRESP;
  wire m09_couplers_to_auto_cc_BVALID;
  wire [31:0]m09_couplers_to_auto_cc_RDATA;
  wire m09_couplers_to_auto_cc_RREADY;
  wire [1:0]m09_couplers_to_auto_cc_RRESP;
  wire m09_couplers_to_auto_cc_RVALID;
  wire [31:0]m09_couplers_to_auto_cc_WDATA;
  wire m09_couplers_to_auto_cc_WREADY;
  wire [3:0]m09_couplers_to_auto_cc_WSTRB;
  wire m09_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[4:0] = auto_cc_to_m09_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[4:0] = auto_cc_to_m09_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m09_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m09_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m09_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m09_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m09_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m09_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m09_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m09_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m09_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m09_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m09_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m09_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m09_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m09_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m09_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m09_couplers_WREADY = M_AXI_wready;
  assign m09_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m09_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m09_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m09_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m09_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m09_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m09_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m09_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m09_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  ex_synth_auto_cc_9 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m09_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m09_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m09_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m09_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m09_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m09_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m09_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m09_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m09_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m09_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m09_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m09_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m09_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m09_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m09_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m09_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m09_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m09_couplers_to_auto_cc_ARADDR[4:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m09_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m09_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m09_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m09_couplers_to_auto_cc_AWADDR[4:0]),
        .s_axi_awprot(m09_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m09_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m09_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m09_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m09_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m09_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m09_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m09_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m09_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m09_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m09_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m09_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m09_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m09_couplers_to_auto_cc_WVALID));
endmodule

module memory_ss_imp_13FY2QP
   (M00_ACLK,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arregion,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awregion,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    clk_ref_i,
    ddr3_sdram_addr,
    ddr3_sdram_ba,
    ddr3_sdram_cas_n,
    ddr3_sdram_ck_n,
    ddr3_sdram_ck_p,
    ddr3_sdram_cke,
    ddr3_sdram_cs_n,
    ddr3_sdram_dm,
    ddr3_sdram_dq,
    ddr3_sdram_dqs_n,
    ddr3_sdram_dqs_p,
    ddr3_sdram_odt,
    ddr3_sdram_ras_n,
    ddr3_sdram_reset_n,
    ddr3_sdram_we_n,
    reset,
    sys_clk_i);
  output M00_ACLK;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [31:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [7:0]S02_AXI_arlen;
  input [1:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output S02_AXI_arready;
  input [3:0]S02_AXI_arregion;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [1:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output S02_AXI_awready;
  input [3:0]S02_AXI_awregion;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output [63:0]S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input [63:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [7:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;
  input clk_ref_i;
  output [13:0]ddr3_sdram_addr;
  output [2:0]ddr3_sdram_ba;
  output ddr3_sdram_cas_n;
  output [0:0]ddr3_sdram_ck_n;
  output [0:0]ddr3_sdram_ck_p;
  output [0:0]ddr3_sdram_cke;
  output [0:0]ddr3_sdram_cs_n;
  output [1:0]ddr3_sdram_dm;
  inout [15:0]ddr3_sdram_dq;
  inout [1:0]ddr3_sdram_dqs_n;
  inout [1:0]ddr3_sdram_dqs_p;
  output [0:0]ddr3_sdram_odt;
  output ddr3_sdram_ras_n;
  output ddr3_sdram_reset_n;
  output ddr3_sdram_we_n;
  input reset;
  input sys_clk_i;

  wire [31:0]axi_mem_intercon_M00_AXI_ARADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_ARBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_ARCACHE;
  wire [1:0]axi_mem_intercon_M00_AXI_ARID;
  wire [7:0]axi_mem_intercon_M00_AXI_ARLEN;
  wire axi_mem_intercon_M00_AXI_ARLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_ARPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_ARQOS;
  wire axi_mem_intercon_M00_AXI_ARREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_ARSIZE;
  wire axi_mem_intercon_M00_AXI_ARVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_AWCACHE;
  wire [1:0]axi_mem_intercon_M00_AXI_AWID;
  wire [7:0]axi_mem_intercon_M00_AXI_AWLEN;
  wire axi_mem_intercon_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_AWQOS;
  wire axi_mem_intercon_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_AWSIZE;
  wire axi_mem_intercon_M00_AXI_AWVALID;
  wire [1:0]axi_mem_intercon_M00_AXI_BID;
  wire axi_mem_intercon_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_BRESP;
  wire axi_mem_intercon_M00_AXI_BVALID;
  wire [127:0]axi_mem_intercon_M00_AXI_RDATA;
  wire [1:0]axi_mem_intercon_M00_AXI_RID;
  wire axi_mem_intercon_M00_AXI_RLAST;
  wire axi_mem_intercon_M00_AXI_RREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_RRESP;
  wire axi_mem_intercon_M00_AXI_RVALID;
  wire [127:0]axi_mem_intercon_M00_AXI_WDATA;
  wire axi_mem_intercon_M00_AXI_WLAST;
  wire axi_mem_intercon_M00_AXI_WREADY;
  wire [15:0]axi_mem_intercon_M00_AXI_WSTRB;
  wire axi_mem_intercon_M00_AXI_WVALID;
  wire clk_ref_i_1;
  wire clk_wiz_1_clk_out3;
  wire [13:0]mig_DDR3_ADDR;
  wire [2:0]mig_DDR3_BA;
  wire mig_DDR3_CAS_N;
  wire [0:0]mig_DDR3_CKE;
  wire [0:0]mig_DDR3_CK_N;
  wire [0:0]mig_DDR3_CK_P;
  wire [0:0]mig_DDR3_CS_N;
  wire [1:0]mig_DDR3_DM;
  wire [15:0]mig_DDR3_DQ;
  wire [1:0]mig_DDR3_DQS_N;
  wire [1:0]mig_DDR3_DQS_P;
  wire [0:0]mig_DDR3_ODT;
  wire mig_DDR3_RAS_N;
  wire mig_DDR3_RESET_N;
  wire mig_DDR3_WE_N;
  wire mig_mmcm_locked;
  wire mig_ui_clk;
  wire mig_ui_clk_sync_rst;
  wire processor_Clk;
  wire [31:0]processor_M_AXI_DC_ARADDR;
  wire [1:0]processor_M_AXI_DC_ARBURST;
  wire [3:0]processor_M_AXI_DC_ARCACHE;
  wire [7:0]processor_M_AXI_DC_ARLEN;
  wire processor_M_AXI_DC_ARLOCK;
  wire [2:0]processor_M_AXI_DC_ARPROT;
  wire [3:0]processor_M_AXI_DC_ARQOS;
  wire processor_M_AXI_DC_ARREADY;
  wire [2:0]processor_M_AXI_DC_ARSIZE;
  wire processor_M_AXI_DC_ARVALID;
  wire [31:0]processor_M_AXI_DC_AWADDR;
  wire [1:0]processor_M_AXI_DC_AWBURST;
  wire [3:0]processor_M_AXI_DC_AWCACHE;
  wire [7:0]processor_M_AXI_DC_AWLEN;
  wire processor_M_AXI_DC_AWLOCK;
  wire [2:0]processor_M_AXI_DC_AWPROT;
  wire [3:0]processor_M_AXI_DC_AWQOS;
  wire processor_M_AXI_DC_AWREADY;
  wire [2:0]processor_M_AXI_DC_AWSIZE;
  wire processor_M_AXI_DC_AWVALID;
  wire processor_M_AXI_DC_BREADY;
  wire [1:0]processor_M_AXI_DC_BRESP;
  wire processor_M_AXI_DC_BVALID;
  wire [31:0]processor_M_AXI_DC_RDATA;
  wire processor_M_AXI_DC_RLAST;
  wire processor_M_AXI_DC_RREADY;
  wire [1:0]processor_M_AXI_DC_RRESP;
  wire processor_M_AXI_DC_RVALID;
  wire [31:0]processor_M_AXI_DC_WDATA;
  wire processor_M_AXI_DC_WLAST;
  wire processor_M_AXI_DC_WREADY;
  wire [3:0]processor_M_AXI_DC_WSTRB;
  wire processor_M_AXI_DC_WVALID;
  wire [31:0]processor_M_AXI_IC_ARADDR;
  wire [1:0]processor_M_AXI_IC_ARBURST;
  wire [3:0]processor_M_AXI_IC_ARCACHE;
  wire [7:0]processor_M_AXI_IC_ARLEN;
  wire processor_M_AXI_IC_ARLOCK;
  wire [2:0]processor_M_AXI_IC_ARPROT;
  wire [3:0]processor_M_AXI_IC_ARQOS;
  wire processor_M_AXI_IC_ARREADY;
  wire [2:0]processor_M_AXI_IC_ARSIZE;
  wire processor_M_AXI_IC_ARVALID;
  wire [31:0]processor_M_AXI_IC_RDATA;
  wire processor_M_AXI_IC_RLAST;
  wire processor_M_AXI_IC_RREADY;
  wire [1:0]processor_M_AXI_IC_RRESP;
  wire processor_M_AXI_IC_RVALID;
  wire reset_1;
  wire rst_clk_wiz_1_100M_peripheral_aresetn;
  wire rst_clk_wiz_1_200M_peripheral_aresetn;
  wire [0:0]rst_mig_200M_peripheral_aresetn;
  wire sys_clk_i_1;
  wire [31:0]v_frmbuf_rd_0_m_axi_mm_video_ARADDR;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_ARBURST;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_ARCACHE;
  wire [7:0]v_frmbuf_rd_0_m_axi_mm_video_ARLEN;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_ARLOCK;
  wire [2:0]v_frmbuf_rd_0_m_axi_mm_video_ARPROT;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_ARQOS;
  wire v_frmbuf_rd_0_m_axi_mm_video_ARREADY;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_ARREGION;
  wire [2:0]v_frmbuf_rd_0_m_axi_mm_video_ARSIZE;
  wire v_frmbuf_rd_0_m_axi_mm_video_ARVALID;
  wire [31:0]v_frmbuf_rd_0_m_axi_mm_video_AWADDR;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_AWBURST;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_AWCACHE;
  wire [7:0]v_frmbuf_rd_0_m_axi_mm_video_AWLEN;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_AWLOCK;
  wire [2:0]v_frmbuf_rd_0_m_axi_mm_video_AWPROT;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_AWQOS;
  wire v_frmbuf_rd_0_m_axi_mm_video_AWREADY;
  wire [3:0]v_frmbuf_rd_0_m_axi_mm_video_AWREGION;
  wire [2:0]v_frmbuf_rd_0_m_axi_mm_video_AWSIZE;
  wire v_frmbuf_rd_0_m_axi_mm_video_AWVALID;
  wire v_frmbuf_rd_0_m_axi_mm_video_BREADY;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_BRESP;
  wire v_frmbuf_rd_0_m_axi_mm_video_BVALID;
  wire [63:0]v_frmbuf_rd_0_m_axi_mm_video_RDATA;
  wire v_frmbuf_rd_0_m_axi_mm_video_RLAST;
  wire v_frmbuf_rd_0_m_axi_mm_video_RREADY;
  wire [1:0]v_frmbuf_rd_0_m_axi_mm_video_RRESP;
  wire v_frmbuf_rd_0_m_axi_mm_video_RVALID;
  wire [63:0]v_frmbuf_rd_0_m_axi_mm_video_WDATA;
  wire v_frmbuf_rd_0_m_axi_mm_video_WLAST;
  wire v_frmbuf_rd_0_m_axi_mm_video_WREADY;
  wire [7:0]v_frmbuf_rd_0_m_axi_mm_video_WSTRB;
  wire v_frmbuf_rd_0_m_axi_mm_video_WVALID;

  assign M00_ACLK = mig_ui_clk;
  assign S00_AXI_arready = processor_M_AXI_DC_ARREADY;
  assign S00_AXI_awready = processor_M_AXI_DC_AWREADY;
  assign S00_AXI_bresp[1:0] = processor_M_AXI_DC_BRESP;
  assign S00_AXI_bvalid = processor_M_AXI_DC_BVALID;
  assign S00_AXI_rdata[31:0] = processor_M_AXI_DC_RDATA;
  assign S00_AXI_rlast = processor_M_AXI_DC_RLAST;
  assign S00_AXI_rresp[1:0] = processor_M_AXI_DC_RRESP;
  assign S00_AXI_rvalid = processor_M_AXI_DC_RVALID;
  assign S00_AXI_wready = processor_M_AXI_DC_WREADY;
  assign S01_AXI_arready = processor_M_AXI_IC_ARREADY;
  assign S01_AXI_rdata[31:0] = processor_M_AXI_IC_RDATA;
  assign S01_AXI_rlast = processor_M_AXI_IC_RLAST;
  assign S01_AXI_rresp[1:0] = processor_M_AXI_IC_RRESP;
  assign S01_AXI_rvalid = processor_M_AXI_IC_RVALID;
  assign S02_AXI_arready = v_frmbuf_rd_0_m_axi_mm_video_ARREADY;
  assign S02_AXI_awready = v_frmbuf_rd_0_m_axi_mm_video_AWREADY;
  assign S02_AXI_bresp[1:0] = v_frmbuf_rd_0_m_axi_mm_video_BRESP;
  assign S02_AXI_bvalid = v_frmbuf_rd_0_m_axi_mm_video_BVALID;
  assign S02_AXI_rdata[63:0] = v_frmbuf_rd_0_m_axi_mm_video_RDATA;
  assign S02_AXI_rlast = v_frmbuf_rd_0_m_axi_mm_video_RLAST;
  assign S02_AXI_rresp[1:0] = v_frmbuf_rd_0_m_axi_mm_video_RRESP;
  assign S02_AXI_rvalid = v_frmbuf_rd_0_m_axi_mm_video_RVALID;
  assign S02_AXI_wready = v_frmbuf_rd_0_m_axi_mm_video_WREADY;
  assign clk_ref_i_1 = clk_ref_i;
  assign clk_wiz_1_clk_out3 = S02_ACLK;
  assign ddr3_sdram_addr[13:0] = mig_DDR3_ADDR;
  assign ddr3_sdram_ba[2:0] = mig_DDR3_BA;
  assign ddr3_sdram_cas_n = mig_DDR3_CAS_N;
  assign ddr3_sdram_ck_n[0] = mig_DDR3_CK_N;
  assign ddr3_sdram_ck_p[0] = mig_DDR3_CK_P;
  assign ddr3_sdram_cke[0] = mig_DDR3_CKE;
  assign ddr3_sdram_cs_n[0] = mig_DDR3_CS_N;
  assign ddr3_sdram_dm[1:0] = mig_DDR3_DM;
  assign ddr3_sdram_odt[0] = mig_DDR3_ODT;
  assign ddr3_sdram_ras_n = mig_DDR3_RAS_N;
  assign ddr3_sdram_reset_n = mig_DDR3_RESET_N;
  assign ddr3_sdram_we_n = mig_DDR3_WE_N;
  assign processor_Clk = S01_ACLK;
  assign processor_M_AXI_DC_ARADDR = S00_AXI_araddr[31:0];
  assign processor_M_AXI_DC_ARBURST = S00_AXI_arburst[1:0];
  assign processor_M_AXI_DC_ARCACHE = S00_AXI_arcache[3:0];
  assign processor_M_AXI_DC_ARLEN = S00_AXI_arlen[7:0];
  assign processor_M_AXI_DC_ARLOCK = S00_AXI_arlock;
  assign processor_M_AXI_DC_ARPROT = S00_AXI_arprot[2:0];
  assign processor_M_AXI_DC_ARQOS = S00_AXI_arqos[3:0];
  assign processor_M_AXI_DC_ARSIZE = S00_AXI_arsize[2:0];
  assign processor_M_AXI_DC_ARVALID = S00_AXI_arvalid;
  assign processor_M_AXI_DC_AWADDR = S00_AXI_awaddr[31:0];
  assign processor_M_AXI_DC_AWBURST = S00_AXI_awburst[1:0];
  assign processor_M_AXI_DC_AWCACHE = S00_AXI_awcache[3:0];
  assign processor_M_AXI_DC_AWLEN = S00_AXI_awlen[7:0];
  assign processor_M_AXI_DC_AWLOCK = S00_AXI_awlock;
  assign processor_M_AXI_DC_AWPROT = S00_AXI_awprot[2:0];
  assign processor_M_AXI_DC_AWQOS = S00_AXI_awqos[3:0];
  assign processor_M_AXI_DC_AWSIZE = S00_AXI_awsize[2:0];
  assign processor_M_AXI_DC_AWVALID = S00_AXI_awvalid;
  assign processor_M_AXI_DC_BREADY = S00_AXI_bready;
  assign processor_M_AXI_DC_RREADY = S00_AXI_rready;
  assign processor_M_AXI_DC_WDATA = S00_AXI_wdata[31:0];
  assign processor_M_AXI_DC_WLAST = S00_AXI_wlast;
  assign processor_M_AXI_DC_WSTRB = S00_AXI_wstrb[3:0];
  assign processor_M_AXI_DC_WVALID = S00_AXI_wvalid;
  assign processor_M_AXI_IC_ARADDR = S01_AXI_araddr[31:0];
  assign processor_M_AXI_IC_ARBURST = S01_AXI_arburst[1:0];
  assign processor_M_AXI_IC_ARCACHE = S01_AXI_arcache[3:0];
  assign processor_M_AXI_IC_ARLEN = S01_AXI_arlen[7:0];
  assign processor_M_AXI_IC_ARLOCK = S01_AXI_arlock;
  assign processor_M_AXI_IC_ARPROT = S01_AXI_arprot[2:0];
  assign processor_M_AXI_IC_ARQOS = S01_AXI_arqos[3:0];
  assign processor_M_AXI_IC_ARSIZE = S01_AXI_arsize[2:0];
  assign processor_M_AXI_IC_ARVALID = S01_AXI_arvalid;
  assign processor_M_AXI_IC_RREADY = S01_AXI_rready;
  assign reset_1 = reset;
  assign rst_clk_wiz_1_100M_peripheral_aresetn = S01_ARESETN;
  assign rst_clk_wiz_1_200M_peripheral_aresetn = S02_ARESETN;
  assign sys_clk_i_1 = sys_clk_i;
  assign v_frmbuf_rd_0_m_axi_mm_video_ARADDR = S02_AXI_araddr[31:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_ARBURST = S02_AXI_arburst[1:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_ARCACHE = S02_AXI_arcache[3:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_ARLEN = S02_AXI_arlen[7:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_ARLOCK = S02_AXI_arlock[1:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_ARPROT = S02_AXI_arprot[2:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_ARQOS = S02_AXI_arqos[3:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_ARREGION = S02_AXI_arregion[3:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_ARSIZE = S02_AXI_arsize[2:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_ARVALID = S02_AXI_arvalid;
  assign v_frmbuf_rd_0_m_axi_mm_video_AWADDR = S02_AXI_awaddr[31:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_AWBURST = S02_AXI_awburst[1:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_AWCACHE = S02_AXI_awcache[3:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_AWLEN = S02_AXI_awlen[7:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_AWLOCK = S02_AXI_awlock[1:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_AWPROT = S02_AXI_awprot[2:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_AWQOS = S02_AXI_awqos[3:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_AWREGION = S02_AXI_awregion[3:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_AWSIZE = S02_AXI_awsize[2:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_AWVALID = S02_AXI_awvalid;
  assign v_frmbuf_rd_0_m_axi_mm_video_BREADY = S02_AXI_bready;
  assign v_frmbuf_rd_0_m_axi_mm_video_RREADY = S02_AXI_rready;
  assign v_frmbuf_rd_0_m_axi_mm_video_WDATA = S02_AXI_wdata[63:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_WLAST = S02_AXI_wlast;
  assign v_frmbuf_rd_0_m_axi_mm_video_WSTRB = S02_AXI_wstrb[7:0];
  assign v_frmbuf_rd_0_m_axi_mm_video_WVALID = S02_AXI_wvalid;
  ex_synth_axi_mem_intercon_0 axi_mem_intercon
       (.ACLK(mig_ui_clk),
        .ARESETN(rst_mig_200M_peripheral_aresetn),
        .M00_ACLK(mig_ui_clk),
        .M00_ARESETN(rst_mig_200M_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_intercon_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_mem_intercon_M00_AXI_ARID),
        .M00_AXI_arlen(axi_mem_intercon_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_intercon_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_intercon_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mem_intercon_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mem_intercon_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_mem_intercon_M00_AXI_AWID),
        .M00_AXI_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_mem_intercon_M00_AXI_BID),
        .M00_AXI_bready(axi_mem_intercon_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_M00_AXI_RDATA),
        .M00_AXI_rid(axi_mem_intercon_M00_AXI_RID),
        .M00_AXI_rlast(axi_mem_intercon_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_intercon_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .S00_ACLK(processor_Clk),
        .S00_ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .S00_AXI_araddr(processor_M_AXI_DC_ARADDR),
        .S00_AXI_arburst(processor_M_AXI_DC_ARBURST),
        .S00_AXI_arcache(processor_M_AXI_DC_ARCACHE),
        .S00_AXI_arlen(processor_M_AXI_DC_ARLEN),
        .S00_AXI_arlock(processor_M_AXI_DC_ARLOCK),
        .S00_AXI_arprot(processor_M_AXI_DC_ARPROT),
        .S00_AXI_arqos(processor_M_AXI_DC_ARQOS),
        .S00_AXI_arready(processor_M_AXI_DC_ARREADY),
        .S00_AXI_arsize(processor_M_AXI_DC_ARSIZE),
        .S00_AXI_arvalid(processor_M_AXI_DC_ARVALID),
        .S00_AXI_awaddr(processor_M_AXI_DC_AWADDR),
        .S00_AXI_awburst(processor_M_AXI_DC_AWBURST),
        .S00_AXI_awcache(processor_M_AXI_DC_AWCACHE),
        .S00_AXI_awlen(processor_M_AXI_DC_AWLEN),
        .S00_AXI_awlock(processor_M_AXI_DC_AWLOCK),
        .S00_AXI_awprot(processor_M_AXI_DC_AWPROT),
        .S00_AXI_awqos(processor_M_AXI_DC_AWQOS),
        .S00_AXI_awready(processor_M_AXI_DC_AWREADY),
        .S00_AXI_awsize(processor_M_AXI_DC_AWSIZE),
        .S00_AXI_awvalid(processor_M_AXI_DC_AWVALID),
        .S00_AXI_bready(processor_M_AXI_DC_BREADY),
        .S00_AXI_bresp(processor_M_AXI_DC_BRESP),
        .S00_AXI_bvalid(processor_M_AXI_DC_BVALID),
        .S00_AXI_rdata(processor_M_AXI_DC_RDATA),
        .S00_AXI_rlast(processor_M_AXI_DC_RLAST),
        .S00_AXI_rready(processor_M_AXI_DC_RREADY),
        .S00_AXI_rresp(processor_M_AXI_DC_RRESP),
        .S00_AXI_rvalid(processor_M_AXI_DC_RVALID),
        .S00_AXI_wdata(processor_M_AXI_DC_WDATA),
        .S00_AXI_wlast(processor_M_AXI_DC_WLAST),
        .S00_AXI_wready(processor_M_AXI_DC_WREADY),
        .S00_AXI_wstrb(processor_M_AXI_DC_WSTRB),
        .S00_AXI_wvalid(processor_M_AXI_DC_WVALID),
        .S01_ACLK(processor_Clk),
        .S01_ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .S01_AXI_araddr(processor_M_AXI_IC_ARADDR),
        .S01_AXI_arburst(processor_M_AXI_IC_ARBURST),
        .S01_AXI_arcache(processor_M_AXI_IC_ARCACHE),
        .S01_AXI_arlen(processor_M_AXI_IC_ARLEN),
        .S01_AXI_arlock(processor_M_AXI_IC_ARLOCK),
        .S01_AXI_arprot(processor_M_AXI_IC_ARPROT),
        .S01_AXI_arqos(processor_M_AXI_IC_ARQOS),
        .S01_AXI_arready(processor_M_AXI_IC_ARREADY),
        .S01_AXI_arsize(processor_M_AXI_IC_ARSIZE),
        .S01_AXI_arvalid(processor_M_AXI_IC_ARVALID),
        .S01_AXI_rdata(processor_M_AXI_IC_RDATA),
        .S01_AXI_rlast(processor_M_AXI_IC_RLAST),
        .S01_AXI_rready(processor_M_AXI_IC_RREADY),
        .S01_AXI_rresp(processor_M_AXI_IC_RRESP),
        .S01_AXI_rvalid(processor_M_AXI_IC_RVALID),
        .S02_ACLK(clk_wiz_1_clk_out3),
        .S02_ARESETN(rst_clk_wiz_1_200M_peripheral_aresetn),
        .S02_AXI_araddr(v_frmbuf_rd_0_m_axi_mm_video_ARADDR),
        .S02_AXI_arburst(v_frmbuf_rd_0_m_axi_mm_video_ARBURST),
        .S02_AXI_arcache(v_frmbuf_rd_0_m_axi_mm_video_ARCACHE),
        .S02_AXI_arlen(v_frmbuf_rd_0_m_axi_mm_video_ARLEN),
        .S02_AXI_arlock(v_frmbuf_rd_0_m_axi_mm_video_ARLOCK),
        .S02_AXI_arprot(v_frmbuf_rd_0_m_axi_mm_video_ARPROT),
        .S02_AXI_arqos(v_frmbuf_rd_0_m_axi_mm_video_ARQOS),
        .S02_AXI_arready(v_frmbuf_rd_0_m_axi_mm_video_ARREADY),
        .S02_AXI_arregion(v_frmbuf_rd_0_m_axi_mm_video_ARREGION),
        .S02_AXI_arsize(v_frmbuf_rd_0_m_axi_mm_video_ARSIZE),
        .S02_AXI_arvalid(v_frmbuf_rd_0_m_axi_mm_video_ARVALID),
        .S02_AXI_awaddr(v_frmbuf_rd_0_m_axi_mm_video_AWADDR),
        .S02_AXI_awburst(v_frmbuf_rd_0_m_axi_mm_video_AWBURST),
        .S02_AXI_awcache(v_frmbuf_rd_0_m_axi_mm_video_AWCACHE),
        .S02_AXI_awlen(v_frmbuf_rd_0_m_axi_mm_video_AWLEN),
        .S02_AXI_awlock(v_frmbuf_rd_0_m_axi_mm_video_AWLOCK),
        .S02_AXI_awprot(v_frmbuf_rd_0_m_axi_mm_video_AWPROT),
        .S02_AXI_awqos(v_frmbuf_rd_0_m_axi_mm_video_AWQOS),
        .S02_AXI_awready(v_frmbuf_rd_0_m_axi_mm_video_AWREADY),
        .S02_AXI_awregion(v_frmbuf_rd_0_m_axi_mm_video_AWREGION),
        .S02_AXI_awsize(v_frmbuf_rd_0_m_axi_mm_video_AWSIZE),
        .S02_AXI_awvalid(v_frmbuf_rd_0_m_axi_mm_video_AWVALID),
        .S02_AXI_bready(v_frmbuf_rd_0_m_axi_mm_video_BREADY),
        .S02_AXI_bresp(v_frmbuf_rd_0_m_axi_mm_video_BRESP),
        .S02_AXI_bvalid(v_frmbuf_rd_0_m_axi_mm_video_BVALID),
        .S02_AXI_rdata(v_frmbuf_rd_0_m_axi_mm_video_RDATA),
        .S02_AXI_rlast(v_frmbuf_rd_0_m_axi_mm_video_RLAST),
        .S02_AXI_rready(v_frmbuf_rd_0_m_axi_mm_video_RREADY),
        .S02_AXI_rresp(v_frmbuf_rd_0_m_axi_mm_video_RRESP),
        .S02_AXI_rvalid(v_frmbuf_rd_0_m_axi_mm_video_RVALID),
        .S02_AXI_wdata(v_frmbuf_rd_0_m_axi_mm_video_WDATA),
        .S02_AXI_wlast(v_frmbuf_rd_0_m_axi_mm_video_WLAST),
        .S02_AXI_wready(v_frmbuf_rd_0_m_axi_mm_video_WREADY),
        .S02_AXI_wstrb(v_frmbuf_rd_0_m_axi_mm_video_WSTRB),
        .S02_AXI_wvalid(v_frmbuf_rd_0_m_axi_mm_video_WVALID));
  ex_synth_mig_0 mig
       (.aresetn(rst_mig_200M_peripheral_aresetn),
        .clk_ref_i(clk_ref_i_1),
        .ddr3_addr(mig_DDR3_ADDR),
        .ddr3_ba(mig_DDR3_BA),
        .ddr3_cas_n(mig_DDR3_CAS_N),
        .ddr3_ck_n(mig_DDR3_CK_N),
        .ddr3_ck_p(mig_DDR3_CK_P),
        .ddr3_cke(mig_DDR3_CKE),
        .ddr3_cs_n(mig_DDR3_CS_N),
        .ddr3_dm(mig_DDR3_DM),
        .ddr3_dq(ddr3_sdram_dq[15:0]),
        .ddr3_dqs_n(ddr3_sdram_dqs_n[1:0]),
        .ddr3_dqs_p(ddr3_sdram_dqs_p[1:0]),
        .ddr3_odt(mig_DDR3_ODT),
        .ddr3_ras_n(mig_DDR3_RAS_N),
        .ddr3_reset_n(mig_DDR3_RESET_N),
        .ddr3_we_n(mig_DDR3_WE_N),
        .mmcm_locked(mig_mmcm_locked),
        .s_axi_araddr(axi_mem_intercon_M00_AXI_ARADDR[27:0]),
        .s_axi_arburst(axi_mem_intercon_M00_AXI_ARBURST),
        .s_axi_arcache(axi_mem_intercon_M00_AXI_ARCACHE),
        .s_axi_arid(axi_mem_intercon_M00_AXI_ARID),
        .s_axi_arlen(axi_mem_intercon_M00_AXI_ARLEN),
        .s_axi_arlock(axi_mem_intercon_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_mem_intercon_M00_AXI_ARPROT),
        .s_axi_arqos(axi_mem_intercon_M00_AXI_ARQOS),
        .s_axi_arready(axi_mem_intercon_M00_AXI_ARREADY),
        .s_axi_arsize(axi_mem_intercon_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_mem_intercon_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_mem_intercon_M00_AXI_AWADDR[27:0]),
        .s_axi_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .s_axi_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .s_axi_awid(axi_mem_intercon_M00_AXI_AWID),
        .s_axi_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .s_axi_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .s_axi_awqos(axi_mem_intercon_M00_AXI_AWQOS),
        .s_axi_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .s_axi_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .s_axi_bid(axi_mem_intercon_M00_AXI_BID),
        .s_axi_bready(axi_mem_intercon_M00_AXI_BREADY),
        .s_axi_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .s_axi_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .s_axi_rdata(axi_mem_intercon_M00_AXI_RDATA),
        .s_axi_rid(axi_mem_intercon_M00_AXI_RID),
        .s_axi_rlast(axi_mem_intercon_M00_AXI_RLAST),
        .s_axi_rready(axi_mem_intercon_M00_AXI_RREADY),
        .s_axi_rresp(axi_mem_intercon_M00_AXI_RRESP),
        .s_axi_rvalid(axi_mem_intercon_M00_AXI_RVALID),
        .s_axi_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .s_axi_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .s_axi_wready(axi_mem_intercon_M00_AXI_WREADY),
        .s_axi_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .sys_clk_i(sys_clk_i_1),
        .sys_rst(reset_1),
        .ui_clk(mig_ui_clk),
        .ui_clk_sync_rst(mig_ui_clk_sync_rst));
  ex_synth_rst_mig_200M_0 rst_mig_200M
       (.aux_reset_in(1'b1),
        .dcm_locked(mig_mmcm_locked),
        .ext_reset_in(mig_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_mig_200M_peripheral_aresetn),
        .slowest_sync_clk(mig_ui_clk));
endmodule

module processor_local_memory_imp_MOWWKL
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input SYS_Rst;

  wire SYS_Rst_1;
  wire processor_Clk;
  wire [0:31]processor_dlmb_ABUS;
  wire processor_dlmb_ADDRSTROBE;
  wire [0:3]processor_dlmb_BE;
  wire processor_dlmb_CE;
  wire [0:31]processor_dlmb_READDBUS;
  wire processor_dlmb_READSTROBE;
  wire processor_dlmb_READY;
  wire processor_dlmb_UE;
  wire processor_dlmb_WAIT;
  wire [0:31]processor_dlmb_WRITEDBUS;
  wire processor_dlmb_WRITESTROBE;
  wire [0:31]processor_dlmb_bus_ABUS;
  wire processor_dlmb_bus_ADDRSTROBE;
  wire [0:3]processor_dlmb_bus_BE;
  wire processor_dlmb_bus_CE;
  wire [0:31]processor_dlmb_bus_READDBUS;
  wire processor_dlmb_bus_READSTROBE;
  wire processor_dlmb_bus_READY;
  wire processor_dlmb_bus_UE;
  wire processor_dlmb_bus_WAIT;
  wire [0:31]processor_dlmb_bus_WRITEDBUS;
  wire processor_dlmb_bus_WRITESTROBE;
  wire [0:31]processor_dlmb_cntlr_ADDR;
  wire processor_dlmb_cntlr_CLK;
  wire [0:31]processor_dlmb_cntlr_DIN;
  wire [31:0]processor_dlmb_cntlr_DOUT;
  wire processor_dlmb_cntlr_EN;
  wire processor_dlmb_cntlr_RST;
  wire [0:3]processor_dlmb_cntlr_WE;
  wire [0:31]processor_ilmb_ABUS;
  wire processor_ilmb_ADDRSTROBE;
  wire processor_ilmb_CE;
  wire [0:31]processor_ilmb_READDBUS;
  wire processor_ilmb_READSTROBE;
  wire processor_ilmb_READY;
  wire processor_ilmb_UE;
  wire processor_ilmb_WAIT;
  wire [0:31]processor_ilmb_bus_ABUS;
  wire processor_ilmb_bus_ADDRSTROBE;
  wire [0:3]processor_ilmb_bus_BE;
  wire processor_ilmb_bus_CE;
  wire [0:31]processor_ilmb_bus_READDBUS;
  wire processor_ilmb_bus_READSTROBE;
  wire processor_ilmb_bus_READY;
  wire processor_ilmb_bus_UE;
  wire processor_ilmb_bus_WAIT;
  wire [0:31]processor_ilmb_bus_WRITEDBUS;
  wire processor_ilmb_bus_WRITESTROBE;
  wire [0:31]processor_ilmb_cntlr_ADDR;
  wire processor_ilmb_cntlr_CLK;
  wire [0:31]processor_ilmb_cntlr_DIN;
  wire [31:0]processor_ilmb_cntlr_DOUT;
  wire processor_ilmb_cntlr_EN;
  wire processor_ilmb_cntlr_RST;
  wire [0:3]processor_ilmb_cntlr_WE;

  assign DLMB_ce = processor_dlmb_CE;
  assign DLMB_readdbus[0:31] = processor_dlmb_READDBUS;
  assign DLMB_ready = processor_dlmb_READY;
  assign DLMB_ue = processor_dlmb_UE;
  assign DLMB_wait = processor_dlmb_WAIT;
  assign ILMB_ce = processor_ilmb_CE;
  assign ILMB_readdbus[0:31] = processor_ilmb_READDBUS;
  assign ILMB_ready = processor_ilmb_READY;
  assign ILMB_ue = processor_ilmb_UE;
  assign ILMB_wait = processor_ilmb_WAIT;
  assign SYS_Rst_1 = SYS_Rst;
  assign processor_Clk = LMB_Clk;
  assign processor_dlmb_ABUS = DLMB_abus[0:31];
  assign processor_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign processor_dlmb_BE = DLMB_be[0:3];
  assign processor_dlmb_READSTROBE = DLMB_readstrobe;
  assign processor_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign processor_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign processor_ilmb_ABUS = ILMB_abus[0:31];
  assign processor_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign processor_ilmb_READSTROBE = ILMB_readstrobe;
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > ex_synth processor_ss/processor_local_memory/lmb_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  ex_synth_dlmb_bram_if_cntlr_0 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(processor_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(processor_dlmb_cntlr_CLK),
        .BRAM_Din_A({processor_dlmb_cntlr_DOUT[31],processor_dlmb_cntlr_DOUT[30],processor_dlmb_cntlr_DOUT[29],processor_dlmb_cntlr_DOUT[28],processor_dlmb_cntlr_DOUT[27],processor_dlmb_cntlr_DOUT[26],processor_dlmb_cntlr_DOUT[25],processor_dlmb_cntlr_DOUT[24],processor_dlmb_cntlr_DOUT[23],processor_dlmb_cntlr_DOUT[22],processor_dlmb_cntlr_DOUT[21],processor_dlmb_cntlr_DOUT[20],processor_dlmb_cntlr_DOUT[19],processor_dlmb_cntlr_DOUT[18],processor_dlmb_cntlr_DOUT[17],processor_dlmb_cntlr_DOUT[16],processor_dlmb_cntlr_DOUT[15],processor_dlmb_cntlr_DOUT[14],processor_dlmb_cntlr_DOUT[13],processor_dlmb_cntlr_DOUT[12],processor_dlmb_cntlr_DOUT[11],processor_dlmb_cntlr_DOUT[10],processor_dlmb_cntlr_DOUT[9],processor_dlmb_cntlr_DOUT[8],processor_dlmb_cntlr_DOUT[7],processor_dlmb_cntlr_DOUT[6],processor_dlmb_cntlr_DOUT[5],processor_dlmb_cntlr_DOUT[4],processor_dlmb_cntlr_DOUT[3],processor_dlmb_cntlr_DOUT[2],processor_dlmb_cntlr_DOUT[1],processor_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(processor_dlmb_cntlr_DIN),
        .BRAM_EN_A(processor_dlmb_cntlr_EN),
        .BRAM_Rst_A(processor_dlmb_cntlr_RST),
        .BRAM_WEN_A(processor_dlmb_cntlr_WE),
        .LMB_ABus(processor_dlmb_bus_ABUS),
        .LMB_AddrStrobe(processor_dlmb_bus_ADDRSTROBE),
        .LMB_BE(processor_dlmb_bus_BE),
        .LMB_Clk(processor_Clk),
        .LMB_ReadStrobe(processor_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(processor_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(processor_dlmb_bus_WRITESTROBE),
        .Sl_CE(processor_dlmb_bus_CE),
        .Sl_DBus(processor_dlmb_bus_READDBUS),
        .Sl_Ready(processor_dlmb_bus_READY),
        .Sl_UE(processor_dlmb_bus_UE),
        .Sl_Wait(processor_dlmb_bus_WAIT));
  ex_synth_dlmb_v10_0 dlmb_v10
       (.LMB_ABus(processor_dlmb_bus_ABUS),
        .LMB_AddrStrobe(processor_dlmb_bus_ADDRSTROBE),
        .LMB_BE(processor_dlmb_bus_BE),
        .LMB_CE(processor_dlmb_CE),
        .LMB_Clk(processor_Clk),
        .LMB_ReadDBus(processor_dlmb_READDBUS),
        .LMB_ReadStrobe(processor_dlmb_bus_READSTROBE),
        .LMB_Ready(processor_dlmb_READY),
        .LMB_UE(processor_dlmb_UE),
        .LMB_Wait(processor_dlmb_WAIT),
        .LMB_WriteDBus(processor_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(processor_dlmb_bus_WRITESTROBE),
        .M_ABus(processor_dlmb_ABUS),
        .M_AddrStrobe(processor_dlmb_ADDRSTROBE),
        .M_BE(processor_dlmb_BE),
        .M_DBus(processor_dlmb_WRITEDBUS),
        .M_ReadStrobe(processor_dlmb_READSTROBE),
        .M_WriteStrobe(processor_dlmb_WRITESTROBE),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(processor_dlmb_bus_CE),
        .Sl_DBus(processor_dlmb_bus_READDBUS),
        .Sl_Ready(processor_dlmb_bus_READY),
        .Sl_UE(processor_dlmb_bus_UE),
        .Sl_Wait(processor_dlmb_bus_WAIT));
  ex_synth_ilmb_bram_if_cntlr_0 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(processor_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(processor_ilmb_cntlr_CLK),
        .BRAM_Din_A({processor_ilmb_cntlr_DOUT[31],processor_ilmb_cntlr_DOUT[30],processor_ilmb_cntlr_DOUT[29],processor_ilmb_cntlr_DOUT[28],processor_ilmb_cntlr_DOUT[27],processor_ilmb_cntlr_DOUT[26],processor_ilmb_cntlr_DOUT[25],processor_ilmb_cntlr_DOUT[24],processor_ilmb_cntlr_DOUT[23],processor_ilmb_cntlr_DOUT[22],processor_ilmb_cntlr_DOUT[21],processor_ilmb_cntlr_DOUT[20],processor_ilmb_cntlr_DOUT[19],processor_ilmb_cntlr_DOUT[18],processor_ilmb_cntlr_DOUT[17],processor_ilmb_cntlr_DOUT[16],processor_ilmb_cntlr_DOUT[15],processor_ilmb_cntlr_DOUT[14],processor_ilmb_cntlr_DOUT[13],processor_ilmb_cntlr_DOUT[12],processor_ilmb_cntlr_DOUT[11],processor_ilmb_cntlr_DOUT[10],processor_ilmb_cntlr_DOUT[9],processor_ilmb_cntlr_DOUT[8],processor_ilmb_cntlr_DOUT[7],processor_ilmb_cntlr_DOUT[6],processor_ilmb_cntlr_DOUT[5],processor_ilmb_cntlr_DOUT[4],processor_ilmb_cntlr_DOUT[3],processor_ilmb_cntlr_DOUT[2],processor_ilmb_cntlr_DOUT[1],processor_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(processor_ilmb_cntlr_DIN),
        .BRAM_EN_A(processor_ilmb_cntlr_EN),
        .BRAM_Rst_A(processor_ilmb_cntlr_RST),
        .BRAM_WEN_A(processor_ilmb_cntlr_WE),
        .LMB_ABus(processor_ilmb_bus_ABUS),
        .LMB_AddrStrobe(processor_ilmb_bus_ADDRSTROBE),
        .LMB_BE(processor_ilmb_bus_BE),
        .LMB_Clk(processor_Clk),
        .LMB_ReadStrobe(processor_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(processor_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(processor_ilmb_bus_WRITESTROBE),
        .Sl_CE(processor_ilmb_bus_CE),
        .Sl_DBus(processor_ilmb_bus_READDBUS),
        .Sl_Ready(processor_ilmb_bus_READY),
        .Sl_UE(processor_ilmb_bus_UE),
        .Sl_Wait(processor_ilmb_bus_WAIT));
  ex_synth_ilmb_v10_0 ilmb_v10
       (.LMB_ABus(processor_ilmb_bus_ABUS),
        .LMB_AddrStrobe(processor_ilmb_bus_ADDRSTROBE),
        .LMB_BE(processor_ilmb_bus_BE),
        .LMB_CE(processor_ilmb_CE),
        .LMB_Clk(processor_Clk),
        .LMB_ReadDBus(processor_ilmb_READDBUS),
        .LMB_ReadStrobe(processor_ilmb_bus_READSTROBE),
        .LMB_Ready(processor_ilmb_READY),
        .LMB_UE(processor_ilmb_UE),
        .LMB_Wait(processor_ilmb_WAIT),
        .LMB_WriteDBus(processor_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(processor_ilmb_bus_WRITESTROBE),
        .M_ABus(processor_ilmb_ABUS),
        .M_AddrStrobe(processor_ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(processor_ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(processor_ilmb_bus_CE),
        .Sl_DBus(processor_ilmb_bus_READDBUS),
        .Sl_Ready(processor_ilmb_bus_READY),
        .Sl_UE(processor_ilmb_bus_UE),
        .Sl_Wait(processor_ilmb_bus_WAIT));
  ex_synth_lmb_bram_0 lmb_bram
       (.addra({processor_dlmb_cntlr_ADDR[0],processor_dlmb_cntlr_ADDR[1],processor_dlmb_cntlr_ADDR[2],processor_dlmb_cntlr_ADDR[3],processor_dlmb_cntlr_ADDR[4],processor_dlmb_cntlr_ADDR[5],processor_dlmb_cntlr_ADDR[6],processor_dlmb_cntlr_ADDR[7],processor_dlmb_cntlr_ADDR[8],processor_dlmb_cntlr_ADDR[9],processor_dlmb_cntlr_ADDR[10],processor_dlmb_cntlr_ADDR[11],processor_dlmb_cntlr_ADDR[12],processor_dlmb_cntlr_ADDR[13],processor_dlmb_cntlr_ADDR[14],processor_dlmb_cntlr_ADDR[15],processor_dlmb_cntlr_ADDR[16],processor_dlmb_cntlr_ADDR[17],processor_dlmb_cntlr_ADDR[18],processor_dlmb_cntlr_ADDR[19],processor_dlmb_cntlr_ADDR[20],processor_dlmb_cntlr_ADDR[21],processor_dlmb_cntlr_ADDR[22],processor_dlmb_cntlr_ADDR[23],processor_dlmb_cntlr_ADDR[24],processor_dlmb_cntlr_ADDR[25],processor_dlmb_cntlr_ADDR[26],processor_dlmb_cntlr_ADDR[27],processor_dlmb_cntlr_ADDR[28],processor_dlmb_cntlr_ADDR[29],processor_dlmb_cntlr_ADDR[30],processor_dlmb_cntlr_ADDR[31]}),
        .addrb({processor_ilmb_cntlr_ADDR[0],processor_ilmb_cntlr_ADDR[1],processor_ilmb_cntlr_ADDR[2],processor_ilmb_cntlr_ADDR[3],processor_ilmb_cntlr_ADDR[4],processor_ilmb_cntlr_ADDR[5],processor_ilmb_cntlr_ADDR[6],processor_ilmb_cntlr_ADDR[7],processor_ilmb_cntlr_ADDR[8],processor_ilmb_cntlr_ADDR[9],processor_ilmb_cntlr_ADDR[10],processor_ilmb_cntlr_ADDR[11],processor_ilmb_cntlr_ADDR[12],processor_ilmb_cntlr_ADDR[13],processor_ilmb_cntlr_ADDR[14],processor_ilmb_cntlr_ADDR[15],processor_ilmb_cntlr_ADDR[16],processor_ilmb_cntlr_ADDR[17],processor_ilmb_cntlr_ADDR[18],processor_ilmb_cntlr_ADDR[19],processor_ilmb_cntlr_ADDR[20],processor_ilmb_cntlr_ADDR[21],processor_ilmb_cntlr_ADDR[22],processor_ilmb_cntlr_ADDR[23],processor_ilmb_cntlr_ADDR[24],processor_ilmb_cntlr_ADDR[25],processor_ilmb_cntlr_ADDR[26],processor_ilmb_cntlr_ADDR[27],processor_ilmb_cntlr_ADDR[28],processor_ilmb_cntlr_ADDR[29],processor_ilmb_cntlr_ADDR[30],processor_ilmb_cntlr_ADDR[31]}),
        .clka(processor_dlmb_cntlr_CLK),
        .clkb(processor_ilmb_cntlr_CLK),
        .dina({processor_dlmb_cntlr_DIN[0],processor_dlmb_cntlr_DIN[1],processor_dlmb_cntlr_DIN[2],processor_dlmb_cntlr_DIN[3],processor_dlmb_cntlr_DIN[4],processor_dlmb_cntlr_DIN[5],processor_dlmb_cntlr_DIN[6],processor_dlmb_cntlr_DIN[7],processor_dlmb_cntlr_DIN[8],processor_dlmb_cntlr_DIN[9],processor_dlmb_cntlr_DIN[10],processor_dlmb_cntlr_DIN[11],processor_dlmb_cntlr_DIN[12],processor_dlmb_cntlr_DIN[13],processor_dlmb_cntlr_DIN[14],processor_dlmb_cntlr_DIN[15],processor_dlmb_cntlr_DIN[16],processor_dlmb_cntlr_DIN[17],processor_dlmb_cntlr_DIN[18],processor_dlmb_cntlr_DIN[19],processor_dlmb_cntlr_DIN[20],processor_dlmb_cntlr_DIN[21],processor_dlmb_cntlr_DIN[22],processor_dlmb_cntlr_DIN[23],processor_dlmb_cntlr_DIN[24],processor_dlmb_cntlr_DIN[25],processor_dlmb_cntlr_DIN[26],processor_dlmb_cntlr_DIN[27],processor_dlmb_cntlr_DIN[28],processor_dlmb_cntlr_DIN[29],processor_dlmb_cntlr_DIN[30],processor_dlmb_cntlr_DIN[31]}),
        .dinb({processor_ilmb_cntlr_DIN[0],processor_ilmb_cntlr_DIN[1],processor_ilmb_cntlr_DIN[2],processor_ilmb_cntlr_DIN[3],processor_ilmb_cntlr_DIN[4],processor_ilmb_cntlr_DIN[5],processor_ilmb_cntlr_DIN[6],processor_ilmb_cntlr_DIN[7],processor_ilmb_cntlr_DIN[8],processor_ilmb_cntlr_DIN[9],processor_ilmb_cntlr_DIN[10],processor_ilmb_cntlr_DIN[11],processor_ilmb_cntlr_DIN[12],processor_ilmb_cntlr_DIN[13],processor_ilmb_cntlr_DIN[14],processor_ilmb_cntlr_DIN[15],processor_ilmb_cntlr_DIN[16],processor_ilmb_cntlr_DIN[17],processor_ilmb_cntlr_DIN[18],processor_ilmb_cntlr_DIN[19],processor_ilmb_cntlr_DIN[20],processor_ilmb_cntlr_DIN[21],processor_ilmb_cntlr_DIN[22],processor_ilmb_cntlr_DIN[23],processor_ilmb_cntlr_DIN[24],processor_ilmb_cntlr_DIN[25],processor_ilmb_cntlr_DIN[26],processor_ilmb_cntlr_DIN[27],processor_ilmb_cntlr_DIN[28],processor_ilmb_cntlr_DIN[29],processor_ilmb_cntlr_DIN[30],processor_ilmb_cntlr_DIN[31]}),
        .douta(processor_dlmb_cntlr_DOUT),
        .doutb(processor_ilmb_cntlr_DOUT),
        .ena(processor_dlmb_cntlr_EN),
        .enb(processor_ilmb_cntlr_EN),
        .rsta(processor_dlmb_cntlr_RST),
        .rstb(processor_ilmb_cntlr_RST),
        .wea({processor_dlmb_cntlr_WE[0],processor_dlmb_cntlr_WE[1],processor_dlmb_cntlr_WE[2],processor_dlmb_cntlr_WE[3]}),
        .web({processor_ilmb_cntlr_WE[0],processor_ilmb_cntlr_WE[1],processor_ilmb_cntlr_WE[2],processor_ilmb_cntlr_WE[3]}));
endmodule

module processor_ss_imp_C8KBYH
   (ACLK,
    ARESETN,
    Debug_SYS_Rst,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_AXI_araddr,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M_AXI_DC_araddr,
    M_AXI_DC_arburst,
    M_AXI_DC_arcache,
    M_AXI_DC_arlen,
    M_AXI_DC_arlock,
    M_AXI_DC_arprot,
    M_AXI_DC_arqos,
    M_AXI_DC_arready,
    M_AXI_DC_arsize,
    M_AXI_DC_arvalid,
    M_AXI_DC_awaddr,
    M_AXI_DC_awburst,
    M_AXI_DC_awcache,
    M_AXI_DC_awlen,
    M_AXI_DC_awlock,
    M_AXI_DC_awprot,
    M_AXI_DC_awqos,
    M_AXI_DC_awready,
    M_AXI_DC_awsize,
    M_AXI_DC_awvalid,
    M_AXI_DC_bready,
    M_AXI_DC_bresp,
    M_AXI_DC_bvalid,
    M_AXI_DC_rdata,
    M_AXI_DC_rlast,
    M_AXI_DC_rready,
    M_AXI_DC_rresp,
    M_AXI_DC_rvalid,
    M_AXI_DC_wdata,
    M_AXI_DC_wlast,
    M_AXI_DC_wready,
    M_AXI_DC_wstrb,
    M_AXI_DC_wvalid,
    M_AXI_IC_araddr,
    M_AXI_IC_arburst,
    M_AXI_IC_arcache,
    M_AXI_IC_arlen,
    M_AXI_IC_arlock,
    M_AXI_IC_arprot,
    M_AXI_IC_arqos,
    M_AXI_IC_arready,
    M_AXI_IC_arsize,
    M_AXI_IC_arvalid,
    M_AXI_IC_rdata,
    M_AXI_IC_rlast,
    M_AXI_IC_rready,
    M_AXI_IC_rresp,
    M_AXI_IC_rvalid,
    SYS_Rst,
    intr,
    processor_rst);
  input ACLK;
  input ARESETN;
  output Debug_SYS_Rst;
  output M01_AXI_araddr;
  output M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output M01_AXI_awaddr;
  output M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input M01_AXI_bresp;
  input M01_AXI_bvalid;
  input M01_AXI_rdata;
  output M01_AXI_rready;
  input M01_AXI_rresp;
  input M01_AXI_rvalid;
  output M01_AXI_wdata;
  input M01_AXI_wready;
  output M01_AXI_wstrb;
  output M01_AXI_wvalid;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [8:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [8:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  output [8:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [8:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [6:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [6:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  output [3:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [3:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  output [6:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [6:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  output [12:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [12:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  output [4:0]M09_AXI_araddr;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [4:0]M09_AXI_awaddr;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output M09_AXI_wvalid;
  output [31:0]M_AXI_DC_araddr;
  output [1:0]M_AXI_DC_arburst;
  output [3:0]M_AXI_DC_arcache;
  output [7:0]M_AXI_DC_arlen;
  output M_AXI_DC_arlock;
  output [2:0]M_AXI_DC_arprot;
  output [3:0]M_AXI_DC_arqos;
  input M_AXI_DC_arready;
  output [2:0]M_AXI_DC_arsize;
  output M_AXI_DC_arvalid;
  output [31:0]M_AXI_DC_awaddr;
  output [1:0]M_AXI_DC_awburst;
  output [3:0]M_AXI_DC_awcache;
  output [7:0]M_AXI_DC_awlen;
  output M_AXI_DC_awlock;
  output [2:0]M_AXI_DC_awprot;
  output [3:0]M_AXI_DC_awqos;
  input M_AXI_DC_awready;
  output [2:0]M_AXI_DC_awsize;
  output M_AXI_DC_awvalid;
  output M_AXI_DC_bready;
  input [1:0]M_AXI_DC_bresp;
  input M_AXI_DC_bvalid;
  input [31:0]M_AXI_DC_rdata;
  input M_AXI_DC_rlast;
  output M_AXI_DC_rready;
  input [1:0]M_AXI_DC_rresp;
  input M_AXI_DC_rvalid;
  output [31:0]M_AXI_DC_wdata;
  output M_AXI_DC_wlast;
  input M_AXI_DC_wready;
  output [3:0]M_AXI_DC_wstrb;
  output M_AXI_DC_wvalid;
  output [31:0]M_AXI_IC_araddr;
  output [1:0]M_AXI_IC_arburst;
  output [3:0]M_AXI_IC_arcache;
  output [7:0]M_AXI_IC_arlen;
  output M_AXI_IC_arlock;
  output [2:0]M_AXI_IC_arprot;
  output [3:0]M_AXI_IC_arqos;
  input M_AXI_IC_arready;
  output [2:0]M_AXI_IC_arsize;
  output M_AXI_IC_arvalid;
  input [31:0]M_AXI_IC_rdata;
  input M_AXI_IC_rlast;
  output M_AXI_IC_rready;
  input [1:0]M_AXI_IC_rresp;
  input M_AXI_IC_rvalid;
  input SYS_Rst;
  input [2:0]intr;
  input processor_rst;

  wire [3:0]Conn1_ARADDR;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [3:0]Conn1_AWADDR;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [6:0]Conn2_ARADDR;
  wire Conn2_ARREADY;
  wire Conn2_ARVALID;
  wire [6:0]Conn2_AWADDR;
  wire Conn2_AWREADY;
  wire Conn2_AWVALID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [12:0]Conn3_ARADDR;
  wire Conn3_ARREADY;
  wire Conn3_ARVALID;
  wire [12:0]Conn3_AWADDR;
  wire Conn3_AWREADY;
  wire Conn3_AWVALID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [31:0]Conn3_RDATA;
  wire Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire [31:0]Conn3_WDATA;
  wire Conn3_WREADY;
  wire [3:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire [4:0]Conn4_ARADDR;
  wire Conn4_ARREADY;
  wire Conn4_ARVALID;
  wire [4:0]Conn4_AWADDR;
  wire Conn4_AWREADY;
  wire Conn4_AWVALID;
  wire Conn4_BREADY;
  wire [1:0]Conn4_BRESP;
  wire Conn4_BVALID;
  wire [31:0]Conn4_RDATA;
  wire Conn4_RREADY;
  wire [1:0]Conn4_RRESP;
  wire Conn4_RVALID;
  wire [31:0]Conn4_WDATA;
  wire Conn4_WREADY;
  wire [3:0]Conn4_WSTRB;
  wire Conn4_WVALID;
  wire clk_wiz_1_clk_out2;
  wire clk_wiz_1_clk_out3;
  wire mdm_1_debug_sys_rst;
  wire processor_Clk;
  wire [31:0]processor_M_AXI_DC_ARADDR;
  wire [1:0]processor_M_AXI_DC_ARBURST;
  wire [3:0]processor_M_AXI_DC_ARCACHE;
  wire [7:0]processor_M_AXI_DC_ARLEN;
  wire processor_M_AXI_DC_ARLOCK;
  wire [2:0]processor_M_AXI_DC_ARPROT;
  wire [3:0]processor_M_AXI_DC_ARQOS;
  wire processor_M_AXI_DC_ARREADY;
  wire [2:0]processor_M_AXI_DC_ARSIZE;
  wire processor_M_AXI_DC_ARVALID;
  wire [31:0]processor_M_AXI_DC_AWADDR;
  wire [1:0]processor_M_AXI_DC_AWBURST;
  wire [3:0]processor_M_AXI_DC_AWCACHE;
  wire [7:0]processor_M_AXI_DC_AWLEN;
  wire processor_M_AXI_DC_AWLOCK;
  wire [2:0]processor_M_AXI_DC_AWPROT;
  wire [3:0]processor_M_AXI_DC_AWQOS;
  wire processor_M_AXI_DC_AWREADY;
  wire [2:0]processor_M_AXI_DC_AWSIZE;
  wire processor_M_AXI_DC_AWVALID;
  wire processor_M_AXI_DC_BREADY;
  wire [1:0]processor_M_AXI_DC_BRESP;
  wire processor_M_AXI_DC_BVALID;
  wire [31:0]processor_M_AXI_DC_RDATA;
  wire processor_M_AXI_DC_RLAST;
  wire processor_M_AXI_DC_RREADY;
  wire [1:0]processor_M_AXI_DC_RRESP;
  wire processor_M_AXI_DC_RVALID;
  wire [31:0]processor_M_AXI_DC_WDATA;
  wire processor_M_AXI_DC_WLAST;
  wire processor_M_AXI_DC_WREADY;
  wire [3:0]processor_M_AXI_DC_WSTRB;
  wire processor_M_AXI_DC_WVALID;
  wire [31:0]processor_M_AXI_IC_ARADDR;
  wire [1:0]processor_M_AXI_IC_ARBURST;
  wire [3:0]processor_M_AXI_IC_ARCACHE;
  wire [7:0]processor_M_AXI_IC_ARLEN;
  wire processor_M_AXI_IC_ARLOCK;
  wire [2:0]processor_M_AXI_IC_ARPROT;
  wire [3:0]processor_M_AXI_IC_ARQOS;
  wire processor_M_AXI_IC_ARREADY;
  wire [2:0]processor_M_AXI_IC_ARSIZE;
  wire processor_M_AXI_IC_ARVALID;
  wire [31:0]processor_M_AXI_IC_RDATA;
  wire processor_M_AXI_IC_RLAST;
  wire processor_M_AXI_IC_RREADY;
  wire [1:0]processor_M_AXI_IC_RRESP;
  wire processor_M_AXI_IC_RVALID;
  wire [31:0]processor_axi_dp_ARADDR;
  wire [2:0]processor_axi_dp_ARPROT;
  wire [0:0]processor_axi_dp_ARREADY;
  wire processor_axi_dp_ARVALID;
  wire [31:0]processor_axi_dp_AWADDR;
  wire [2:0]processor_axi_dp_AWPROT;
  wire [0:0]processor_axi_dp_AWREADY;
  wire processor_axi_dp_AWVALID;
  wire processor_axi_dp_BREADY;
  wire [1:0]processor_axi_dp_BRESP;
  wire [0:0]processor_axi_dp_BVALID;
  wire [31:0]processor_axi_dp_RDATA;
  wire processor_axi_dp_RREADY;
  wire [1:0]processor_axi_dp_RRESP;
  wire [0:0]processor_axi_dp_RVALID;
  wire [31:0]processor_axi_dp_WDATA;
  wire [0:0]processor_axi_dp_WREADY;
  wire [3:0]processor_axi_dp_WSTRB;
  wire processor_axi_dp_WVALID;
  wire processor_axi_periph_M01_AXI_ARADDR;
  wire processor_axi_periph_M01_AXI_ARPROT;
  wire processor_axi_periph_M01_AXI_ARREADY;
  wire processor_axi_periph_M01_AXI_ARVALID;
  wire processor_axi_periph_M01_AXI_AWADDR;
  wire processor_axi_periph_M01_AXI_AWPROT;
  wire processor_axi_periph_M01_AXI_AWREADY;
  wire processor_axi_periph_M01_AXI_AWVALID;
  wire processor_axi_periph_M01_AXI_BREADY;
  wire processor_axi_periph_M01_AXI_BRESP;
  wire processor_axi_periph_M01_AXI_BVALID;
  wire processor_axi_periph_M01_AXI_RDATA;
  wire processor_axi_periph_M01_AXI_RREADY;
  wire processor_axi_periph_M01_AXI_RRESP;
  wire processor_axi_periph_M01_AXI_RVALID;
  wire processor_axi_periph_M01_AXI_WDATA;
  wire processor_axi_periph_M01_AXI_WREADY;
  wire processor_axi_periph_M01_AXI_WSTRB;
  wire processor_axi_periph_M01_AXI_WVALID;
  wire [31:0]processor_axi_periph_M02_AXI_ARADDR;
  wire processor_axi_periph_M02_AXI_ARREADY;
  wire processor_axi_periph_M02_AXI_ARVALID;
  wire [31:0]processor_axi_periph_M02_AXI_AWADDR;
  wire processor_axi_periph_M02_AXI_AWREADY;
  wire processor_axi_periph_M02_AXI_AWVALID;
  wire processor_axi_periph_M02_AXI_BREADY;
  wire [1:0]processor_axi_periph_M02_AXI_BRESP;
  wire processor_axi_periph_M02_AXI_BVALID;
  wire [31:0]processor_axi_periph_M02_AXI_RDATA;
  wire processor_axi_periph_M02_AXI_RREADY;
  wire [1:0]processor_axi_periph_M02_AXI_RRESP;
  wire processor_axi_periph_M02_AXI_RVALID;
  wire [31:0]processor_axi_periph_M02_AXI_WDATA;
  wire processor_axi_periph_M02_AXI_WREADY;
  wire [3:0]processor_axi_periph_M02_AXI_WSTRB;
  wire processor_axi_periph_M02_AXI_WVALID;
  wire [8:0]processor_axi_periph_M03_AXI_ARADDR;
  wire processor_axi_periph_M03_AXI_ARREADY;
  wire processor_axi_periph_M03_AXI_ARVALID;
  wire [8:0]processor_axi_periph_M03_AXI_AWADDR;
  wire processor_axi_periph_M03_AXI_AWREADY;
  wire processor_axi_periph_M03_AXI_AWVALID;
  wire processor_axi_periph_M03_AXI_BREADY;
  wire [1:0]processor_axi_periph_M03_AXI_BRESP;
  wire processor_axi_periph_M03_AXI_BVALID;
  wire [31:0]processor_axi_periph_M03_AXI_RDATA;
  wire processor_axi_periph_M03_AXI_RREADY;
  wire [1:0]processor_axi_periph_M03_AXI_RRESP;
  wire processor_axi_periph_M03_AXI_RVALID;
  wire [31:0]processor_axi_periph_M03_AXI_WDATA;
  wire processor_axi_periph_M03_AXI_WREADY;
  wire [3:0]processor_axi_periph_M03_AXI_WSTRB;
  wire processor_axi_periph_M03_AXI_WVALID;
  wire [8:0]processor_axi_periph_M04_AXI_ARADDR;
  wire processor_axi_periph_M04_AXI_ARREADY;
  wire processor_axi_periph_M04_AXI_ARVALID;
  wire [8:0]processor_axi_periph_M04_AXI_AWADDR;
  wire processor_axi_periph_M04_AXI_AWREADY;
  wire processor_axi_periph_M04_AXI_AWVALID;
  wire processor_axi_periph_M04_AXI_BREADY;
  wire [1:0]processor_axi_periph_M04_AXI_BRESP;
  wire processor_axi_periph_M04_AXI_BVALID;
  wire [31:0]processor_axi_periph_M04_AXI_RDATA;
  wire processor_axi_periph_M04_AXI_RREADY;
  wire [1:0]processor_axi_periph_M04_AXI_RRESP;
  wire processor_axi_periph_M04_AXI_RVALID;
  wire [31:0]processor_axi_periph_M04_AXI_WDATA;
  wire processor_axi_periph_M04_AXI_WREADY;
  wire [3:0]processor_axi_periph_M04_AXI_WSTRB;
  wire processor_axi_periph_M04_AXI_WVALID;
  wire [6:0]processor_axi_periph_M05_AXI_ARADDR;
  wire processor_axi_periph_M05_AXI_ARREADY;
  wire processor_axi_periph_M05_AXI_ARVALID;
  wire [6:0]processor_axi_periph_M05_AXI_AWADDR;
  wire processor_axi_periph_M05_AXI_AWREADY;
  wire processor_axi_periph_M05_AXI_AWVALID;
  wire processor_axi_periph_M05_AXI_BREADY;
  wire [1:0]processor_axi_periph_M05_AXI_BRESP;
  wire processor_axi_periph_M05_AXI_BVALID;
  wire [31:0]processor_axi_periph_M05_AXI_RDATA;
  wire processor_axi_periph_M05_AXI_RREADY;
  wire [1:0]processor_axi_periph_M05_AXI_RRESP;
  wire processor_axi_periph_M05_AXI_RVALID;
  wire [31:0]processor_axi_periph_M05_AXI_WDATA;
  wire processor_axi_periph_M05_AXI_WREADY;
  wire [3:0]processor_axi_periph_M05_AXI_WSTRB;
  wire processor_axi_periph_M05_AXI_WVALID;
  wire processor_debug_CAPTURE;
  wire processor_debug_CLK;
  wire processor_debug_DISABLE;
  wire [0:7]processor_debug_REG_EN;
  wire processor_debug_RST;
  wire processor_debug_SHIFT;
  wire processor_debug_TDI;
  wire processor_debug_TDO;
  wire processor_debug_UPDATE;
  wire [0:31]processor_dlmb_1_ABUS;
  wire processor_dlmb_1_ADDRSTROBE;
  wire [0:3]processor_dlmb_1_BE;
  wire processor_dlmb_1_CE;
  wire [0:31]processor_dlmb_1_READDBUS;
  wire processor_dlmb_1_READSTROBE;
  wire processor_dlmb_1_READY;
  wire processor_dlmb_1_UE;
  wire processor_dlmb_1_WAIT;
  wire [0:31]processor_dlmb_1_WRITEDBUS;
  wire processor_dlmb_1_WRITESTROBE;
  wire [0:31]processor_ilmb_1_ABUS;
  wire processor_ilmb_1_ADDRSTROBE;
  wire processor_ilmb_1_CE;
  wire [0:31]processor_ilmb_1_READDBUS;
  wire processor_ilmb_1_READSTROBE;
  wire processor_ilmb_1_READY;
  wire processor_ilmb_1_UE;
  wire processor_ilmb_1_WAIT;
  wire [31:0]processor_intc_axi_ARADDR;
  wire processor_intc_axi_ARREADY;
  wire [0:0]processor_intc_axi_ARVALID;
  wire [31:0]processor_intc_axi_AWADDR;
  wire processor_intc_axi_AWREADY;
  wire [0:0]processor_intc_axi_AWVALID;
  wire [0:0]processor_intc_axi_BREADY;
  wire [1:0]processor_intc_axi_BRESP;
  wire processor_intc_axi_BVALID;
  wire [31:0]processor_intc_axi_RDATA;
  wire [0:0]processor_intc_axi_RREADY;
  wire [1:0]processor_intc_axi_RRESP;
  wire processor_intc_axi_RVALID;
  wire [31:0]processor_intc_axi_WDATA;
  wire processor_intc_axi_WREADY;
  wire [3:0]processor_intc_axi_WSTRB;
  wire [0:0]processor_intc_axi_WVALID;
  wire [0:1]processor_interrupt_ACK;
  wire [31:0]processor_interrupt_ADDRESS;
  wire processor_interrupt_INTERRUPT;
  wire rst_clk_wiz_1_100M_bus_struct_reset;
  wire rst_clk_wiz_1_100M_mb_reset;
  wire rst_clk_wiz_1_100M_peripheral_aresetn;
  wire rst_clk_wiz_1_150M_peripheral_aresetn;
  wire rst_clk_wiz_1_200M_peripheral_aresetn;
  wire [2:0]v_frmbuf_rd_0_interrupt;

  assign Conn1_ARREADY = M06_AXI_arready;
  assign Conn1_AWREADY = M06_AXI_awready;
  assign Conn1_BRESP = M06_AXI_bresp[1:0];
  assign Conn1_BVALID = M06_AXI_bvalid;
  assign Conn1_RDATA = M06_AXI_rdata[31:0];
  assign Conn1_RRESP = M06_AXI_rresp[1:0];
  assign Conn1_RVALID = M06_AXI_rvalid;
  assign Conn1_WREADY = M06_AXI_wready;
  assign Conn2_ARREADY = M07_AXI_arready;
  assign Conn2_AWREADY = M07_AXI_awready;
  assign Conn2_BRESP = M07_AXI_bresp[1:0];
  assign Conn2_BVALID = M07_AXI_bvalid;
  assign Conn2_RDATA = M07_AXI_rdata[31:0];
  assign Conn2_RRESP = M07_AXI_rresp[1:0];
  assign Conn2_RVALID = M07_AXI_rvalid;
  assign Conn2_WREADY = M07_AXI_wready;
  assign Conn3_ARREADY = M08_AXI_arready;
  assign Conn3_AWREADY = M08_AXI_awready;
  assign Conn3_BRESP = M08_AXI_bresp[1:0];
  assign Conn3_BVALID = M08_AXI_bvalid;
  assign Conn3_RDATA = M08_AXI_rdata[31:0];
  assign Conn3_RRESP = M08_AXI_rresp[1:0];
  assign Conn3_RVALID = M08_AXI_rvalid;
  assign Conn3_WREADY = M08_AXI_wready;
  assign Conn4_ARREADY = M09_AXI_arready;
  assign Conn4_AWREADY = M09_AXI_awready;
  assign Conn4_BRESP = M09_AXI_bresp[1:0];
  assign Conn4_BVALID = M09_AXI_bvalid;
  assign Conn4_RDATA = M09_AXI_rdata[31:0];
  assign Conn4_RRESP = M09_AXI_rresp[1:0];
  assign Conn4_RVALID = M09_AXI_rvalid;
  assign Conn4_WREADY = M09_AXI_wready;
  assign Debug_SYS_Rst = mdm_1_debug_sys_rst;
  assign M01_AXI_araddr = processor_axi_periph_M01_AXI_ARADDR;
  assign M01_AXI_arprot = processor_axi_periph_M01_AXI_ARPROT;
  assign M01_AXI_arvalid = processor_axi_periph_M01_AXI_ARVALID;
  assign M01_AXI_awaddr = processor_axi_periph_M01_AXI_AWADDR;
  assign M01_AXI_awprot = processor_axi_periph_M01_AXI_AWPROT;
  assign M01_AXI_awvalid = processor_axi_periph_M01_AXI_AWVALID;
  assign M01_AXI_bready = processor_axi_periph_M01_AXI_BREADY;
  assign M01_AXI_rready = processor_axi_periph_M01_AXI_RREADY;
  assign M01_AXI_wdata = processor_axi_periph_M01_AXI_WDATA;
  assign M01_AXI_wstrb = processor_axi_periph_M01_AXI_WSTRB;
  assign M01_AXI_wvalid = processor_axi_periph_M01_AXI_WVALID;
  assign M02_AXI_araddr[31:0] = processor_axi_periph_M02_AXI_ARADDR;
  assign M02_AXI_arvalid = processor_axi_periph_M02_AXI_ARVALID;
  assign M02_AXI_awaddr[31:0] = processor_axi_periph_M02_AXI_AWADDR;
  assign M02_AXI_awvalid = processor_axi_periph_M02_AXI_AWVALID;
  assign M02_AXI_bready = processor_axi_periph_M02_AXI_BREADY;
  assign M02_AXI_rready = processor_axi_periph_M02_AXI_RREADY;
  assign M02_AXI_wdata[31:0] = processor_axi_periph_M02_AXI_WDATA;
  assign M02_AXI_wstrb[3:0] = processor_axi_periph_M02_AXI_WSTRB;
  assign M02_AXI_wvalid = processor_axi_periph_M02_AXI_WVALID;
  assign M03_AXI_araddr[8:0] = processor_axi_periph_M03_AXI_ARADDR;
  assign M03_AXI_arvalid = processor_axi_periph_M03_AXI_ARVALID;
  assign M03_AXI_awaddr[8:0] = processor_axi_periph_M03_AXI_AWADDR;
  assign M03_AXI_awvalid = processor_axi_periph_M03_AXI_AWVALID;
  assign M03_AXI_bready = processor_axi_periph_M03_AXI_BREADY;
  assign M03_AXI_rready = processor_axi_periph_M03_AXI_RREADY;
  assign M03_AXI_wdata[31:0] = processor_axi_periph_M03_AXI_WDATA;
  assign M03_AXI_wstrb[3:0] = processor_axi_periph_M03_AXI_WSTRB;
  assign M03_AXI_wvalid = processor_axi_periph_M03_AXI_WVALID;
  assign M04_AXI_araddr[8:0] = processor_axi_periph_M04_AXI_ARADDR;
  assign M04_AXI_arvalid = processor_axi_periph_M04_AXI_ARVALID;
  assign M04_AXI_awaddr[8:0] = processor_axi_periph_M04_AXI_AWADDR;
  assign M04_AXI_awvalid = processor_axi_periph_M04_AXI_AWVALID;
  assign M04_AXI_bready = processor_axi_periph_M04_AXI_BREADY;
  assign M04_AXI_rready = processor_axi_periph_M04_AXI_RREADY;
  assign M04_AXI_wdata[31:0] = processor_axi_periph_M04_AXI_WDATA;
  assign M04_AXI_wstrb[3:0] = processor_axi_periph_M04_AXI_WSTRB;
  assign M04_AXI_wvalid = processor_axi_periph_M04_AXI_WVALID;
  assign M05_AXI_araddr[6:0] = processor_axi_periph_M05_AXI_ARADDR;
  assign M05_AXI_arvalid = processor_axi_periph_M05_AXI_ARVALID;
  assign M05_AXI_awaddr[6:0] = processor_axi_periph_M05_AXI_AWADDR;
  assign M05_AXI_awvalid = processor_axi_periph_M05_AXI_AWVALID;
  assign M05_AXI_bready = processor_axi_periph_M05_AXI_BREADY;
  assign M05_AXI_rready = processor_axi_periph_M05_AXI_RREADY;
  assign M05_AXI_wdata[31:0] = processor_axi_periph_M05_AXI_WDATA;
  assign M05_AXI_wstrb[3:0] = processor_axi_periph_M05_AXI_WSTRB;
  assign M05_AXI_wvalid = processor_axi_periph_M05_AXI_WVALID;
  assign M06_AXI_araddr[3:0] = Conn1_ARADDR;
  assign M06_AXI_arvalid = Conn1_ARVALID;
  assign M06_AXI_awaddr[3:0] = Conn1_AWADDR;
  assign M06_AXI_awvalid = Conn1_AWVALID;
  assign M06_AXI_bready = Conn1_BREADY;
  assign M06_AXI_rready = Conn1_RREADY;
  assign M06_AXI_wdata[31:0] = Conn1_WDATA;
  assign M06_AXI_wstrb[3:0] = Conn1_WSTRB;
  assign M06_AXI_wvalid = Conn1_WVALID;
  assign M07_AXI_araddr[6:0] = Conn2_ARADDR;
  assign M07_AXI_arvalid = Conn2_ARVALID;
  assign M07_AXI_awaddr[6:0] = Conn2_AWADDR;
  assign M07_AXI_awvalid = Conn2_AWVALID;
  assign M07_AXI_bready = Conn2_BREADY;
  assign M07_AXI_rready = Conn2_RREADY;
  assign M07_AXI_wdata[31:0] = Conn2_WDATA;
  assign M07_AXI_wstrb[3:0] = Conn2_WSTRB;
  assign M07_AXI_wvalid = Conn2_WVALID;
  assign M08_AXI_araddr[12:0] = Conn3_ARADDR;
  assign M08_AXI_arvalid = Conn3_ARVALID;
  assign M08_AXI_awaddr[12:0] = Conn3_AWADDR;
  assign M08_AXI_awvalid = Conn3_AWVALID;
  assign M08_AXI_bready = Conn3_BREADY;
  assign M08_AXI_rready = Conn3_RREADY;
  assign M08_AXI_wdata[31:0] = Conn3_WDATA;
  assign M08_AXI_wstrb[3:0] = Conn3_WSTRB;
  assign M08_AXI_wvalid = Conn3_WVALID;
  assign M09_AXI_araddr[4:0] = Conn4_ARADDR;
  assign M09_AXI_arvalid = Conn4_ARVALID;
  assign M09_AXI_awaddr[4:0] = Conn4_AWADDR;
  assign M09_AXI_awvalid = Conn4_AWVALID;
  assign M09_AXI_bready = Conn4_BREADY;
  assign M09_AXI_rready = Conn4_RREADY;
  assign M09_AXI_wdata[31:0] = Conn4_WDATA;
  assign M09_AXI_wstrb[3:0] = Conn4_WSTRB;
  assign M09_AXI_wvalid = Conn4_WVALID;
  assign M_AXI_DC_araddr[31:0] = processor_M_AXI_DC_ARADDR;
  assign M_AXI_DC_arburst[1:0] = processor_M_AXI_DC_ARBURST;
  assign M_AXI_DC_arcache[3:0] = processor_M_AXI_DC_ARCACHE;
  assign M_AXI_DC_arlen[7:0] = processor_M_AXI_DC_ARLEN;
  assign M_AXI_DC_arlock = processor_M_AXI_DC_ARLOCK;
  assign M_AXI_DC_arprot[2:0] = processor_M_AXI_DC_ARPROT;
  assign M_AXI_DC_arqos[3:0] = processor_M_AXI_DC_ARQOS;
  assign M_AXI_DC_arsize[2:0] = processor_M_AXI_DC_ARSIZE;
  assign M_AXI_DC_arvalid = processor_M_AXI_DC_ARVALID;
  assign M_AXI_DC_awaddr[31:0] = processor_M_AXI_DC_AWADDR;
  assign M_AXI_DC_awburst[1:0] = processor_M_AXI_DC_AWBURST;
  assign M_AXI_DC_awcache[3:0] = processor_M_AXI_DC_AWCACHE;
  assign M_AXI_DC_awlen[7:0] = processor_M_AXI_DC_AWLEN;
  assign M_AXI_DC_awlock = processor_M_AXI_DC_AWLOCK;
  assign M_AXI_DC_awprot[2:0] = processor_M_AXI_DC_AWPROT;
  assign M_AXI_DC_awqos[3:0] = processor_M_AXI_DC_AWQOS;
  assign M_AXI_DC_awsize[2:0] = processor_M_AXI_DC_AWSIZE;
  assign M_AXI_DC_awvalid = processor_M_AXI_DC_AWVALID;
  assign M_AXI_DC_bready = processor_M_AXI_DC_BREADY;
  assign M_AXI_DC_rready = processor_M_AXI_DC_RREADY;
  assign M_AXI_DC_wdata[31:0] = processor_M_AXI_DC_WDATA;
  assign M_AXI_DC_wlast = processor_M_AXI_DC_WLAST;
  assign M_AXI_DC_wstrb[3:0] = processor_M_AXI_DC_WSTRB;
  assign M_AXI_DC_wvalid = processor_M_AXI_DC_WVALID;
  assign M_AXI_IC_araddr[31:0] = processor_M_AXI_IC_ARADDR;
  assign M_AXI_IC_arburst[1:0] = processor_M_AXI_IC_ARBURST;
  assign M_AXI_IC_arcache[3:0] = processor_M_AXI_IC_ARCACHE;
  assign M_AXI_IC_arlen[7:0] = processor_M_AXI_IC_ARLEN;
  assign M_AXI_IC_arlock = processor_M_AXI_IC_ARLOCK;
  assign M_AXI_IC_arprot[2:0] = processor_M_AXI_IC_ARPROT;
  assign M_AXI_IC_arqos[3:0] = processor_M_AXI_IC_ARQOS;
  assign M_AXI_IC_arsize[2:0] = processor_M_AXI_IC_ARSIZE;
  assign M_AXI_IC_arvalid = processor_M_AXI_IC_ARVALID;
  assign M_AXI_IC_rready = processor_M_AXI_IC_RREADY;
  assign clk_wiz_1_clk_out2 = M03_ACLK;
  assign clk_wiz_1_clk_out3 = M05_ACLK;
  assign processor_Clk = ACLK;
  assign processor_M_AXI_DC_ARREADY = M_AXI_DC_arready;
  assign processor_M_AXI_DC_AWREADY = M_AXI_DC_awready;
  assign processor_M_AXI_DC_BRESP = M_AXI_DC_bresp[1:0];
  assign processor_M_AXI_DC_BVALID = M_AXI_DC_bvalid;
  assign processor_M_AXI_DC_RDATA = M_AXI_DC_rdata[31:0];
  assign processor_M_AXI_DC_RLAST = M_AXI_DC_rlast;
  assign processor_M_AXI_DC_RRESP = M_AXI_DC_rresp[1:0];
  assign processor_M_AXI_DC_RVALID = M_AXI_DC_rvalid;
  assign processor_M_AXI_DC_WREADY = M_AXI_DC_wready;
  assign processor_M_AXI_IC_ARREADY = M_AXI_IC_arready;
  assign processor_M_AXI_IC_RDATA = M_AXI_IC_rdata[31:0];
  assign processor_M_AXI_IC_RLAST = M_AXI_IC_rlast;
  assign processor_M_AXI_IC_RRESP = M_AXI_IC_rresp[1:0];
  assign processor_M_AXI_IC_RVALID = M_AXI_IC_rvalid;
  assign processor_axi_periph_M01_AXI_ARREADY = M01_AXI_arready;
  assign processor_axi_periph_M01_AXI_AWREADY = M01_AXI_awready;
  assign processor_axi_periph_M01_AXI_BRESP = M01_AXI_bresp;
  assign processor_axi_periph_M01_AXI_BVALID = M01_AXI_bvalid;
  assign processor_axi_periph_M01_AXI_RDATA = M01_AXI_rdata;
  assign processor_axi_periph_M01_AXI_RRESP = M01_AXI_rresp;
  assign processor_axi_periph_M01_AXI_RVALID = M01_AXI_rvalid;
  assign processor_axi_periph_M01_AXI_WREADY = M01_AXI_wready;
  assign processor_axi_periph_M02_AXI_ARREADY = M02_AXI_arready;
  assign processor_axi_periph_M02_AXI_AWREADY = M02_AXI_awready;
  assign processor_axi_periph_M02_AXI_BRESP = M02_AXI_bresp[1:0];
  assign processor_axi_periph_M02_AXI_BVALID = M02_AXI_bvalid;
  assign processor_axi_periph_M02_AXI_RDATA = M02_AXI_rdata[31:0];
  assign processor_axi_periph_M02_AXI_RRESP = M02_AXI_rresp[1:0];
  assign processor_axi_periph_M02_AXI_RVALID = M02_AXI_rvalid;
  assign processor_axi_periph_M02_AXI_WREADY = M02_AXI_wready;
  assign processor_axi_periph_M03_AXI_ARREADY = M03_AXI_arready;
  assign processor_axi_periph_M03_AXI_AWREADY = M03_AXI_awready;
  assign processor_axi_periph_M03_AXI_BRESP = M03_AXI_bresp[1:0];
  assign processor_axi_periph_M03_AXI_BVALID = M03_AXI_bvalid;
  assign processor_axi_periph_M03_AXI_RDATA = M03_AXI_rdata[31:0];
  assign processor_axi_periph_M03_AXI_RRESP = M03_AXI_rresp[1:0];
  assign processor_axi_periph_M03_AXI_RVALID = M03_AXI_rvalid;
  assign processor_axi_periph_M03_AXI_WREADY = M03_AXI_wready;
  assign processor_axi_periph_M04_AXI_ARREADY = M04_AXI_arready;
  assign processor_axi_periph_M04_AXI_AWREADY = M04_AXI_awready;
  assign processor_axi_periph_M04_AXI_BRESP = M04_AXI_bresp[1:0];
  assign processor_axi_periph_M04_AXI_BVALID = M04_AXI_bvalid;
  assign processor_axi_periph_M04_AXI_RDATA = M04_AXI_rdata[31:0];
  assign processor_axi_periph_M04_AXI_RRESP = M04_AXI_rresp[1:0];
  assign processor_axi_periph_M04_AXI_RVALID = M04_AXI_rvalid;
  assign processor_axi_periph_M04_AXI_WREADY = M04_AXI_wready;
  assign processor_axi_periph_M05_AXI_ARREADY = M05_AXI_arready;
  assign processor_axi_periph_M05_AXI_AWREADY = M05_AXI_awready;
  assign processor_axi_periph_M05_AXI_BRESP = M05_AXI_bresp[1:0];
  assign processor_axi_periph_M05_AXI_BVALID = M05_AXI_bvalid;
  assign processor_axi_periph_M05_AXI_RDATA = M05_AXI_rdata[31:0];
  assign processor_axi_periph_M05_AXI_RRESP = M05_AXI_rresp[1:0];
  assign processor_axi_periph_M05_AXI_RVALID = M05_AXI_rvalid;
  assign processor_axi_periph_M05_AXI_WREADY = M05_AXI_wready;
  assign rst_clk_wiz_1_100M_bus_struct_reset = SYS_Rst;
  assign rst_clk_wiz_1_100M_mb_reset = processor_rst;
  assign rst_clk_wiz_1_100M_peripheral_aresetn = ARESETN;
  assign rst_clk_wiz_1_150M_peripheral_aresetn = M03_ARESETN;
  assign rst_clk_wiz_1_200M_peripheral_aresetn = M05_ARESETN;
  assign v_frmbuf_rd_0_interrupt = intr[2:0];
  (* BMM_INFO_PROCESSOR = "microblaze-le > ex_synth processor_ss/processor_local_memory/dlmb_bram_if_cntlr" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  ex_synth_processor_0 processor
       (.Byte_Enable(processor_dlmb_1_BE),
        .Clk(processor_Clk),
        .DCE(processor_dlmb_1_CE),
        .DReady(processor_dlmb_1_READY),
        .DUE(processor_dlmb_1_UE),
        .DWait(processor_dlmb_1_WAIT),
        .D_AS(processor_dlmb_1_ADDRSTROBE),
        .Data_Addr(processor_dlmb_1_ABUS),
        .Data_Read(processor_dlmb_1_READDBUS),
        .Data_Write(processor_dlmb_1_WRITEDBUS),
        .Dbg_Capture(processor_debug_CAPTURE),
        .Dbg_Clk(processor_debug_CLK),
        .Dbg_Disable(processor_debug_DISABLE),
        .Dbg_Reg_En(processor_debug_REG_EN),
        .Dbg_Shift(processor_debug_SHIFT),
        .Dbg_TDI(processor_debug_TDI),
        .Dbg_TDO(processor_debug_TDO),
        .Dbg_Update(processor_debug_UPDATE),
        .Debug_Rst(processor_debug_RST),
        .ICE(processor_ilmb_1_CE),
        .IFetch(processor_ilmb_1_READSTROBE),
        .IReady(processor_ilmb_1_READY),
        .IUE(processor_ilmb_1_UE),
        .IWAIT(processor_ilmb_1_WAIT),
        .I_AS(processor_ilmb_1_ADDRSTROBE),
        .Instr(processor_ilmb_1_READDBUS),
        .Instr_Addr(processor_ilmb_1_ABUS),
        .Interrupt(processor_interrupt_INTERRUPT),
        .Interrupt_Ack(processor_interrupt_ACK),
        .Interrupt_Address({processor_interrupt_ADDRESS[31],processor_interrupt_ADDRESS[30],processor_interrupt_ADDRESS[29],processor_interrupt_ADDRESS[28],processor_interrupt_ADDRESS[27],processor_interrupt_ADDRESS[26],processor_interrupt_ADDRESS[25],processor_interrupt_ADDRESS[24],processor_interrupt_ADDRESS[23],processor_interrupt_ADDRESS[22],processor_interrupt_ADDRESS[21],processor_interrupt_ADDRESS[20],processor_interrupt_ADDRESS[19],processor_interrupt_ADDRESS[18],processor_interrupt_ADDRESS[17],processor_interrupt_ADDRESS[16],processor_interrupt_ADDRESS[15],processor_interrupt_ADDRESS[14],processor_interrupt_ADDRESS[13],processor_interrupt_ADDRESS[12],processor_interrupt_ADDRESS[11],processor_interrupt_ADDRESS[10],processor_interrupt_ADDRESS[9],processor_interrupt_ADDRESS[8],processor_interrupt_ADDRESS[7],processor_interrupt_ADDRESS[6],processor_interrupt_ADDRESS[5],processor_interrupt_ADDRESS[4],processor_interrupt_ADDRESS[3],processor_interrupt_ADDRESS[2],processor_interrupt_ADDRESS[1],processor_interrupt_ADDRESS[0]}),
        .M_AXI_DC_ARADDR(processor_M_AXI_DC_ARADDR),
        .M_AXI_DC_ARBURST(processor_M_AXI_DC_ARBURST),
        .M_AXI_DC_ARCACHE(processor_M_AXI_DC_ARCACHE),
        .M_AXI_DC_ARLEN(processor_M_AXI_DC_ARLEN),
        .M_AXI_DC_ARLOCK(processor_M_AXI_DC_ARLOCK),
        .M_AXI_DC_ARPROT(processor_M_AXI_DC_ARPROT),
        .M_AXI_DC_ARQOS(processor_M_AXI_DC_ARQOS),
        .M_AXI_DC_ARREADY(processor_M_AXI_DC_ARREADY),
        .M_AXI_DC_ARSIZE(processor_M_AXI_DC_ARSIZE),
        .M_AXI_DC_ARVALID(processor_M_AXI_DC_ARVALID),
        .M_AXI_DC_AWADDR(processor_M_AXI_DC_AWADDR),
        .M_AXI_DC_AWBURST(processor_M_AXI_DC_AWBURST),
        .M_AXI_DC_AWCACHE(processor_M_AXI_DC_AWCACHE),
        .M_AXI_DC_AWLEN(processor_M_AXI_DC_AWLEN),
        .M_AXI_DC_AWLOCK(processor_M_AXI_DC_AWLOCK),
        .M_AXI_DC_AWPROT(processor_M_AXI_DC_AWPROT),
        .M_AXI_DC_AWQOS(processor_M_AXI_DC_AWQOS),
        .M_AXI_DC_AWREADY(processor_M_AXI_DC_AWREADY),
        .M_AXI_DC_AWSIZE(processor_M_AXI_DC_AWSIZE),
        .M_AXI_DC_AWVALID(processor_M_AXI_DC_AWVALID),
        .M_AXI_DC_BID(1'b0),
        .M_AXI_DC_BREADY(processor_M_AXI_DC_BREADY),
        .M_AXI_DC_BRESP(processor_M_AXI_DC_BRESP),
        .M_AXI_DC_BVALID(processor_M_AXI_DC_BVALID),
        .M_AXI_DC_RDATA(processor_M_AXI_DC_RDATA),
        .M_AXI_DC_RID(1'b0),
        .M_AXI_DC_RLAST(processor_M_AXI_DC_RLAST),
        .M_AXI_DC_RREADY(processor_M_AXI_DC_RREADY),
        .M_AXI_DC_RRESP(processor_M_AXI_DC_RRESP),
        .M_AXI_DC_RVALID(processor_M_AXI_DC_RVALID),
        .M_AXI_DC_WDATA(processor_M_AXI_DC_WDATA),
        .M_AXI_DC_WLAST(processor_M_AXI_DC_WLAST),
        .M_AXI_DC_WREADY(processor_M_AXI_DC_WREADY),
        .M_AXI_DC_WSTRB(processor_M_AXI_DC_WSTRB),
        .M_AXI_DC_WVALID(processor_M_AXI_DC_WVALID),
        .M_AXI_DP_ARADDR(processor_axi_dp_ARADDR),
        .M_AXI_DP_ARPROT(processor_axi_dp_ARPROT),
        .M_AXI_DP_ARREADY(processor_axi_dp_ARREADY),
        .M_AXI_DP_ARVALID(processor_axi_dp_ARVALID),
        .M_AXI_DP_AWADDR(processor_axi_dp_AWADDR),
        .M_AXI_DP_AWPROT(processor_axi_dp_AWPROT),
        .M_AXI_DP_AWREADY(processor_axi_dp_AWREADY),
        .M_AXI_DP_AWVALID(processor_axi_dp_AWVALID),
        .M_AXI_DP_BREADY(processor_axi_dp_BREADY),
        .M_AXI_DP_BRESP(processor_axi_dp_BRESP),
        .M_AXI_DP_BVALID(processor_axi_dp_BVALID),
        .M_AXI_DP_RDATA(processor_axi_dp_RDATA),
        .M_AXI_DP_RREADY(processor_axi_dp_RREADY),
        .M_AXI_DP_RRESP(processor_axi_dp_RRESP),
        .M_AXI_DP_RVALID(processor_axi_dp_RVALID),
        .M_AXI_DP_WDATA(processor_axi_dp_WDATA),
        .M_AXI_DP_WREADY(processor_axi_dp_WREADY),
        .M_AXI_DP_WSTRB(processor_axi_dp_WSTRB),
        .M_AXI_DP_WVALID(processor_axi_dp_WVALID),
        .M_AXI_IC_ARADDR(processor_M_AXI_IC_ARADDR),
        .M_AXI_IC_ARBURST(processor_M_AXI_IC_ARBURST),
        .M_AXI_IC_ARCACHE(processor_M_AXI_IC_ARCACHE),
        .M_AXI_IC_ARLEN(processor_M_AXI_IC_ARLEN),
        .M_AXI_IC_ARLOCK(processor_M_AXI_IC_ARLOCK),
        .M_AXI_IC_ARPROT(processor_M_AXI_IC_ARPROT),
        .M_AXI_IC_ARQOS(processor_M_AXI_IC_ARQOS),
        .M_AXI_IC_ARREADY(processor_M_AXI_IC_ARREADY),
        .M_AXI_IC_ARSIZE(processor_M_AXI_IC_ARSIZE),
        .M_AXI_IC_ARVALID(processor_M_AXI_IC_ARVALID),
        .M_AXI_IC_AWREADY(1'b0),
        .M_AXI_IC_BID(1'b0),
        .M_AXI_IC_BRESP({1'b0,1'b0}),
        .M_AXI_IC_BVALID(1'b0),
        .M_AXI_IC_RDATA(processor_M_AXI_IC_RDATA),
        .M_AXI_IC_RID(1'b0),
        .M_AXI_IC_RLAST(processor_M_AXI_IC_RLAST),
        .M_AXI_IC_RREADY(processor_M_AXI_IC_RREADY),
        .M_AXI_IC_RRESP(processor_M_AXI_IC_RRESP),
        .M_AXI_IC_RVALID(processor_M_AXI_IC_RVALID),
        .M_AXI_IC_WREADY(1'b0),
        .Read_Strobe(processor_dlmb_1_READSTROBE),
        .Reset(rst_clk_wiz_1_100M_mb_reset),
        .Write_Strobe(processor_dlmb_1_WRITESTROBE));
  ex_synth_processor_axi_intc_0 processor_axi_intc
       (.interrupt_address(processor_interrupt_ADDRESS),
        .intr(v_frmbuf_rd_0_interrupt),
        .irq(processor_interrupt_INTERRUPT),
        .processor_ack({processor_interrupt_ACK[0],processor_interrupt_ACK[1]}),
        .processor_clk(processor_Clk),
        .processor_rst(rst_clk_wiz_1_100M_mb_reset),
        .s_axi_aclk(processor_Clk),
        .s_axi_araddr(processor_intc_axi_ARADDR[8:0]),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(processor_intc_axi_ARREADY),
        .s_axi_arvalid(processor_intc_axi_ARVALID),
        .s_axi_awaddr(processor_intc_axi_AWADDR[8:0]),
        .s_axi_awready(processor_intc_axi_AWREADY),
        .s_axi_awvalid(processor_intc_axi_AWVALID),
        .s_axi_bready(processor_intc_axi_BREADY),
        .s_axi_bresp(processor_intc_axi_BRESP),
        .s_axi_bvalid(processor_intc_axi_BVALID),
        .s_axi_rdata(processor_intc_axi_RDATA),
        .s_axi_rready(processor_intc_axi_RREADY),
        .s_axi_rresp(processor_intc_axi_RRESP),
        .s_axi_rvalid(processor_intc_axi_RVALID),
        .s_axi_wdata(processor_intc_axi_WDATA),
        .s_axi_wready(processor_intc_axi_WREADY),
        .s_axi_wstrb(processor_intc_axi_WSTRB),
        .s_axi_wvalid(processor_intc_axi_WVALID));
  ex_synth_processor_axi_periph_0 processor_axi_periph
       (.ACLK(processor_Clk),
        .ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .M00_ACLK(processor_Clk),
        .M00_ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .M00_AXI_araddr(processor_intc_axi_ARADDR),
        .M00_AXI_arready(processor_intc_axi_ARREADY),
        .M00_AXI_arvalid(processor_intc_axi_ARVALID),
        .M00_AXI_awaddr(processor_intc_axi_AWADDR),
        .M00_AXI_awready(processor_intc_axi_AWREADY),
        .M00_AXI_awvalid(processor_intc_axi_AWVALID),
        .M00_AXI_bready(processor_intc_axi_BREADY),
        .M00_AXI_bresp(processor_intc_axi_BRESP),
        .M00_AXI_bvalid(processor_intc_axi_BVALID),
        .M00_AXI_rdata(processor_intc_axi_RDATA),
        .M00_AXI_rready(processor_intc_axi_RREADY),
        .M00_AXI_rresp(processor_intc_axi_RRESP),
        .M00_AXI_rvalid(processor_intc_axi_RVALID),
        .M00_AXI_wdata(processor_intc_axi_WDATA),
        .M00_AXI_wready(processor_intc_axi_WREADY),
        .M00_AXI_wstrb(processor_intc_axi_WSTRB),
        .M00_AXI_wvalid(processor_intc_axi_WVALID),
        .M01_ACLK(processor_Clk),
        .M01_ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .M01_AXI_araddr(processor_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arprot(processor_axi_periph_M01_AXI_ARPROT),
        .M01_AXI_arready(processor_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(processor_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(processor_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awprot(processor_axi_periph_M01_AXI_AWPROT),
        .M01_AXI_awready(processor_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(processor_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(processor_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(processor_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(processor_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(processor_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(processor_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(processor_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(processor_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(processor_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(processor_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(processor_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(processor_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(processor_Clk),
        .M02_ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .M02_AXI_araddr(processor_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(processor_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(processor_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(processor_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(processor_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(processor_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(processor_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(processor_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(processor_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(processor_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(processor_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(processor_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(processor_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(processor_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(processor_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(processor_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(processor_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(clk_wiz_1_clk_out2),
        .M03_ARESETN(rst_clk_wiz_1_150M_peripheral_aresetn),
        .M03_AXI_araddr(processor_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arready(processor_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(processor_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(processor_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awready(processor_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(processor_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(processor_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(processor_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(processor_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(processor_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(processor_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(processor_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(processor_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(processor_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(processor_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(processor_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(processor_axi_periph_M03_AXI_WVALID),
        .M04_ACLK(clk_wiz_1_clk_out3),
        .M04_ARESETN(rst_clk_wiz_1_200M_peripheral_aresetn),
        .M04_AXI_araddr(processor_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arready(processor_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(processor_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(processor_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awready(processor_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(processor_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(processor_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(processor_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(processor_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(processor_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(processor_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(processor_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(processor_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(processor_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(processor_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(processor_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(processor_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(clk_wiz_1_clk_out3),
        .M05_ARESETN(rst_clk_wiz_1_200M_peripheral_aresetn),
        .M05_AXI_araddr(processor_axi_periph_M05_AXI_ARADDR),
        .M05_AXI_arready(processor_axi_periph_M05_AXI_ARREADY),
        .M05_AXI_arvalid(processor_axi_periph_M05_AXI_ARVALID),
        .M05_AXI_awaddr(processor_axi_periph_M05_AXI_AWADDR),
        .M05_AXI_awready(processor_axi_periph_M05_AXI_AWREADY),
        .M05_AXI_awvalid(processor_axi_periph_M05_AXI_AWVALID),
        .M05_AXI_bready(processor_axi_periph_M05_AXI_BREADY),
        .M05_AXI_bresp(processor_axi_periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(processor_axi_periph_M05_AXI_BVALID),
        .M05_AXI_rdata(processor_axi_periph_M05_AXI_RDATA),
        .M05_AXI_rready(processor_axi_periph_M05_AXI_RREADY),
        .M05_AXI_rresp(processor_axi_periph_M05_AXI_RRESP),
        .M05_AXI_rvalid(processor_axi_periph_M05_AXI_RVALID),
        .M05_AXI_wdata(processor_axi_periph_M05_AXI_WDATA),
        .M05_AXI_wready(processor_axi_periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(processor_axi_periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(processor_axi_periph_M05_AXI_WVALID),
        .M06_ACLK(clk_wiz_1_clk_out3),
        .M06_ARESETN(rst_clk_wiz_1_200M_peripheral_aresetn),
        .M06_AXI_araddr(Conn1_ARADDR),
        .M06_AXI_arready(Conn1_ARREADY),
        .M06_AXI_arvalid(Conn1_ARVALID),
        .M06_AXI_awaddr(Conn1_AWADDR),
        .M06_AXI_awready(Conn1_AWREADY),
        .M06_AXI_awvalid(Conn1_AWVALID),
        .M06_AXI_bready(Conn1_BREADY),
        .M06_AXI_bresp(Conn1_BRESP),
        .M06_AXI_bvalid(Conn1_BVALID),
        .M06_AXI_rdata(Conn1_RDATA),
        .M06_AXI_rready(Conn1_RREADY),
        .M06_AXI_rresp(Conn1_RRESP),
        .M06_AXI_rvalid(Conn1_RVALID),
        .M06_AXI_wdata(Conn1_WDATA),
        .M06_AXI_wready(Conn1_WREADY),
        .M06_AXI_wstrb(Conn1_WSTRB),
        .M06_AXI_wvalid(Conn1_WVALID),
        .M07_ACLK(clk_wiz_1_clk_out3),
        .M07_ARESETN(rst_clk_wiz_1_200M_peripheral_aresetn),
        .M07_AXI_araddr(Conn2_ARADDR),
        .M07_AXI_arready(Conn2_ARREADY),
        .M07_AXI_arvalid(Conn2_ARVALID),
        .M07_AXI_awaddr(Conn2_AWADDR),
        .M07_AXI_awready(Conn2_AWREADY),
        .M07_AXI_awvalid(Conn2_AWVALID),
        .M07_AXI_bready(Conn2_BREADY),
        .M07_AXI_bresp(Conn2_BRESP),
        .M07_AXI_bvalid(Conn2_BVALID),
        .M07_AXI_rdata(Conn2_RDATA),
        .M07_AXI_rready(Conn2_RREADY),
        .M07_AXI_rresp(Conn2_RRESP),
        .M07_AXI_rvalid(Conn2_RVALID),
        .M07_AXI_wdata(Conn2_WDATA),
        .M07_AXI_wready(Conn2_WREADY),
        .M07_AXI_wstrb(Conn2_WSTRB),
        .M07_AXI_wvalid(Conn2_WVALID),
        .M08_ACLK(clk_wiz_1_clk_out3),
        .M08_ARESETN(rst_clk_wiz_1_200M_peripheral_aresetn),
        .M08_AXI_araddr(Conn3_ARADDR),
        .M08_AXI_arready(Conn3_ARREADY),
        .M08_AXI_arvalid(Conn3_ARVALID),
        .M08_AXI_awaddr(Conn3_AWADDR),
        .M08_AXI_awready(Conn3_AWREADY),
        .M08_AXI_awvalid(Conn3_AWVALID),
        .M08_AXI_bready(Conn3_BREADY),
        .M08_AXI_bresp(Conn3_BRESP),
        .M08_AXI_bvalid(Conn3_BVALID),
        .M08_AXI_rdata(Conn3_RDATA),
        .M08_AXI_rready(Conn3_RREADY),
        .M08_AXI_rresp(Conn3_RRESP),
        .M08_AXI_rvalid(Conn3_RVALID),
        .M08_AXI_wdata(Conn3_WDATA),
        .M08_AXI_wready(Conn3_WREADY),
        .M08_AXI_wstrb(Conn3_WSTRB),
        .M08_AXI_wvalid(Conn3_WVALID),
        .M09_ACLK(clk_wiz_1_clk_out3),
        .M09_ARESETN(rst_clk_wiz_1_200M_peripheral_aresetn),
        .M09_AXI_araddr(Conn4_ARADDR),
        .M09_AXI_arready(Conn4_ARREADY),
        .M09_AXI_arvalid(Conn4_ARVALID),
        .M09_AXI_awaddr(Conn4_AWADDR),
        .M09_AXI_awready(Conn4_AWREADY),
        .M09_AXI_awvalid(Conn4_AWVALID),
        .M09_AXI_bready(Conn4_BREADY),
        .M09_AXI_bresp(Conn4_BRESP),
        .M09_AXI_bvalid(Conn4_BVALID),
        .M09_AXI_rdata(Conn4_RDATA),
        .M09_AXI_rready(Conn4_RREADY),
        .M09_AXI_rresp(Conn4_RRESP),
        .M09_AXI_rvalid(Conn4_RVALID),
        .M09_AXI_wdata(Conn4_WDATA),
        .M09_AXI_wready(Conn4_WREADY),
        .M09_AXI_wstrb(Conn4_WSTRB),
        .M09_AXI_wvalid(Conn4_WVALID),
        .S00_ACLK(processor_Clk),
        .S00_ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .S00_AXI_araddr(processor_axi_dp_ARADDR),
        .S00_AXI_arprot(processor_axi_dp_ARPROT),
        .S00_AXI_arready(processor_axi_dp_ARREADY),
        .S00_AXI_arvalid(processor_axi_dp_ARVALID),
        .S00_AXI_awaddr(processor_axi_dp_AWADDR),
        .S00_AXI_awprot(processor_axi_dp_AWPROT),
        .S00_AXI_awready(processor_axi_dp_AWREADY),
        .S00_AXI_awvalid(processor_axi_dp_AWVALID),
        .S00_AXI_bready(processor_axi_dp_BREADY),
        .S00_AXI_bresp(processor_axi_dp_BRESP),
        .S00_AXI_bvalid(processor_axi_dp_BVALID),
        .S00_AXI_rdata(processor_axi_dp_RDATA),
        .S00_AXI_rready(processor_axi_dp_RREADY),
        .S00_AXI_rresp(processor_axi_dp_RRESP),
        .S00_AXI_rvalid(processor_axi_dp_RVALID),
        .S00_AXI_wdata(processor_axi_dp_WDATA),
        .S00_AXI_wready(processor_axi_dp_WREADY),
        .S00_AXI_wstrb(processor_axi_dp_WSTRB),
        .S00_AXI_wvalid(processor_axi_dp_WVALID));
  processor_local_memory_imp_MOWWKL processor_local_memory
       (.DLMB_abus(processor_dlmb_1_ABUS),
        .DLMB_addrstrobe(processor_dlmb_1_ADDRSTROBE),
        .DLMB_be(processor_dlmb_1_BE),
        .DLMB_ce(processor_dlmb_1_CE),
        .DLMB_readdbus(processor_dlmb_1_READDBUS),
        .DLMB_readstrobe(processor_dlmb_1_READSTROBE),
        .DLMB_ready(processor_dlmb_1_READY),
        .DLMB_ue(processor_dlmb_1_UE),
        .DLMB_wait(processor_dlmb_1_WAIT),
        .DLMB_writedbus(processor_dlmb_1_WRITEDBUS),
        .DLMB_writestrobe(processor_dlmb_1_WRITESTROBE),
        .ILMB_abus(processor_ilmb_1_ABUS),
        .ILMB_addrstrobe(processor_ilmb_1_ADDRSTROBE),
        .ILMB_ce(processor_ilmb_1_CE),
        .ILMB_readdbus(processor_ilmb_1_READDBUS),
        .ILMB_readstrobe(processor_ilmb_1_READSTROBE),
        .ILMB_ready(processor_ilmb_1_READY),
        .ILMB_ue(processor_ilmb_1_UE),
        .ILMB_wait(processor_ilmb_1_WAIT),
        .LMB_Clk(processor_Clk),
        .SYS_Rst(rst_clk_wiz_1_100M_bus_struct_reset));
  ex_synth_mdm_1_0 processor_mdm
       (.Dbg_Capture_0(processor_debug_CAPTURE),
        .Dbg_Clk_0(processor_debug_CLK),
        .Dbg_Disable_0(processor_debug_DISABLE),
        .Dbg_Reg_En_0(processor_debug_REG_EN),
        .Dbg_Rst_0(processor_debug_RST),
        .Dbg_Shift_0(processor_debug_SHIFT),
        .Dbg_TDI_0(processor_debug_TDI),
        .Dbg_TDO_0(processor_debug_TDO),
        .Dbg_Update_0(processor_debug_UPDATE),
        .Debug_SYS_Rst(mdm_1_debug_sys_rst));
endmodule

module s00_couplers_imp_1OF3FKR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s00_couplers_ARADDR;
  wire [1:0]auto_cc_to_s00_couplers_ARBURST;
  wire [3:0]auto_cc_to_s00_couplers_ARCACHE;
  wire [7:0]auto_cc_to_s00_couplers_ARLEN;
  wire [0:0]auto_cc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire [3:0]auto_cc_to_s00_couplers_ARQOS;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire [2:0]auto_cc_to_s00_couplers_ARSIZE;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [31:0]auto_cc_to_s00_couplers_AWADDR;
  wire [1:0]auto_cc_to_s00_couplers_AWBURST;
  wire [3:0]auto_cc_to_s00_couplers_AWCACHE;
  wire [7:0]auto_cc_to_s00_couplers_AWLEN;
  wire [0:0]auto_cc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire [3:0]auto_cc_to_s00_couplers_AWQOS;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire [2:0]auto_cc_to_s00_couplers_AWSIZE;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [127:0]auto_cc_to_s00_couplers_RDATA;
  wire auto_cc_to_s00_couplers_RLAST;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [127:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WLAST;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [15:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [31:0]auto_us_to_auto_cc_ARADDR;
  wire [1:0]auto_us_to_auto_cc_ARBURST;
  wire [3:0]auto_us_to_auto_cc_ARCACHE;
  wire [7:0]auto_us_to_auto_cc_ARLEN;
  wire [0:0]auto_us_to_auto_cc_ARLOCK;
  wire [2:0]auto_us_to_auto_cc_ARPROT;
  wire [3:0]auto_us_to_auto_cc_ARQOS;
  wire auto_us_to_auto_cc_ARREADY;
  wire [3:0]auto_us_to_auto_cc_ARREGION;
  wire [2:0]auto_us_to_auto_cc_ARSIZE;
  wire auto_us_to_auto_cc_ARVALID;
  wire [31:0]auto_us_to_auto_cc_AWADDR;
  wire [1:0]auto_us_to_auto_cc_AWBURST;
  wire [3:0]auto_us_to_auto_cc_AWCACHE;
  wire [7:0]auto_us_to_auto_cc_AWLEN;
  wire [0:0]auto_us_to_auto_cc_AWLOCK;
  wire [2:0]auto_us_to_auto_cc_AWPROT;
  wire [3:0]auto_us_to_auto_cc_AWQOS;
  wire auto_us_to_auto_cc_AWREADY;
  wire [3:0]auto_us_to_auto_cc_AWREGION;
  wire [2:0]auto_us_to_auto_cc_AWSIZE;
  wire auto_us_to_auto_cc_AWVALID;
  wire auto_us_to_auto_cc_BREADY;
  wire [1:0]auto_us_to_auto_cc_BRESP;
  wire auto_us_to_auto_cc_BVALID;
  wire [127:0]auto_us_to_auto_cc_RDATA;
  wire auto_us_to_auto_cc_RLAST;
  wire auto_us_to_auto_cc_RREADY;
  wire [1:0]auto_us_to_auto_cc_RRESP;
  wire auto_us_to_auto_cc_RVALID;
  wire [127:0]auto_us_to_auto_cc_WDATA;
  wire auto_us_to_auto_cc_WLAST;
  wire auto_us_to_auto_cc_WREADY;
  wire [15:0]auto_us_to_auto_cc_WSTRB;
  wire auto_us_to_auto_cc_WVALID;
  wire [31:0]s00_couplers_to_auto_us_ARADDR;
  wire [1:0]s00_couplers_to_auto_us_ARBURST;
  wire [3:0]s00_couplers_to_auto_us_ARCACHE;
  wire [7:0]s00_couplers_to_auto_us_ARLEN;
  wire s00_couplers_to_auto_us_ARLOCK;
  wire [2:0]s00_couplers_to_auto_us_ARPROT;
  wire [3:0]s00_couplers_to_auto_us_ARQOS;
  wire s00_couplers_to_auto_us_ARREADY;
  wire [2:0]s00_couplers_to_auto_us_ARSIZE;
  wire s00_couplers_to_auto_us_ARVALID;
  wire [31:0]s00_couplers_to_auto_us_AWADDR;
  wire [1:0]s00_couplers_to_auto_us_AWBURST;
  wire [3:0]s00_couplers_to_auto_us_AWCACHE;
  wire [7:0]s00_couplers_to_auto_us_AWLEN;
  wire s00_couplers_to_auto_us_AWLOCK;
  wire [2:0]s00_couplers_to_auto_us_AWPROT;
  wire [3:0]s00_couplers_to_auto_us_AWQOS;
  wire s00_couplers_to_auto_us_AWREADY;
  wire [2:0]s00_couplers_to_auto_us_AWSIZE;
  wire s00_couplers_to_auto_us_AWVALID;
  wire s00_couplers_to_auto_us_BREADY;
  wire [1:0]s00_couplers_to_auto_us_BRESP;
  wire s00_couplers_to_auto_us_BVALID;
  wire [31:0]s00_couplers_to_auto_us_RDATA;
  wire s00_couplers_to_auto_us_RLAST;
  wire s00_couplers_to_auto_us_RREADY;
  wire [1:0]s00_couplers_to_auto_us_RRESP;
  wire s00_couplers_to_auto_us_RVALID;
  wire [31:0]s00_couplers_to_auto_us_WDATA;
  wire s00_couplers_to_auto_us_WLAST;
  wire s00_couplers_to_auto_us_WREADY;
  wire [3:0]s00_couplers_to_auto_us_WSTRB;
  wire s00_couplers_to_auto_us_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_cc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_cc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_us_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_us_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_us_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_us_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[127:0];
  assign auto_cc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_us_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_us_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_us_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_us_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_us_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_us_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_us_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_us_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  ex_synth_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_cc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_cc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_cc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_us_to_auto_cc_ARADDR),
        .s_axi_arburst(auto_us_to_auto_cc_ARBURST),
        .s_axi_arcache(auto_us_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(auto_us_to_auto_cc_ARLEN),
        .s_axi_arlock(auto_us_to_auto_cc_ARLOCK),
        .s_axi_arprot(auto_us_to_auto_cc_ARPROT),
        .s_axi_arqos(auto_us_to_auto_cc_ARQOS),
        .s_axi_arready(auto_us_to_auto_cc_ARREADY),
        .s_axi_arregion(auto_us_to_auto_cc_ARREGION),
        .s_axi_arsize(auto_us_to_auto_cc_ARSIZE),
        .s_axi_arvalid(auto_us_to_auto_cc_ARVALID),
        .s_axi_awaddr(auto_us_to_auto_cc_AWADDR),
        .s_axi_awburst(auto_us_to_auto_cc_AWBURST),
        .s_axi_awcache(auto_us_to_auto_cc_AWCACHE),
        .s_axi_awlen(auto_us_to_auto_cc_AWLEN),
        .s_axi_awlock(auto_us_to_auto_cc_AWLOCK),
        .s_axi_awprot(auto_us_to_auto_cc_AWPROT),
        .s_axi_awqos(auto_us_to_auto_cc_AWQOS),
        .s_axi_awready(auto_us_to_auto_cc_AWREADY),
        .s_axi_awregion(auto_us_to_auto_cc_AWREGION),
        .s_axi_awsize(auto_us_to_auto_cc_AWSIZE),
        .s_axi_awvalid(auto_us_to_auto_cc_AWVALID),
        .s_axi_bready(auto_us_to_auto_cc_BREADY),
        .s_axi_bresp(auto_us_to_auto_cc_BRESP),
        .s_axi_bvalid(auto_us_to_auto_cc_BVALID),
        .s_axi_rdata(auto_us_to_auto_cc_RDATA),
        .s_axi_rlast(auto_us_to_auto_cc_RLAST),
        .s_axi_rready(auto_us_to_auto_cc_RREADY),
        .s_axi_rresp(auto_us_to_auto_cc_RRESP),
        .s_axi_rvalid(auto_us_to_auto_cc_RVALID),
        .s_axi_wdata(auto_us_to_auto_cc_WDATA),
        .s_axi_wlast(auto_us_to_auto_cc_WLAST),
        .s_axi_wready(auto_us_to_auto_cc_WREADY),
        .s_axi_wstrb(auto_us_to_auto_cc_WSTRB),
        .s_axi_wvalid(auto_us_to_auto_cc_WVALID));
  ex_synth_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_auto_cc_ARADDR),
        .m_axi_arburst(auto_us_to_auto_cc_ARBURST),
        .m_axi_arcache(auto_us_to_auto_cc_ARCACHE),
        .m_axi_arlen(auto_us_to_auto_cc_ARLEN),
        .m_axi_arlock(auto_us_to_auto_cc_ARLOCK),
        .m_axi_arprot(auto_us_to_auto_cc_ARPROT),
        .m_axi_arqos(auto_us_to_auto_cc_ARQOS),
        .m_axi_arready(auto_us_to_auto_cc_ARREADY),
        .m_axi_arregion(auto_us_to_auto_cc_ARREGION),
        .m_axi_arsize(auto_us_to_auto_cc_ARSIZE),
        .m_axi_arvalid(auto_us_to_auto_cc_ARVALID),
        .m_axi_awaddr(auto_us_to_auto_cc_AWADDR),
        .m_axi_awburst(auto_us_to_auto_cc_AWBURST),
        .m_axi_awcache(auto_us_to_auto_cc_AWCACHE),
        .m_axi_awlen(auto_us_to_auto_cc_AWLEN),
        .m_axi_awlock(auto_us_to_auto_cc_AWLOCK),
        .m_axi_awprot(auto_us_to_auto_cc_AWPROT),
        .m_axi_awqos(auto_us_to_auto_cc_AWQOS),
        .m_axi_awready(auto_us_to_auto_cc_AWREADY),
        .m_axi_awregion(auto_us_to_auto_cc_AWREGION),
        .m_axi_awsize(auto_us_to_auto_cc_AWSIZE),
        .m_axi_awvalid(auto_us_to_auto_cc_AWVALID),
        .m_axi_bready(auto_us_to_auto_cc_BREADY),
        .m_axi_bresp(auto_us_to_auto_cc_BRESP),
        .m_axi_bvalid(auto_us_to_auto_cc_BVALID),
        .m_axi_rdata(auto_us_to_auto_cc_RDATA),
        .m_axi_rlast(auto_us_to_auto_cc_RLAST),
        .m_axi_rready(auto_us_to_auto_cc_RREADY),
        .m_axi_rresp(auto_us_to_auto_cc_RRESP),
        .m_axi_rvalid(auto_us_to_auto_cc_RVALID),
        .m_axi_wdata(auto_us_to_auto_cc_WDATA),
        .m_axi_wlast(auto_us_to_auto_cc_WLAST),
        .m_axi_wready(auto_us_to_auto_cc_WREADY),
        .m_axi_wstrb(auto_us_to_auto_cc_WSTRB),
        .m_axi_wvalid(auto_us_to_auto_cc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_us_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_us_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_us_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_us_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_us_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_us_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_us_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_us_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_us_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_us_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_us_RLAST),
        .s_axi_rready(s00_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_us_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_us_WLAST),
        .s_axi_wready(s00_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_us_WVALID));
endmodule

module s00_couplers_imp_WJDP8Q
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s01_couplers_imp_F55TOA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s01_couplers_ARADDR;
  wire [1:0]auto_cc_to_s01_couplers_ARBURST;
  wire [3:0]auto_cc_to_s01_couplers_ARCACHE;
  wire [7:0]auto_cc_to_s01_couplers_ARLEN;
  wire [0:0]auto_cc_to_s01_couplers_ARLOCK;
  wire [2:0]auto_cc_to_s01_couplers_ARPROT;
  wire [3:0]auto_cc_to_s01_couplers_ARQOS;
  wire auto_cc_to_s01_couplers_ARREADY;
  wire [2:0]auto_cc_to_s01_couplers_ARSIZE;
  wire auto_cc_to_s01_couplers_ARVALID;
  wire [127:0]auto_cc_to_s01_couplers_RDATA;
  wire auto_cc_to_s01_couplers_RLAST;
  wire auto_cc_to_s01_couplers_RREADY;
  wire [1:0]auto_cc_to_s01_couplers_RRESP;
  wire auto_cc_to_s01_couplers_RVALID;
  wire [31:0]auto_us_to_auto_cc_ARADDR;
  wire [1:0]auto_us_to_auto_cc_ARBURST;
  wire [3:0]auto_us_to_auto_cc_ARCACHE;
  wire [7:0]auto_us_to_auto_cc_ARLEN;
  wire [0:0]auto_us_to_auto_cc_ARLOCK;
  wire [2:0]auto_us_to_auto_cc_ARPROT;
  wire [3:0]auto_us_to_auto_cc_ARQOS;
  wire auto_us_to_auto_cc_ARREADY;
  wire [3:0]auto_us_to_auto_cc_ARREGION;
  wire [2:0]auto_us_to_auto_cc_ARSIZE;
  wire auto_us_to_auto_cc_ARVALID;
  wire [127:0]auto_us_to_auto_cc_RDATA;
  wire auto_us_to_auto_cc_RLAST;
  wire auto_us_to_auto_cc_RREADY;
  wire [1:0]auto_us_to_auto_cc_RRESP;
  wire auto_us_to_auto_cc_RVALID;
  wire [31:0]s01_couplers_to_auto_us_ARADDR;
  wire [1:0]s01_couplers_to_auto_us_ARBURST;
  wire [3:0]s01_couplers_to_auto_us_ARCACHE;
  wire [7:0]s01_couplers_to_auto_us_ARLEN;
  wire s01_couplers_to_auto_us_ARLOCK;
  wire [2:0]s01_couplers_to_auto_us_ARPROT;
  wire [3:0]s01_couplers_to_auto_us_ARQOS;
  wire s01_couplers_to_auto_us_ARREADY;
  wire [2:0]s01_couplers_to_auto_us_ARSIZE;
  wire s01_couplers_to_auto_us_ARVALID;
  wire [31:0]s01_couplers_to_auto_us_RDATA;
  wire s01_couplers_to_auto_us_RLAST;
  wire s01_couplers_to_auto_us_RREADY;
  wire [1:0]s01_couplers_to_auto_us_RRESP;
  wire s01_couplers_to_auto_us_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_cc_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_s01_couplers_ARVALID;
  assign M_AXI_rready = auto_cc_to_s01_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_us_ARREADY;
  assign S_AXI_rdata[31:0] = s01_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s01_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_us_RVALID;
  assign auto_cc_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s01_couplers_RDATA = M_AXI_rdata[127:0];
  assign auto_cc_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_us_ARLOCK = S_AXI_arlock;
  assign s01_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_us_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_us_RREADY = S_AXI_rready;
  ex_synth_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_s01_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_cc_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_s01_couplers_ARVALID),
        .m_axi_rdata(auto_cc_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_cc_to_s01_couplers_RLAST),
        .m_axi_rready(auto_cc_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s01_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_us_to_auto_cc_ARADDR),
        .s_axi_arburst(auto_us_to_auto_cc_ARBURST),
        .s_axi_arcache(auto_us_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(auto_us_to_auto_cc_ARLEN),
        .s_axi_arlock(auto_us_to_auto_cc_ARLOCK),
        .s_axi_arprot(auto_us_to_auto_cc_ARPROT),
        .s_axi_arqos(auto_us_to_auto_cc_ARQOS),
        .s_axi_arready(auto_us_to_auto_cc_ARREADY),
        .s_axi_arregion(auto_us_to_auto_cc_ARREGION),
        .s_axi_arsize(auto_us_to_auto_cc_ARSIZE),
        .s_axi_arvalid(auto_us_to_auto_cc_ARVALID),
        .s_axi_rdata(auto_us_to_auto_cc_RDATA),
        .s_axi_rlast(auto_us_to_auto_cc_RLAST),
        .s_axi_rready(auto_us_to_auto_cc_RREADY),
        .s_axi_rresp(auto_us_to_auto_cc_RRESP),
        .s_axi_rvalid(auto_us_to_auto_cc_RVALID));
  ex_synth_auto_us_1 auto_us
       (.m_axi_araddr(auto_us_to_auto_cc_ARADDR),
        .m_axi_arburst(auto_us_to_auto_cc_ARBURST),
        .m_axi_arcache(auto_us_to_auto_cc_ARCACHE),
        .m_axi_arlen(auto_us_to_auto_cc_ARLEN),
        .m_axi_arlock(auto_us_to_auto_cc_ARLOCK),
        .m_axi_arprot(auto_us_to_auto_cc_ARPROT),
        .m_axi_arqos(auto_us_to_auto_cc_ARQOS),
        .m_axi_arready(auto_us_to_auto_cc_ARREADY),
        .m_axi_arregion(auto_us_to_auto_cc_ARREGION),
        .m_axi_arsize(auto_us_to_auto_cc_ARSIZE),
        .m_axi_arvalid(auto_us_to_auto_cc_ARVALID),
        .m_axi_rdata(auto_us_to_auto_cc_RDATA),
        .m_axi_rlast(auto_us_to_auto_cc_RLAST),
        .m_axi_rready(auto_us_to_auto_cc_RREADY),
        .m_axi_rresp(auto_us_to_auto_cc_RRESP),
        .m_axi_rvalid(auto_us_to_auto_cc_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s01_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(s01_couplers_to_auto_us_ARLOCK),
        .s_axi_arprot(s01_couplers_to_auto_us_ARPROT),
        .s_axi_arqos(s01_couplers_to_auto_us_ARQOS),
        .s_axi_arready(s01_couplers_to_auto_us_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_us_ARVALID),
        .s_axi_rdata(s01_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s01_couplers_to_auto_us_RLAST),
        .s_axi_rready(s01_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_us_RVALID));
endmodule

module s02_couplers_imp_1P2CHSO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s02_couplers_ARADDR;
  wire [1:0]auto_cc_to_s02_couplers_ARBURST;
  wire [3:0]auto_cc_to_s02_couplers_ARCACHE;
  wire [7:0]auto_cc_to_s02_couplers_ARLEN;
  wire [0:0]auto_cc_to_s02_couplers_ARLOCK;
  wire [2:0]auto_cc_to_s02_couplers_ARPROT;
  wire [3:0]auto_cc_to_s02_couplers_ARQOS;
  wire auto_cc_to_s02_couplers_ARREADY;
  wire [2:0]auto_cc_to_s02_couplers_ARSIZE;
  wire auto_cc_to_s02_couplers_ARVALID;
  wire [31:0]auto_cc_to_s02_couplers_AWADDR;
  wire [1:0]auto_cc_to_s02_couplers_AWBURST;
  wire [3:0]auto_cc_to_s02_couplers_AWCACHE;
  wire [7:0]auto_cc_to_s02_couplers_AWLEN;
  wire [0:0]auto_cc_to_s02_couplers_AWLOCK;
  wire [2:0]auto_cc_to_s02_couplers_AWPROT;
  wire [3:0]auto_cc_to_s02_couplers_AWQOS;
  wire auto_cc_to_s02_couplers_AWREADY;
  wire [2:0]auto_cc_to_s02_couplers_AWSIZE;
  wire auto_cc_to_s02_couplers_AWVALID;
  wire auto_cc_to_s02_couplers_BREADY;
  wire [1:0]auto_cc_to_s02_couplers_BRESP;
  wire auto_cc_to_s02_couplers_BVALID;
  wire [127:0]auto_cc_to_s02_couplers_RDATA;
  wire auto_cc_to_s02_couplers_RLAST;
  wire auto_cc_to_s02_couplers_RREADY;
  wire [1:0]auto_cc_to_s02_couplers_RRESP;
  wire auto_cc_to_s02_couplers_RVALID;
  wire [127:0]auto_cc_to_s02_couplers_WDATA;
  wire auto_cc_to_s02_couplers_WLAST;
  wire auto_cc_to_s02_couplers_WREADY;
  wire [15:0]auto_cc_to_s02_couplers_WSTRB;
  wire auto_cc_to_s02_couplers_WVALID;
  wire [31:0]auto_us_to_auto_cc_ARADDR;
  wire [1:0]auto_us_to_auto_cc_ARBURST;
  wire [3:0]auto_us_to_auto_cc_ARCACHE;
  wire [7:0]auto_us_to_auto_cc_ARLEN;
  wire [0:0]auto_us_to_auto_cc_ARLOCK;
  wire [2:0]auto_us_to_auto_cc_ARPROT;
  wire [3:0]auto_us_to_auto_cc_ARQOS;
  wire auto_us_to_auto_cc_ARREADY;
  wire [3:0]auto_us_to_auto_cc_ARREGION;
  wire [2:0]auto_us_to_auto_cc_ARSIZE;
  wire auto_us_to_auto_cc_ARVALID;
  wire [31:0]auto_us_to_auto_cc_AWADDR;
  wire [1:0]auto_us_to_auto_cc_AWBURST;
  wire [3:0]auto_us_to_auto_cc_AWCACHE;
  wire [7:0]auto_us_to_auto_cc_AWLEN;
  wire [0:0]auto_us_to_auto_cc_AWLOCK;
  wire [2:0]auto_us_to_auto_cc_AWPROT;
  wire [3:0]auto_us_to_auto_cc_AWQOS;
  wire auto_us_to_auto_cc_AWREADY;
  wire [3:0]auto_us_to_auto_cc_AWREGION;
  wire [2:0]auto_us_to_auto_cc_AWSIZE;
  wire auto_us_to_auto_cc_AWVALID;
  wire auto_us_to_auto_cc_BREADY;
  wire [1:0]auto_us_to_auto_cc_BRESP;
  wire auto_us_to_auto_cc_BVALID;
  wire [127:0]auto_us_to_auto_cc_RDATA;
  wire auto_us_to_auto_cc_RLAST;
  wire auto_us_to_auto_cc_RREADY;
  wire [1:0]auto_us_to_auto_cc_RRESP;
  wire auto_us_to_auto_cc_RVALID;
  wire [127:0]auto_us_to_auto_cc_WDATA;
  wire auto_us_to_auto_cc_WLAST;
  wire auto_us_to_auto_cc_WREADY;
  wire [15:0]auto_us_to_auto_cc_WSTRB;
  wire auto_us_to_auto_cc_WVALID;
  wire [31:0]s02_couplers_to_auto_us_ARADDR;
  wire [1:0]s02_couplers_to_auto_us_ARBURST;
  wire [3:0]s02_couplers_to_auto_us_ARCACHE;
  wire [7:0]s02_couplers_to_auto_us_ARLEN;
  wire [1:0]s02_couplers_to_auto_us_ARLOCK;
  wire [2:0]s02_couplers_to_auto_us_ARPROT;
  wire [3:0]s02_couplers_to_auto_us_ARQOS;
  wire s02_couplers_to_auto_us_ARREADY;
  wire [3:0]s02_couplers_to_auto_us_ARREGION;
  wire [2:0]s02_couplers_to_auto_us_ARSIZE;
  wire s02_couplers_to_auto_us_ARVALID;
  wire [31:0]s02_couplers_to_auto_us_AWADDR;
  wire [1:0]s02_couplers_to_auto_us_AWBURST;
  wire [3:0]s02_couplers_to_auto_us_AWCACHE;
  wire [7:0]s02_couplers_to_auto_us_AWLEN;
  wire [1:0]s02_couplers_to_auto_us_AWLOCK;
  wire [2:0]s02_couplers_to_auto_us_AWPROT;
  wire [3:0]s02_couplers_to_auto_us_AWQOS;
  wire s02_couplers_to_auto_us_AWREADY;
  wire [3:0]s02_couplers_to_auto_us_AWREGION;
  wire [2:0]s02_couplers_to_auto_us_AWSIZE;
  wire s02_couplers_to_auto_us_AWVALID;
  wire s02_couplers_to_auto_us_BREADY;
  wire [1:0]s02_couplers_to_auto_us_BRESP;
  wire s02_couplers_to_auto_us_BVALID;
  wire [63:0]s02_couplers_to_auto_us_RDATA;
  wire s02_couplers_to_auto_us_RLAST;
  wire s02_couplers_to_auto_us_RREADY;
  wire [1:0]s02_couplers_to_auto_us_RRESP;
  wire s02_couplers_to_auto_us_RVALID;
  wire [63:0]s02_couplers_to_auto_us_WDATA;
  wire s02_couplers_to_auto_us_WLAST;
  wire s02_couplers_to_auto_us_WREADY;
  wire [7:0]s02_couplers_to_auto_us_WSTRB;
  wire s02_couplers_to_auto_us_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_s02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_cc_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_s02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_cc_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_cc_to_s02_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s02_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s02_couplers_RREADY;
  assign M_AXI_wdata[127:0] = auto_cc_to_s02_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = auto_cc_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s02_couplers_to_auto_us_ARREADY;
  assign S_AXI_awready = s02_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s02_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_auto_us_BVALID;
  assign S_AXI_rdata[63:0] = s02_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s02_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_auto_us_RVALID;
  assign S_AXI_wready = s02_couplers_to_auto_us_WREADY;
  assign auto_cc_to_s02_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s02_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s02_couplers_RDATA = M_AXI_rdata[127:0];
  assign auto_cc_to_s02_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s02_couplers_WREADY = M_AXI_wready;
  assign s02_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s02_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_auto_us_ARLOCK = S_AXI_arlock[1:0];
  assign s02_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_auto_us_ARQOS = S_AXI_arqos[3:0];
  assign s02_couplers_to_auto_us_ARREGION = S_AXI_arregion[3:0];
  assign s02_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_auto_us_AWADDR = S_AXI_awaddr[31:0];
  assign s02_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_auto_us_AWLOCK = S_AXI_awlock[1:0];
  assign s02_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_auto_us_AWQOS = S_AXI_awqos[3:0];
  assign s02_couplers_to_auto_us_AWREGION = S_AXI_awregion[3:0];
  assign s02_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s02_couplers_to_auto_us_RREADY = S_AXI_rready;
  assign s02_couplers_to_auto_us_WDATA = S_AXI_wdata[63:0];
  assign s02_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s02_couplers_to_auto_us_WSTRB = S_AXI_wstrb[7:0];
  assign s02_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  ex_synth_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s02_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_s02_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_s02_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_cc_to_s02_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_s02_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_s02_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_s02_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_s02_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_s02_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_s02_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s02_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_s02_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_s02_couplers_AWCACHE),
        .m_axi_awlen(auto_cc_to_s02_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_s02_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_s02_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_s02_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_s02_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_s02_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_s02_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s02_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s02_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s02_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s02_couplers_RDATA),
        .m_axi_rlast(auto_cc_to_s02_couplers_RLAST),
        .m_axi_rready(auto_cc_to_s02_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s02_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s02_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s02_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_s02_couplers_WLAST),
        .m_axi_wready(auto_cc_to_s02_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s02_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_us_to_auto_cc_ARADDR),
        .s_axi_arburst(auto_us_to_auto_cc_ARBURST),
        .s_axi_arcache(auto_us_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(auto_us_to_auto_cc_ARLEN),
        .s_axi_arlock(auto_us_to_auto_cc_ARLOCK),
        .s_axi_arprot(auto_us_to_auto_cc_ARPROT),
        .s_axi_arqos(auto_us_to_auto_cc_ARQOS),
        .s_axi_arready(auto_us_to_auto_cc_ARREADY),
        .s_axi_arregion(auto_us_to_auto_cc_ARREGION),
        .s_axi_arsize(auto_us_to_auto_cc_ARSIZE),
        .s_axi_arvalid(auto_us_to_auto_cc_ARVALID),
        .s_axi_awaddr(auto_us_to_auto_cc_AWADDR),
        .s_axi_awburst(auto_us_to_auto_cc_AWBURST),
        .s_axi_awcache(auto_us_to_auto_cc_AWCACHE),
        .s_axi_awlen(auto_us_to_auto_cc_AWLEN),
        .s_axi_awlock(auto_us_to_auto_cc_AWLOCK),
        .s_axi_awprot(auto_us_to_auto_cc_AWPROT),
        .s_axi_awqos(auto_us_to_auto_cc_AWQOS),
        .s_axi_awready(auto_us_to_auto_cc_AWREADY),
        .s_axi_awregion(auto_us_to_auto_cc_AWREGION),
        .s_axi_awsize(auto_us_to_auto_cc_AWSIZE),
        .s_axi_awvalid(auto_us_to_auto_cc_AWVALID),
        .s_axi_bready(auto_us_to_auto_cc_BREADY),
        .s_axi_bresp(auto_us_to_auto_cc_BRESP),
        .s_axi_bvalid(auto_us_to_auto_cc_BVALID),
        .s_axi_rdata(auto_us_to_auto_cc_RDATA),
        .s_axi_rlast(auto_us_to_auto_cc_RLAST),
        .s_axi_rready(auto_us_to_auto_cc_RREADY),
        .s_axi_rresp(auto_us_to_auto_cc_RRESP),
        .s_axi_rvalid(auto_us_to_auto_cc_RVALID),
        .s_axi_wdata(auto_us_to_auto_cc_WDATA),
        .s_axi_wlast(auto_us_to_auto_cc_WLAST),
        .s_axi_wready(auto_us_to_auto_cc_WREADY),
        .s_axi_wstrb(auto_us_to_auto_cc_WSTRB),
        .s_axi_wvalid(auto_us_to_auto_cc_WVALID));
  ex_synth_auto_us_2 auto_us
       (.m_axi_araddr(auto_us_to_auto_cc_ARADDR),
        .m_axi_arburst(auto_us_to_auto_cc_ARBURST),
        .m_axi_arcache(auto_us_to_auto_cc_ARCACHE),
        .m_axi_arlen(auto_us_to_auto_cc_ARLEN),
        .m_axi_arlock(auto_us_to_auto_cc_ARLOCK),
        .m_axi_arprot(auto_us_to_auto_cc_ARPROT),
        .m_axi_arqos(auto_us_to_auto_cc_ARQOS),
        .m_axi_arready(auto_us_to_auto_cc_ARREADY),
        .m_axi_arregion(auto_us_to_auto_cc_ARREGION),
        .m_axi_arsize(auto_us_to_auto_cc_ARSIZE),
        .m_axi_arvalid(auto_us_to_auto_cc_ARVALID),
        .m_axi_awaddr(auto_us_to_auto_cc_AWADDR),
        .m_axi_awburst(auto_us_to_auto_cc_AWBURST),
        .m_axi_awcache(auto_us_to_auto_cc_AWCACHE),
        .m_axi_awlen(auto_us_to_auto_cc_AWLEN),
        .m_axi_awlock(auto_us_to_auto_cc_AWLOCK),
        .m_axi_awprot(auto_us_to_auto_cc_AWPROT),
        .m_axi_awqos(auto_us_to_auto_cc_AWQOS),
        .m_axi_awready(auto_us_to_auto_cc_AWREADY),
        .m_axi_awregion(auto_us_to_auto_cc_AWREGION),
        .m_axi_awsize(auto_us_to_auto_cc_AWSIZE),
        .m_axi_awvalid(auto_us_to_auto_cc_AWVALID),
        .m_axi_bready(auto_us_to_auto_cc_BREADY),
        .m_axi_bresp(auto_us_to_auto_cc_BRESP),
        .m_axi_bvalid(auto_us_to_auto_cc_BVALID),
        .m_axi_rdata(auto_us_to_auto_cc_RDATA),
        .m_axi_rlast(auto_us_to_auto_cc_RLAST),
        .m_axi_rready(auto_us_to_auto_cc_RREADY),
        .m_axi_rresp(auto_us_to_auto_cc_RRESP),
        .m_axi_rvalid(auto_us_to_auto_cc_RVALID),
        .m_axi_wdata(auto_us_to_auto_cc_WDATA),
        .m_axi_wlast(auto_us_to_auto_cc_WLAST),
        .m_axi_wready(auto_us_to_auto_cc_WREADY),
        .m_axi_wstrb(auto_us_to_auto_cc_WSTRB),
        .m_axi_wvalid(auto_us_to_auto_cc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s02_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s02_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s02_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s02_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(s02_couplers_to_auto_us_ARLOCK[0]),
        .s_axi_arprot(s02_couplers_to_auto_us_ARPROT),
        .s_axi_arqos(s02_couplers_to_auto_us_ARQOS),
        .s_axi_arready(s02_couplers_to_auto_us_ARREADY),
        .s_axi_arregion(s02_couplers_to_auto_us_ARREGION),
        .s_axi_arsize(s02_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s02_couplers_to_auto_us_ARVALID),
        .s_axi_awaddr(s02_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s02_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s02_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s02_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(s02_couplers_to_auto_us_AWLOCK[0]),
        .s_axi_awprot(s02_couplers_to_auto_us_AWPROT),
        .s_axi_awqos(s02_couplers_to_auto_us_AWQOS),
        .s_axi_awready(s02_couplers_to_auto_us_AWREADY),
        .s_axi_awregion(s02_couplers_to_auto_us_AWREGION),
        .s_axi_awsize(s02_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s02_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s02_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s02_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s02_couplers_to_auto_us_BVALID),
        .s_axi_rdata(s02_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s02_couplers_to_auto_us_RLAST),
        .s_axi_rready(s02_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s02_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s02_couplers_to_auto_us_RVALID),
        .s_axi_wdata(s02_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s02_couplers_to_auto_us_WLAST),
        .s_axi_wready(s02_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s02_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s02_couplers_to_auto_us_WVALID));
endmodule
