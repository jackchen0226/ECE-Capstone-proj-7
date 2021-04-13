
################################################################
# This is a generated script based on design: design_1
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
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# vga_core

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcvu9p-flga2104-2L-e
   set_property BOARD_PART xilinx.com:vcu118:part0:2.3 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

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
# DESIGN PROCs
##################################################################



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

  # Create ports
  set blue [ create_bd_port -dir O -from 3 -to 0 blue ]
  set clk [ create_bd_port -dir O -type clk clk ]
  set clk_100MHz [ create_bd_port -dir I -type clk clk_100MHz ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $clk_100MHz
  set green [ create_bd_port -dir O -from 3 -to 0 green ]
  set red [ create_bd_port -dir O -from 3 -to 0 red ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set vga_active [ create_bd_port -dir O vga_active ]
  set vga_hsync [ create_bd_port -dir O vga_hsync ]
  set vga_vsync [ create_bd_port -dir O vga_vsync ]

  # Create instance: blue_0, and set properties
  set blue_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 blue_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {24} \
   CONFIG.DOUT_WIDTH {4} \
 ] $blue_0

  # Create instance: c_counter_binary_0, and set properties
  set c_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.Increment_Value {3} \
   CONFIG.Output_Width {32} \
 ] $c_counter_binary_0

  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {139.033} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {40} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {30.000} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz

  # Create instance: green_0, and set properties
  set green_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 green_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {12} \
   CONFIG.DIN_WIDTH {24} \
   CONFIG.DOUT_WIDTH {4} \
 ] $green_0

  # Create instance: mode_0, and set properties
  set mode_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 mode_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {30} \
   CONFIG.DIN_TO {30} \
   CONFIG.DOUT_WIDTH {1} \
 ] $mode_0

  # Create instance: red_0, and set properties
  set red_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 red_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {23} \
   CONFIG.DIN_TO {20} \
   CONFIG.DIN_WIDTH {24} \
   CONFIG.DOUT_WIDTH {4} \
 ] $red_0

  # Create instance: vga_core_0, and set properties
  set block_name vga_core
  set block_cell_name vga_core_0
  if { [catch {set vga_core_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $vga_core_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: zero_0, and set properties
  set zero_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 zero_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $zero_0

  # Create port connections
  connect_bd_net -net blue_2_Dout [get_bd_ports blue] [get_bd_pins blue_0/Dout]
  connect_bd_net -net c_counter_binary_0_Q [get_bd_pins c_counter_binary_0/Q] [get_bd_pins mode_0/Din] [get_bd_pins vga_core_0/random_num]
  connect_bd_net -net clk_100MHz_1 [get_bd_ports clk_100MHz] [get_bd_pins clk_wiz/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_ports clk] [get_bd_pins c_counter_binary_0/CLK] [get_bd_pins clk_wiz/clk_out1] [get_bd_pins vga_core_0/clk_dot]
  connect_bd_net -net green_1_Dout [get_bd_ports green] [get_bd_pins green_0/Dout]
  connect_bd_net -net mode_0_Dout [get_bd_pins mode_0/Dout] [get_bd_pins vga_core_0/mode_bit]
  connect_bd_net -net red_0_Dout [get_bd_ports red] [get_bd_pins red_0/Dout]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz/reset] [get_bd_pins vga_core_0/reset]
  connect_bd_net -net vga_core_0_vga_active [get_bd_ports vga_active] [get_bd_pins vga_core_0/vga_active]
  connect_bd_net -net vga_core_0_vga_hsync [get_bd_ports vga_hsync] [get_bd_pins vga_core_0/vga_hsync]
  connect_bd_net -net vga_core_0_vga_pixel_rgb [get_bd_pins blue_0/Din] [get_bd_pins green_0/Din] [get_bd_pins red_0/Din] [get_bd_pins vga_core_0/vga_pixel_rgb]
  connect_bd_net -net vga_core_0_vga_vsync [get_bd_ports vga_vsync] [get_bd_pins vga_core_0/vga_vsync]
  connect_bd_net -net zero_0_dout [get_bd_pins vga_core_0/color_3b] [get_bd_pins zero_0/dout]

  # Create address segments


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


