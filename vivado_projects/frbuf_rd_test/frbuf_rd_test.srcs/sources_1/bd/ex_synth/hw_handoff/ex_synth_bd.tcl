
################################################################
# This is a generated script based on design: ex_synth
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source ex_synth_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35ticsg324-1L
   set_property BOARD_PART digilentinc.com:arty-a7-35:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name ex_synth

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}


##################################################################
# MIG PRJ FILE TCL PROCs
##################################################################

proc write_mig_file_ex_synth_mig_0 { str_mig_prj_filepath } {

   file mkdir [ file dirname "$str_mig_prj_filepath" ]
   set mig_prj_file [open $str_mig_prj_filepath  w+]

   puts $mig_prj_file {<?xml version='1.0' encoding='UTF-8'?>}
   puts $mig_prj_file {<!-- IMPORTANT: This is an internal file that has been generated by the MIG software. Any direct editing or changes made to this file may result in unpredictable behavior or data corruption. It is strongly advised that users do not edit the contents of this file. Re-run the MIG GUI with the required settings if any of the options provided below need to be altered. -->}
   puts $mig_prj_file {<Project NoOfControllers="1" >}
   puts $mig_prj_file {    <ModuleName>design_1_mig_7series_0_0</ModuleName>}
   puts $mig_prj_file {    <dci_inouts_inputs>1</dci_inouts_inputs>}
   puts $mig_prj_file {    <dci_inputs>1</dci_inputs>}
   puts $mig_prj_file {    <Debug_En>OFF</Debug_En>}
   puts $mig_prj_file {    <DataDepth_En>1024</DataDepth_En>}
   puts $mig_prj_file {    <LowPower_En>ON</LowPower_En>}
   puts $mig_prj_file {    <XADC_En>Enabled</XADC_En>}
   puts $mig_prj_file {    <TargetFPGA>xc7a35ti-csg324/-1L</TargetFPGA>}
   puts $mig_prj_file {    <Version>2.3</Version>}
   puts $mig_prj_file {    <SystemClock>No Buffer</SystemClock>}
   puts $mig_prj_file {    <ReferenceClock>No Buffer</ReferenceClock>}
   puts $mig_prj_file {    <SysResetPolarity>ACTIVE LOW</SysResetPolarity>}
   puts $mig_prj_file {    <BankSelectionFlag>FALSE</BankSelectionFlag>}
   puts $mig_prj_file {    <InternalVref>1</InternalVref>}
   puts $mig_prj_file {    <dci_hr_inouts_inputs>50 Ohms</dci_hr_inouts_inputs>}
   puts $mig_prj_file {    <dci_cascade>0</dci_cascade>}
   puts $mig_prj_file {    <Controller number="0" >}
   puts $mig_prj_file {        <MemoryDevice>DDR3_SDRAM/Components/MT41K128M16XX-15E</MemoryDevice>}
   puts $mig_prj_file {        <TimePeriod>3000</TimePeriod>}
   puts $mig_prj_file {        <VccAuxIO>1.8V</VccAuxIO>}
   puts $mig_prj_file {        <PHYRatio>4:1</PHYRatio>}
   puts $mig_prj_file {        <InputClkFreq>166.666</InputClkFreq>}
   puts $mig_prj_file {        <UIExtraClocks>0</UIExtraClocks>}
   puts $mig_prj_file {        <MMCM_VCO>666</MMCM_VCO>}
   puts $mig_prj_file {        <MMCMClkOut0> 1.000</MMCMClkOut0>}
   puts $mig_prj_file {        <MMCMClkOut1>1</MMCMClkOut1>}
   puts $mig_prj_file {        <MMCMClkOut2>1</MMCMClkOut2>}
   puts $mig_prj_file {        <MMCMClkOut3>1</MMCMClkOut3>}
   puts $mig_prj_file {        <MMCMClkOut4>1</MMCMClkOut4>}
   puts $mig_prj_file {        <DataWidth>16</DataWidth>}
   puts $mig_prj_file {        <DeepMemory>1</DeepMemory>}
   puts $mig_prj_file {        <DataMask>1</DataMask>}
   puts $mig_prj_file {        <ECC>Disabled</ECC>}
   puts $mig_prj_file {        <Ordering>Normal</Ordering>}
   puts $mig_prj_file {        <CustomPart>FALSE</CustomPart>}
   puts $mig_prj_file {        <NewPartName></NewPartName>}
   puts $mig_prj_file {        <RowAddress>14</RowAddress>}
   puts $mig_prj_file {        <ColAddress>10</ColAddress>}
   puts $mig_prj_file {        <BankAddress>3</BankAddress>}
   puts $mig_prj_file {        <MemoryVoltage>1.35V</MemoryVoltage>}
   puts $mig_prj_file {        <C0_MEM_SIZE>268435456</C0_MEM_SIZE>}
   puts $mig_prj_file {        <UserMemoryAddressMap>BANK_ROW_COLUMN</UserMemoryAddressMap>}
   puts $mig_prj_file {        <PinSelection>}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="R2" SLEW="" name="ddr3_addr[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="R6" SLEW="" name="ddr3_addr[10]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="U6" SLEW="" name="ddr3_addr[11]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="T6" SLEW="" name="ddr3_addr[12]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="T8" SLEW="" name="ddr3_addr[13]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="M6" SLEW="" name="ddr3_addr[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="N4" SLEW="" name="ddr3_addr[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="T1" SLEW="" name="ddr3_addr[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="N6" SLEW="" name="ddr3_addr[4]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="R7" SLEW="" name="ddr3_addr[5]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="V6" SLEW="" name="ddr3_addr[6]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="U7" SLEW="" name="ddr3_addr[7]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="R8" SLEW="" name="ddr3_addr[8]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="V7" SLEW="" name="ddr3_addr[9]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="R1" SLEW="" name="ddr3_ba[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="P4" SLEW="" name="ddr3_ba[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="P2" SLEW="" name="ddr3_ba[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="M4" SLEW="" name="ddr3_cas_n" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL135" PADName="V9" SLEW="" name="ddr3_ck_n[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL135" PADName="U9" SLEW="" name="ddr3_ck_p[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="N5" SLEW="" name="ddr3_cke[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="U8" SLEW="" name="ddr3_cs_n[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="L1" SLEW="" name="ddr3_dm[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="U1" SLEW="" name="ddr3_dm[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="K5" SLEW="" name="ddr3_dq[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="U4" SLEW="" name="ddr3_dq[10]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="V5" SLEW="" name="ddr3_dq[11]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="V1" SLEW="" name="ddr3_dq[12]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="T3" SLEW="" name="ddr3_dq[13]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="U3" SLEW="" name="ddr3_dq[14]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="R3" SLEW="" name="ddr3_dq[15]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="L3" SLEW="" name="ddr3_dq[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="K3" SLEW="" name="ddr3_dq[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="L6" SLEW="" name="ddr3_dq[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="M3" SLEW="" name="ddr3_dq[4]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="M1" SLEW="" name="ddr3_dq[5]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="L4" SLEW="" name="ddr3_dq[6]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="M2" SLEW="" name="ddr3_dq[7]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="V4" SLEW="" name="ddr3_dq[8]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="T5" SLEW="" name="ddr3_dq[9]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL135" PADName="N1" SLEW="" name="ddr3_dqs_n[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL135" PADName="V2" SLEW="" name="ddr3_dqs_n[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL135" PADName="N2" SLEW="" name="ddr3_dqs_p[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL135" PADName="U2" SLEW="" name="ddr3_dqs_p[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="R5" SLEW="" name="ddr3_odt[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="P3" SLEW="" name="ddr3_ras_n" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="K6" SLEW="" name="ddr3_reset_n" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL135" PADName="P5" SLEW="" name="ddr3_we_n" IN_TERM="" />}
   puts $mig_prj_file {        </PinSelection>}
   puts $mig_prj_file {        <System_Control>}
   puts $mig_prj_file {            <Pin PADName="No connect" Bank="Select Bank" name="sys_rst" />}
   puts $mig_prj_file {            <Pin PADName="No connect" Bank="Select Bank" name="init_calib_complete" />}
   puts $mig_prj_file {            <Pin PADName="No connect" Bank="Select Bank" name="tg_compare_error" />}
   puts $mig_prj_file {        </System_Control>}
   puts $mig_prj_file {        <TimingParameters>}
   puts $mig_prj_file {            <Parameters twtr="7.5" trrd="7.5" trefi="7.8" tfaw="45" trtp="7.5" tcke="5.625" trfc="160" trp="13.5" tras="36" trcd="13.5" />}
   puts $mig_prj_file {        </TimingParameters>}
   puts $mig_prj_file {        <mrBurstLength name="Burst Length" >8 - Fixed</mrBurstLength>}
   puts $mig_prj_file {        <mrBurstType name="Read Burst Type and Length" >Sequential</mrBurstType>}
   puts $mig_prj_file {        <mrCasLatency name="CAS Latency" >5</mrCasLatency>}
   puts $mig_prj_file {        <mrMode name="Mode" >Normal</mrMode>}
   puts $mig_prj_file {        <mrDllReset name="DLL Reset" >No</mrDllReset>}
   puts $mig_prj_file {        <mrPdMode name="DLL control for precharge PD" >Slow Exit</mrPdMode>}
   puts $mig_prj_file {        <emrDllEnable name="DLL Enable" >Enable</emrDllEnable>}
   puts $mig_prj_file {        <emrOutputDriveStrength name="Output Driver Impedance Control" >RZQ/6</emrOutputDriveStrength>}
   puts $mig_prj_file {        <emrMirrorSelection name="Address Mirroring" >Disable</emrMirrorSelection>}
   puts $mig_prj_file {        <emrCSSelection name="Controller Chip Select Pin" >Enable</emrCSSelection>}
   puts $mig_prj_file {        <emrRTT name="RTT (nominal) - On Die Termination (ODT)" >RZQ/6</emrRTT>}
   puts $mig_prj_file {        <emrPosted name="Additive Latency (AL)" >0</emrPosted>}
   puts $mig_prj_file {        <emrOCD name="Write Leveling Enable" >Disabled</emrOCD>}
   puts $mig_prj_file {        <emrDQS name="TDQS enable" >Enabled</emrDQS>}
   puts $mig_prj_file {        <emrRDQS name="Qoff" >Output Buffer Enabled</emrRDQS>}
   puts $mig_prj_file {        <mr2PartialArraySelfRefresh name="Partial-Array Self Refresh" >Full Array</mr2PartialArraySelfRefresh>}
   puts $mig_prj_file {        <mr2CasWriteLatency name="CAS write latency" >5</mr2CasWriteLatency>}
   puts $mig_prj_file {        <mr2AutoSelfRefresh name="Auto Self Refresh" >Enabled</mr2AutoSelfRefresh>}
   puts $mig_prj_file {        <mr2SelfRefreshTempRange name="High Temparature Self Refresh Rate" >Normal</mr2SelfRefreshTempRange>}
   puts $mig_prj_file {        <mr2RTTWR name="RTT_WR - Dynamic On Die Termination (ODT)" >Dynamic ODT off</mr2RTTWR>}
   puts $mig_prj_file {        <PortInterface>AXI</PortInterface>}
   puts $mig_prj_file {        <AXIParameters>}
   puts $mig_prj_file {            <C0_C_RD_WR_ARB_ALGORITHM>RD_PRI_REG</C0_C_RD_WR_ARB_ALGORITHM>}
   puts $mig_prj_file {            <C0_S_AXI_ADDR_WIDTH>28</C0_S_AXI_ADDR_WIDTH>}
   puts $mig_prj_file {            <C0_S_AXI_DATA_WIDTH>128</C0_S_AXI_DATA_WIDTH>}
   puts $mig_prj_file {            <C0_S_AXI_ID_WIDTH>2</C0_S_AXI_ID_WIDTH>}
   puts $mig_prj_file {            <C0_S_AXI_SUPPORTS_NARROW_BURST>0</C0_S_AXI_SUPPORTS_NARROW_BURST>}
   puts $mig_prj_file {        </AXIParameters>}
   puts $mig_prj_file {    </Controller>}
   puts $mig_prj_file {</Project>}

   close $mig_prj_file
}
# End of write_mig_file_ex_synth_mig_0()



##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: processor_local_memory
proc create_hier_cell_processor_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_processor_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB

  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB


  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net processor_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net processor_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net processor_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net processor_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net processor_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net processor_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net processor_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: processor_ss
proc create_hier_cell_processor_ss { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_processor_ss() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M02_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M03_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M04_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M05_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M06_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M07_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M08_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M09_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_DC

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_IC


  # Create pins
  create_bd_pin -dir I -type clk ACLK
  create_bd_pin -dir I -type rst ARESETN
  create_bd_pin -dir O -type rst Debug_SYS_Rst
  create_bd_pin -dir I -type clk M03_ACLK
  create_bd_pin -dir I -type rst M03_ARESETN
  create_bd_pin -dir I -type clk M05_ACLK
  create_bd_pin -dir I -type rst M05_ARESETN
  create_bd_pin -dir I -type rst SYS_Rst
  create_bd_pin -dir I -from 2 -to 0 -type intr intr
  create_bd_pin -dir I -type rst processor_rst

  # Create instance: processor, and set properties
  set processor [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 processor ]
  set_property -dict [ list \
   CONFIG.C_ADDR_TAG_BITS {16} \
   CONFIG.C_CACHE_BYTE_SIZE {16384} \
   CONFIG.C_DCACHE_ADDR_TAG {16} \
   CONFIG.C_DCACHE_BYTE_SIZE {16384} \
   CONFIG.C_DCACHE_VICTIMS {8} \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_DIV_ZERO_EXCEPTION {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_ICACHE_LINE_LEN {8} \
   CONFIG.C_ICACHE_STREAMS {1} \
   CONFIG.C_ICACHE_VICTIMS {8} \
   CONFIG.C_ILL_OPCODE_EXCEPTION {1} \
   CONFIG.C_I_LMB {1} \
   CONFIG.C_MMU_ZONES {2} \
   CONFIG.C_M_AXI_D_BUS_EXCEPTION {1} \
   CONFIG.C_M_AXI_I_BUS_EXCEPTION {1} \
   CONFIG.C_OPCODE_0x0_ILLEGAL {1} \
   CONFIG.C_PVR {2} \
   CONFIG.C_UNALIGNED_EXCEPTIONS {1} \
   CONFIG.C_USE_BARREL {1} \
   CONFIG.C_USE_DCACHE {1} \
   CONFIG.C_USE_DIV {1} \
   CONFIG.C_USE_HW_MUL {2} \
   CONFIG.C_USE_ICACHE {1} \
   CONFIG.C_USE_MMU {3} \
   CONFIG.C_USE_MSR_INSTR {1} \
   CONFIG.C_USE_PCMP_INSTR {1} \
   CONFIG.G_TEMPLATE_LIST {4} \
   CONFIG.G_USE_EXCEPTIONS {1} \
 ] $processor

  # Create instance: processor_axi_intc, and set properties
  set processor_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 processor_axi_intc ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {1} \
 ] $processor_axi_intc

  # Create instance: processor_axi_periph, and set properties
  set processor_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processor_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {10} \
 ] $processor_axi_periph

  # Create instance: processor_local_memory
  create_hier_cell_processor_local_memory $hier_obj processor_local_memory

  # Create instance: processor_mdm, and set properties
  set processor_mdm [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 processor_mdm ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M06_AXI] [get_bd_intf_pins processor_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins M07_AXI] [get_bd_intf_pins processor_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins M08_AXI] [get_bd_intf_pins processor_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins M09_AXI] [get_bd_intf_pins processor_axi_periph/M09_AXI]
  connect_bd_intf_net -intf_net processor_M_AXI_DC [get_bd_intf_pins M_AXI_DC] [get_bd_intf_pins processor/M_AXI_DC]
  connect_bd_intf_net -intf_net processor_M_AXI_IC [get_bd_intf_pins M_AXI_IC] [get_bd_intf_pins processor/M_AXI_IC]
  connect_bd_intf_net -intf_net processor_axi_dp [get_bd_intf_pins processor/M_AXI_DP] [get_bd_intf_pins processor_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processor_axi_periph_M01_AXI [get_bd_intf_pins M01_AXI] [get_bd_intf_pins processor_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net processor_axi_periph_M02_AXI [get_bd_intf_pins M02_AXI] [get_bd_intf_pins processor_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net processor_axi_periph_M03_AXI [get_bd_intf_pins M03_AXI] [get_bd_intf_pins processor_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net processor_axi_periph_M04_AXI [get_bd_intf_pins M04_AXI] [get_bd_intf_pins processor_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net processor_axi_periph_M05_AXI [get_bd_intf_pins M05_AXI] [get_bd_intf_pins processor_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net processor_debug [get_bd_intf_pins processor/DEBUG] [get_bd_intf_pins processor_mdm/MBDEBUG_0]
  connect_bd_intf_net -intf_net processor_dlmb_1 [get_bd_intf_pins processor/DLMB] [get_bd_intf_pins processor_local_memory/DLMB]
  connect_bd_intf_net -intf_net processor_ilmb_1 [get_bd_intf_pins processor/ILMB] [get_bd_intf_pins processor_local_memory/ILMB]
  connect_bd_intf_net -intf_net processor_intc_axi [get_bd_intf_pins processor_axi_intc/s_axi] [get_bd_intf_pins processor_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net processor_interrupt [get_bd_intf_pins processor/INTERRUPT] [get_bd_intf_pins processor_axi_intc/interrupt]

  # Create port connections
  connect_bd_net -net clk_wiz_1_clk_out2 [get_bd_pins M03_ACLK] [get_bd_pins processor_axi_periph/M03_ACLK]
  connect_bd_net -net clk_wiz_1_clk_out3 [get_bd_pins M05_ACLK] [get_bd_pins processor_axi_periph/M04_ACLK] [get_bd_pins processor_axi_periph/M05_ACLK] [get_bd_pins processor_axi_periph/M06_ACLK] [get_bd_pins processor_axi_periph/M07_ACLK] [get_bd_pins processor_axi_periph/M08_ACLK] [get_bd_pins processor_axi_periph/M09_ACLK]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins Debug_SYS_Rst] [get_bd_pins processor_mdm/Debug_SYS_Rst]
  connect_bd_net -net processor_Clk [get_bd_pins ACLK] [get_bd_pins processor/Clk] [get_bd_pins processor_axi_intc/processor_clk] [get_bd_pins processor_axi_intc/s_axi_aclk] [get_bd_pins processor_axi_periph/ACLK] [get_bd_pins processor_axi_periph/M00_ACLK] [get_bd_pins processor_axi_periph/M01_ACLK] [get_bd_pins processor_axi_periph/M02_ACLK] [get_bd_pins processor_axi_periph/S00_ACLK] [get_bd_pins processor_local_memory/LMB_Clk]
  connect_bd_net -net rst_clk_wiz_1_100M_bus_struct_reset [get_bd_pins SYS_Rst] [get_bd_pins processor_local_memory/SYS_Rst]
  connect_bd_net -net rst_clk_wiz_1_100M_mb_reset [get_bd_pins processor_rst] [get_bd_pins processor/Reset] [get_bd_pins processor_axi_intc/processor_rst]
  connect_bd_net -net rst_clk_wiz_1_100M_peripheral_aresetn [get_bd_pins ARESETN] [get_bd_pins processor_axi_intc/s_axi_aresetn] [get_bd_pins processor_axi_periph/ARESETN] [get_bd_pins processor_axi_periph/M00_ARESETN] [get_bd_pins processor_axi_periph/M01_ARESETN] [get_bd_pins processor_axi_periph/M02_ARESETN] [get_bd_pins processor_axi_periph/S00_ARESETN]
  connect_bd_net -net rst_clk_wiz_1_150M_peripheral_aresetn [get_bd_pins M03_ARESETN] [get_bd_pins processor_axi_periph/M03_ARESETN]
  connect_bd_net -net rst_clk_wiz_1_200M_peripheral_aresetn [get_bd_pins M05_ARESETN] [get_bd_pins processor_axi_periph/M04_ARESETN] [get_bd_pins processor_axi_periph/M05_ARESETN] [get_bd_pins processor_axi_periph/M06_ARESETN] [get_bd_pins processor_axi_periph/M07_ARESETN] [get_bd_pins processor_axi_periph/M08_ARESETN] [get_bd_pins processor_axi_periph/M09_ARESETN]
  connect_bd_net -net v_frmbuf_rd_0_interrupt [get_bd_pins intr] [get_bd_pins processor_axi_intc/intr]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: memory_ss
proc create_hier_cell_memory_ss { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_memory_ss() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S01_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S02_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 ddr3_sdram

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 sys_diff_clock


  # Create pins
  create_bd_pin -dir O -type clk M00_ACLK
  create_bd_pin -dir I -type clk S01_ACLK
  create_bd_pin -dir I -type rst S01_ARESETN
  create_bd_pin -dir I -type clk S02_ACLK
  create_bd_pin -dir I -type rst S02_ARESETN
  create_bd_pin -dir I -type clk clk_ref_i
  create_bd_pin -dir I -type rst reset
  create_bd_pin -dir I -type clk sys_clk_i

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {3} \
 ] $axi_mem_intercon

  # Create instance: mig, and set properties
  set mig [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.2 mig ]

  # Generate the PRJ File for MIG
  set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name $mig ] ] ]
  set str_mig_file_name board.prj
  set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}

  write_mig_file_ex_synth_mig_0 $str_mig_file_path

  set_property -dict [ list \
   CONFIG.BOARD_MIG_PARAM {ddr3_sdram} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.XML_INPUT_FILE {board.prj} \
 ] $mig

  # Create instance: rst_mig_200M, and set properties
  set rst_mig_200M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_mig_200M ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_mem_intercon/M00_AXI] [get_bd_intf_pins mig/S_AXI]
  connect_bd_intf_net -intf_net mig_DDR3 [get_bd_intf_pins ddr3_sdram] [get_bd_intf_pins mig/DDR3]
  connect_bd_intf_net -intf_net processor_M_AXI_DC [get_bd_intf_pins S00_AXI] [get_bd_intf_pins axi_mem_intercon/S00_AXI]
  connect_bd_intf_net -intf_net processor_M_AXI_IC [get_bd_intf_pins S01_AXI] [get_bd_intf_pins axi_mem_intercon/S01_AXI]
  connect_bd_intf_net -intf_net v_frmbuf_rd_0_m_axi_mm_video [get_bd_intf_pins S02_AXI] [get_bd_intf_pins axi_mem_intercon/S02_AXI]

  # Create port connections
  connect_bd_net -net clk_ref_i_1 [get_bd_pins clk_ref_i] [get_bd_pins mig/clk_ref_i]
  connect_bd_net -net clk_wiz_1_clk_out3 [get_bd_pins S02_ACLK] [get_bd_pins axi_mem_intercon/S02_ACLK]
  connect_bd_net -net mig_mmcm_locked [get_bd_pins mig/mmcm_locked] [get_bd_pins rst_mig_200M/dcm_locked]
  connect_bd_net -net mig_ui_clk [get_bd_pins M00_ACLK] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins mig/ui_clk] [get_bd_pins rst_mig_200M/slowest_sync_clk]
  connect_bd_net -net mig_ui_clk_sync_rst [get_bd_pins mig/ui_clk_sync_rst] [get_bd_pins rst_mig_200M/ext_reset_in]
  connect_bd_net -net processor_Clk [get_bd_pins S01_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon/S01_ACLK]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins mig/sys_rst]
  connect_bd_net -net rst_clk_wiz_1_100M_peripheral_aresetn [get_bd_pins S01_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon/S01_ARESETN]
  connect_bd_net -net rst_clk_wiz_1_200M_peripheral_aresetn [get_bd_pins S02_ARESETN] [get_bd_pins axi_mem_intercon/S02_ARESETN]
  connect_bd_net -net rst_mig_200M_peripheral_aresetn [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins mig/aresetn] [get_bd_pins rst_mig_200M/peripheral_aresetn]
  connect_bd_net -net sys_clk_i_1 [get_bd_pins sys_clk_i] [get_bd_pins mig/sys_clk_i]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: clock_and_reset
proc create_hier_cell_clock_and_reset { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_clock_and_reset() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 -type rst bus_struct_reset
  create_bd_pin -dir I -type clk clk_in1
  create_bd_pin -dir I -type rst mb_debug_sys_rst
  create_bd_pin -dir O -type rst mb_reset
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn1
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn2
  create_bd_pin -dir I -type rst reset
  create_bd_pin -dir O -type clk slowest_sync_clk
  create_bd_pin -dir O -type clk slowest_sync_clk1
  create_bd_pin -dir O -type clk slowest_sync_clk2

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_1 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {120.0} \
   CONFIG.CLKOUT1_JITTER {141.289} \
   CONFIG.CLKOUT1_PHASE_ERROR {100.585} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {83.3333} \
   CONFIG.CLKOUT2_JITTER {166.329} \
   CONFIG.CLKOUT2_PHASE_ERROR {100.585} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {40} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {141.289} \
   CONFIG.CLKOUT3_PHASE_ERROR {100.585} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {83.3333} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {12.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {12.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {12.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {25} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {12} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.PRIM_SOURCE {No_buffer} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_1

  # Create instance: rst_clk_wiz_1_100M, and set properties
  set rst_clk_wiz_1_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_1_100M ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_clk_wiz_1_100M

  # Create instance: rst_clk_wiz_1_150M, and set properties
  set rst_clk_wiz_1_150M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_1_150M ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_clk_wiz_1_150M

  # Create instance: rst_clk_wiz_1_200M, and set properties
  set rst_clk_wiz_1_200M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_1_200M ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_clk_wiz_1_200M

  # Create port connections
  connect_bd_net -net clk_wiz_1_clk_out2 [get_bd_pins slowest_sync_clk1] [get_bd_pins clk_wiz_1/clk_out2] [get_bd_pins rst_clk_wiz_1_150M/slowest_sync_clk]
  connect_bd_net -net clk_wiz_1_clk_out3 [get_bd_pins slowest_sync_clk2] [get_bd_pins clk_wiz_1/clk_out3] [get_bd_pins rst_clk_wiz_1_200M/slowest_sync_clk]
  connect_bd_net -net clk_wiz_1_locked [get_bd_pins clk_wiz_1/locked] [get_bd_pins rst_clk_wiz_1_100M/dcm_locked] [get_bd_pins rst_clk_wiz_1_150M/dcm_locked] [get_bd_pins rst_clk_wiz_1_200M/dcm_locked]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mb_debug_sys_rst] [get_bd_pins rst_clk_wiz_1_100M/mb_debug_sys_rst]
  connect_bd_net -net mig_ui_clk [get_bd_pins clk_in1] [get_bd_pins clk_wiz_1/clk_in1]
  connect_bd_net -net processor_Clk [get_bd_pins slowest_sync_clk] [get_bd_pins clk_wiz_1/clk_out1] [get_bd_pins rst_clk_wiz_1_100M/slowest_sync_clk]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins clk_wiz_1/resetn] [get_bd_pins rst_clk_wiz_1_100M/ext_reset_in] [get_bd_pins rst_clk_wiz_1_150M/ext_reset_in] [get_bd_pins rst_clk_wiz_1_200M/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_1_100M_bus_struct_reset [get_bd_pins bus_struct_reset] [get_bd_pins rst_clk_wiz_1_100M/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_1_100M_mb_reset [get_bd_pins mb_reset] [get_bd_pins rst_clk_wiz_1_100M/mb_reset]
  connect_bd_net -net rst_clk_wiz_1_100M_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins rst_clk_wiz_1_100M/peripheral_aresetn]
  connect_bd_net -net rst_clk_wiz_1_150M_peripheral_aresetn [get_bd_pins peripheral_aresetn1] [get_bd_pins rst_clk_wiz_1_150M/peripheral_aresetn]
  connect_bd_net -net rst_clk_wiz_1_200M_peripheral_aresetn [get_bd_pins peripheral_aresetn2] [get_bd_pins rst_clk_wiz_1_200M/peripheral_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set ddr3_sdram [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 ddr3_sdram ]

  set eth_mdio_mdc [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 eth_mdio_mdc ]

  set eth_mii [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mii_rtl:1.0 eth_mii ]

  set qspi_flash [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 qspi_flash ]

  set usb_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 usb_uart ]


  # Create ports
  set Blue [ create_bd_port -dir O -from 3 -to 0 Blue ]
  set Green [ create_bd_port -dir O -from 3 -to 0 Green ]
  set Red [ create_bd_port -dir O -from 3 -to 0 Red ]
  set clk [ create_bd_port -dir O -type clk clk ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   CONFIG.PHASE {0.000} \
 ] $sys_clock
  set vid_active_video_0 [ create_bd_port -dir O vid_active_video_0 ]
  set vid_hsync_0 [ create_bd_port -dir O vid_hsync_0 ]
  set vid_vsync_0 [ create_bd_port -dir O vid_vsync_0 ]

  # Create instance: axi_ethernetlite_0, and set properties
  set axi_ethernetlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernetlite:3.0 axi_ethernetlite_0 ]
  set_property -dict [ list \
   CONFIG.MDIO_BOARD_INTERFACE {eth_mdio_mdc} \
   CONFIG.MII_BOARD_INTERFACE {eth_mii} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_ethernetlite_0

  # Create instance: axi_quad_spi_0, and set properties
  set axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_0 ]
  set_property -dict [ list \
   CONFIG.QSPI_BOARD_INTERFACE {qspi_flash} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_quad_spi_0

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
   CONFIG.UARTLITE_BOARD_INTERFACE {usb_uart} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Create instance: blue_2, and set properties
  set blue_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 blue_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {12} \
   CONFIG.DIN_WIDTH {24} \
   CONFIG.DOUT_WIDTH {4} \
 ] $blue_2

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {118.758} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {166.667} \
   CONFIG.CLKOUT2_JITTER {114.829} \
   CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {200} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {6.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {5} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_0

  # Create instance: clock_and_reset
  create_hier_cell_clock_and_reset [current_bd_instance .] clock_and_reset

  # Create instance: green_1, and set properties
  set green_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 green_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {24} \
   CONFIG.DOUT_WIDTH {4} \
 ] $green_1

  # Create instance: hls_ip_reset, and set properties
  set hls_ip_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 hls_ip_reset ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $hls_ip_reset

  # Create instance: memory_ss
  create_hier_cell_memory_ss [current_bd_instance .] memory_ss

  # Create instance: processor_ss
  create_hier_cell_processor_ss [current_bd_instance .] processor_ss

  # Create instance: red_0, and set properties
  set red_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 red_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {23} \
   CONFIG.DIN_TO {20} \
   CONFIG.DIN_WIDTH {24} \
   CONFIG.DOUT_WIDTH {4} \
 ] $red_0

  # Create instance: v_frmbuf_rd_0, and set properties
  set v_frmbuf_rd_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_frmbuf_rd:2.1 v_frmbuf_rd_0 ]
  set_property -dict [ list \
   CONFIG.AXIMM_ADDR_WIDTH {32} \
   CONFIG.AXIMM_BURST_LENGTH {16} \
   CONFIG.AXIMM_DATA_WIDTH {64} \
   CONFIG.AXIMM_NUM_OUTSTANDING {4} \
   CONFIG.C_M_AXI_MM_VIDEO_DATA_WIDTH {64} \
   CONFIG.HAS_ALPHA {0} \
   CONFIG.HAS_BGR8 {1} \
   CONFIG.HAS_BGRA8 {0} \
   CONFIG.HAS_BGRX8 {1} \
   CONFIG.HAS_INTERLACED {0} \
   CONFIG.HAS_RGB8 {1} \
   CONFIG.HAS_RGB16 {0} \
   CONFIG.HAS_RGBA8 {0} \
   CONFIG.HAS_RGBX8 {1} \
   CONFIG.HAS_RGBX10 {0} \
   CONFIG.HAS_RGBX12 {0} \
   CONFIG.HAS_UYVY8 {1} \
   CONFIG.HAS_Y8 {1} \
   CONFIG.HAS_Y10 {0} \
   CONFIG.HAS_Y12 {0} \
   CONFIG.HAS_Y16 {0} \
   CONFIG.HAS_YUV8 {1} \
   CONFIG.HAS_YUV16 {0} \
   CONFIG.HAS_YUVA8 {0} \
   CONFIG.HAS_YUVX8 {1} \
   CONFIG.HAS_YUVX10 {0} \
   CONFIG.HAS_YUVX12 {0} \
   CONFIG.HAS_YUYV8 {1} \
   CONFIG.HAS_Y_UV10 {0} \
   CONFIG.HAS_Y_UV10_420 {0} \
   CONFIG.HAS_Y_UV12 {0} \
   CONFIG.HAS_Y_UV12_420 {0} \
   CONFIG.HAS_Y_UV8 {1} \
   CONFIG.HAS_Y_UV16 {0} \
   CONFIG.HAS_Y_UV16_420 {0} \
   CONFIG.HAS_Y_UV8_420 {1} \
   CONFIG.MAX_COLS {1057} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.MAX_NR_PLANES {2} \
   CONFIG.MAX_ROWS {629} \
   CONFIG.SAMPLES_PER_CLOCK {1} \
 ] $v_frmbuf_rd_0

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0 ]
  set_property -dict [ list \
   CONFIG.GEN_F0_VBLANK_HEND {800} \
   CONFIG.GEN_F0_VBLANK_HSTART {800} \
   CONFIG.GEN_F0_VFRAME_SIZE {628} \
   CONFIG.GEN_F0_VSYNC_HEND {800} \
   CONFIG.GEN_F0_VSYNC_HSTART {800} \
   CONFIG.GEN_F0_VSYNC_VEND {604} \
   CONFIG.GEN_F0_VSYNC_VSTART {600} \
   CONFIG.GEN_F1_VBLANK_HEND {800} \
   CONFIG.GEN_F1_VBLANK_HSTART {800} \
   CONFIG.GEN_F1_VFRAME_SIZE {628} \
   CONFIG.GEN_F1_VSYNC_HEND {800} \
   CONFIG.GEN_F1_VSYNC_HSTART {800} \
   CONFIG.GEN_F1_VSYNC_VEND {604} \
   CONFIG.GEN_F1_VSYNC_VSTART {600} \
   CONFIG.GEN_HACTIVE_SIZE {800} \
   CONFIG.GEN_HFRAME_SIZE {1056} \
   CONFIG.GEN_HSYNC_END {968} \
   CONFIG.GEN_HSYNC_START {840} \
   CONFIG.GEN_VACTIVE_SIZE {600} \
   CONFIG.VIDEO_MODE {800x600p} \
   CONFIG.enable_detection {false} \
   CONFIG.max_clocks_per_line {4096} \
 ] $v_tc_0

  # Create instance: vid_out, and set properties
  set vid_out [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 vid_out ]
  set_property -dict [ list \
   CONFIG.C_ADDR_WIDTH {13} \
   CONFIG.C_HAS_ASYNC_CLK {1} \
   CONFIG.C_NATIVE_COMPONENT_WIDTH {8} \
   CONFIG.C_PIXELS_PER_CLOCK {1} \
 ] $vid_out

  # Create instance: video_lock_monitor, and set properties
  set video_lock_monitor [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 video_lock_monitor ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $video_lock_monitor

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $xlconcat_0

  # Create interface connections
  connect_bd_intf_net -intf_net axi_ethernetlite_0_MDIO [get_bd_intf_ports eth_mdio_mdc] [get_bd_intf_pins axi_ethernetlite_0/MDIO]
  connect_bd_intf_net -intf_net axi_ethernetlite_0_MII [get_bd_intf_ports eth_mii] [get_bd_intf_pins axi_ethernetlite_0/MII]
  connect_bd_intf_net -intf_net axi_quad_spi_0_SPI_0 [get_bd_intf_ports qspi_flash] [get_bd_intf_pins axi_quad_spi_0/SPI_0]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports usb_uart] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net mig_DDR3 [get_bd_intf_ports ddr3_sdram] [get_bd_intf_pins memory_ss/ddr3_sdram]
  connect_bd_intf_net -intf_net processor_M_AXI_DC [get_bd_intf_pins memory_ss/S00_AXI] [get_bd_intf_pins processor_ss/M_AXI_DC]
  connect_bd_intf_net -intf_net processor_M_AXI_IC [get_bd_intf_pins memory_ss/S01_AXI] [get_bd_intf_pins processor_ss/M_AXI_IC]
  connect_bd_intf_net -intf_net processor_axi_periph_M02_AXI [get_bd_intf_pins processor_ss/M02_AXI] [get_bd_intf_pins v_tc_0/ctrl]
  connect_bd_intf_net -intf_net processor_axi_periph_M03_AXI [get_bd_intf_pins processor_ss/M03_AXI] [get_bd_intf_pins video_lock_monitor/S_AXI]
  connect_bd_intf_net -intf_net processor_axi_periph_M04_AXI [get_bd_intf_pins hls_ip_reset/S_AXI] [get_bd_intf_pins processor_ss/M04_AXI]
  connect_bd_intf_net -intf_net processor_axi_periph_M05_AXI [get_bd_intf_pins processor_ss/M05_AXI] [get_bd_intf_pins v_frmbuf_rd_0/s_axi_CTRL]
  connect_bd_intf_net -intf_net processor_ss_M06_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins processor_ss/M06_AXI]
  connect_bd_intf_net -intf_net processor_ss_M07_AXI [get_bd_intf_pins axi_quad_spi_0/AXI_LITE] [get_bd_intf_pins processor_ss/M07_AXI]
  connect_bd_intf_net -intf_net processor_ss_M08_AXI [get_bd_intf_pins axi_ethernetlite_0/S_AXI] [get_bd_intf_pins processor_ss/M08_AXI]
  connect_bd_intf_net -intf_net processor_ss_M09_AXI [get_bd_intf_pins axi_timer_0/S_AXI] [get_bd_intf_pins processor_ss/M09_AXI]
  connect_bd_intf_net -intf_net v_frmbuf_rd_0_m_axi_mm_video [get_bd_intf_pins memory_ss/S02_AXI] [get_bd_intf_pins v_frmbuf_rd_0/m_axi_mm_video]
  connect_bd_intf_net -intf_net v_frmbuf_rd_0_m_axis_video [get_bd_intf_pins v_frmbuf_rd_0/m_axis_video] [get_bd_intf_pins vid_out/video_in]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_tc_0/vtiming_out] [get_bd_intf_pins vid_out/vtiming_in]

  # Create port connections
  connect_bd_net -net axi_quad_spi_0_ip2intc_irpt [get_bd_pins axi_quad_spi_0/ip2intc_irpt] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi_uartlite_0_interrupt [get_bd_pins axi_uartlite_0/interrupt] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins memory_ss/sys_clk_i]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins memory_ss/clk_ref_i]
  connect_bd_net -net clk_wiz_1_clk_out2 [get_bd_ports clk] [get_bd_pins clock_and_reset/slowest_sync_clk1] [get_bd_pins processor_ss/M03_ACLK] [get_bd_pins v_tc_0/clk] [get_bd_pins vid_out/vid_io_out_clk] [get_bd_pins video_lock_monitor/s_axi_aclk]
  connect_bd_net -net clk_wiz_1_clk_out3 [get_bd_pins axi_ethernetlite_0/s_axi_aclk] [get_bd_pins axi_quad_spi_0/s_axi_aclk] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins clock_and_reset/slowest_sync_clk2] [get_bd_pins hls_ip_reset/s_axi_aclk] [get_bd_pins memory_ss/S02_ACLK] [get_bd_pins processor_ss/M05_ACLK] [get_bd_pins v_frmbuf_rd_0/ap_clk] [get_bd_pins vid_out/aclk]
  connect_bd_net -net hls_ip_reset_gpio_io_o [get_bd_pins hls_ip_reset/gpio_io_o] [get_bd_pins v_frmbuf_rd_0/ap_rst_n] [get_bd_pins vid_out/aresetn]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins clock_and_reset/mb_debug_sys_rst] [get_bd_pins processor_ss/Debug_SYS_Rst]
  connect_bd_net -net mig_ui_clk [get_bd_pins axi_quad_spi_0/ext_spi_clk] [get_bd_pins clock_and_reset/clk_in1] [get_bd_pins memory_ss/M00_ACLK]
  connect_bd_net -net processor_Clk [get_bd_pins clock_and_reset/slowest_sync_clk] [get_bd_pins memory_ss/S01_ACLK] [get_bd_pins processor_ss/ACLK] [get_bd_pins v_tc_0/s_axi_aclk]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_0/resetn] [get_bd_pins clock_and_reset/reset] [get_bd_pins memory_ss/reset]
  connect_bd_net -net rst_clk_wiz_1_100M_bus_struct_reset [get_bd_pins clock_and_reset/bus_struct_reset] [get_bd_pins processor_ss/SYS_Rst]
  connect_bd_net -net rst_clk_wiz_1_100M_mb_reset [get_bd_pins clock_and_reset/mb_reset] [get_bd_pins processor_ss/processor_rst]
  connect_bd_net -net rst_clk_wiz_1_100M_peripheral_aresetn [get_bd_pins axi_ethernetlite_0/s_axi_aresetn] [get_bd_pins axi_quad_spi_0/s_axi_aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins clock_and_reset/peripheral_aresetn] [get_bd_pins memory_ss/S01_ARESETN] [get_bd_pins processor_ss/ARESETN] [get_bd_pins v_tc_0/s_axi_aresetn]
  connect_bd_net -net rst_clk_wiz_1_150M_peripheral_aresetn [get_bd_pins clock_and_reset/peripheral_aresetn1] [get_bd_pins processor_ss/M03_ARESETN] [get_bd_pins video_lock_monitor/s_axi_aresetn]
  connect_bd_net -net rst_clk_wiz_1_200M_peripheral_aresetn [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins clock_and_reset/peripheral_aresetn2] [get_bd_pins hls_ip_reset/s_axi_aresetn] [get_bd_pins memory_ss/S02_ARESETN] [get_bd_pins processor_ss/M05_ARESETN]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net v_frmbuf_rd_0_interrupt [get_bd_pins v_frmbuf_rd_0/interrupt] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net vid_out_locked [get_bd_pins vid_out/locked] [get_bd_pins video_lock_monitor/gpio_io_i]
  connect_bd_net -net vid_out_vid_active_video [get_bd_ports vid_active_video_0] [get_bd_pins vid_out/vid_active_video]
  connect_bd_net -net vid_out_vid_data [get_bd_pins blue_2/Din] [get_bd_pins green_1/Din] [get_bd_pins red_0/Din] [get_bd_pins vid_out/vid_data]
  connect_bd_net -net vid_out_vid_hsync [get_bd_ports vid_hsync_0] [get_bd_pins vid_out/vid_hsync]
  connect_bd_net -net vid_out_vid_vsync [get_bd_ports vid_vsync_0] [get_bd_pins vid_out/vid_vsync]
  connect_bd_net -net vid_out_vtg_ce [get_bd_pins v_tc_0/gen_clken] [get_bd_pins vid_out/vtg_ce]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processor_ss/intr] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_ports Red] [get_bd_pins red_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_ports Green] [get_bd_pins green_1/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_ports Blue] [get_bd_pins blue_2/Dout]

  # Create address segments
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces v_frmbuf_rd_0/Data_m_axi_mm_video] [get_bd_addr_segs memory_ss/mig/memmap/memaddr] SEG_mig_memaddr
  create_bd_addr_seg -range 0x00010000 -offset 0x40E00000 [get_bd_addr_spaces processor_ss/processor/Data] [get_bd_addr_segs axi_ethernetlite_0/S_AXI/Reg] SEG_axi_ethernetlite_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A20000 [get_bd_addr_spaces processor_ss/processor/Data] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] SEG_axi_quad_spi_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces processor_ss/processor/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces processor_ss/processor/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00002000 -offset 0x00000000 [get_bd_addr_spaces processor_ss/processor/Data] [get_bd_addr_segs processor_ss/processor_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces processor_ss/processor/Data] [get_bd_addr_segs hls_ip_reset/S_AXI/Reg] SEG_hls_ip_reset_Reg
  create_bd_addr_seg -range 0x00002000 -offset 0x00000000 [get_bd_addr_spaces processor_ss/processor/Instruction] [get_bd_addr_segs processor_ss/processor_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces processor_ss/processor/Data] [get_bd_addr_segs memory_ss/mig/memmap/memaddr] SEG_mig_memaddr
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces processor_ss/processor/Instruction] [get_bd_addr_segs memory_ss/mig/memmap/memaddr] SEG_mig_memaddr
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces processor_ss/processor/Data] [get_bd_addr_segs processor_ss/processor_axi_intc/S_AXI/Reg] SEG_processor_axi_intc_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A10000 [get_bd_addr_spaces processor_ss/processor/Data] [get_bd_addr_segs v_frmbuf_rd_0/s_axi_CTRL/Reg] SEG_v_frmbuf_rd_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces processor_ss/processor/Data] [get_bd_addr_segs v_tc_0/ctrl/Reg] SEG_v_tc_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces processor_ss/processor/Data] [get_bd_addr_segs video_lock_monitor/S_AXI/Reg] SEG_video_lock_monitor_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


