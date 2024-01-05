#/**************************************************/
#/* Compile Script for Synopsys                    */
#/*                                                */
#/* dc_shell-t -f compile_dc.tcl | tee run.log     */
#/*                                                */
#/* 		                                   */
#/**************************************************/

#/**************设置综合环境**************************/
#/* All verilog files, separated by spaces         */
set RTL_files [list bitdistributor8.v inout_port.v spi_combine.v spi_fifo.v spi_MasterMode.v spi_SlaveMode.v ]
#/* Top-level Module                               */
set my_toplevel spi_combine
#/* 
set file_version dc_v1
#/* set folder name
set RPT_DIR RPT
set OUT_DIR OUT

set RPT_OUT  [format "%s%s" $RPT_DIR/ $file_version]
set DATA_OUT [format "%s%s" $OUT_DIR/ $file_version]
#/**************设置综合环境**************************/

#/**************创建目录结构**************************/
#/* Create RPT folder
if {[file exist $RPT_DIR]} {
    echo "File $RPT_DIR already exist"
} else {
    exec mkdir $RPT_DIR
    echo "Creating $RPT_DIR !!!"
}

if {[file exist $RPT_DIR/$file_version]} {
    echo "File $file_version already exist"
    exec rm $RPT_DIR/$file_version -r
    exec mkdir $RPT_DIR/$file_version
    echo "Re-create $file_version files"
} else {
    exec mkdir $RPT_DIR/$file_version
    echo "Creating $file_version in $RPT_DIR !!!"
}

#/* Create OUT folder
if {[file exist $OUT_DIR]} {
    echo "File $OUT_DIR already exist"
} else {
    exec mkdir $OUT_DIR
    echo "Creating $OUT_DIR !!!"
}

if {[file exist $OUT_DIR/$file_version]} {
    echo "File $file_version already exist"
    exec rm $OUT_DIR/$file_version -r
    exec mkdir $OUT_DIR/$file_version
    echo "Re-create $file_version files"
} else {
    exec mkdir $OUT_DIR/$file_version
    echo "Creating $file_version in $OUT_DIR !!!"
}

# create work
if {[file exist WORK]} {
    echo "File WORK already exist"
} else {
    exec mkdir WORK
    echo "Creating WORK!!!"
}

if {[file exist WORK/$file_version]} {
    echo "File WORK/$file_version already exist"
} else {
    exec mkdir WORK/$file_version
    echo "Creating WORK/$file_version in WORK !!!"
}
#/**************创建目录结构**************************/

#/**************设置综合库文件************************/
set OSU_FREEPDK [format "%s%s"  [getenv "PDK_DIR"] "/osu_soc/lib/files"]
set search_path [concat  $search_path $OSU_FREEPDK]
set alib_library_analysis_path $OSU_FREEPDK

set link_library [set target_library [concat  [list scc018v3ebcd_uhd50_rvt_tt_v5p0_25c_basic.db] [list dw_foundation.sldb]]]
set target_library "scc018v3ebcd_uhd50_rvt_tt_v5p0_25c_basic.db"
define_design_lib WORK -path ./WORK
#/**************设置综合库文件************************/


#/**************读取RTL文件**************************/
analyze -f verilog  $RTL_files

elaborate $my_toplevel

current_design $my_toplevel

link
uniquify
#/**************读取RTL文件**************************/

#/**************设置综合环境**************************/
#Compile variable
set write_name_nets_same_as_ports                            true
set compile_assume_fully_decoded_three_state_buses           true            
set compile_no_new_cells_at_top_level                        false
set compile_preserve_sync_resets                             true
set compile_enable_constant_propagation_with_no_boundary_opt false
#Remove assign statements when generating gate level netlist 
set compile_fix_multiple_port_nets                           true

# for async reset timing check
set enable_recovery_removal_arcs                             true
set_fix_multiple_port_nets -all -buffer_constants
#set_fix_multiple_port_nets -all

#HDL RULES
set hdlin_check_no_latch                        true
set hdlin_suppress_warnings                     false
set hdlin_ff_always_sync_set_reset              true
set hdlin_infer_mux                             default
set hdlin_keep_signal_name                      all_driving
set hdlin_on_sequential_mapping                 false
set compile_delete_unloaded_sequential_cells    true
set hdlin_preserve_sequential                   none

#VERILOG RULES: VERILOG OUT
set verilogout_show_unconnected_pins            true
set verilogout_no_tri                           false
set verilogout_single_bit                       false
set verilogout_equation                         false
#/**************设置综合环境**************************/

#/**************设置约束条件**************************/
#/Create clock
set sys_clk clk_i
#/* Target frequency in MHz for optimization       */
set sys_clk_freq_MHz 80

#/Create spi sck for slavemode
set spi_sck spi_SlaveMode_u/sck_i
#/* Target frequency in MHz for optimization       */
set spi_sck_freq_MHz 50


set sys_clk_period [expr 1000 / $sys_clk_freq_MHz]
set sck_period     [expr 1000 / $spi_sck_freq_MHz]

set find_clock [ find port [list $sys_clk] ]
if {  $find_clock != [list] } {
   set clk_name $sys_clk
   create_clock -period $sys_clk_period $clk_name
} else {
   set clk_name vclk
   create_clock -period $sys_clk_period -name $clk_name
}

#/* System clock constrain  begin*/
set_dont_touch_network [get_clocks $sys_clk]
set_ideal_network [get_clocks $sys_clk]
set_clock_latency -max 0.5 [get_clocks $sys_clk]
set_clock_uncertainty -setup 0.6 [get_clocks $sys_clk]
set_clock_uncertainty -hold  0.5 [get_clocks $sys_clk]
set_clock_transition 0.4 [get_clocks $sys_clk]
#/* System clock constrain  end*/


set find_clock2 [ find port [list $spi_sck] ]
if {  $find_clock2 != [list] } {
   set clk_name2 $spi_sck
   create_clock -period $sck_period $clk_name2
} else {
   set clk_name2 vclk
   create_clock -period $sck_period -name $clk_name2
}

#/* SPI spi_sck constrain  begin*/
set_dont_touch_network [get_clocks $spi_sck]
set_ideal_network [get_clocks $spi_sck]
set_clock_uncertainty -setup 0.6 [get_clocks $spi_sck]
set_clock_uncertainty -hold  0.5 [get_clocks $spi_sck]
set_clock_transition 0.4 [get_clocks $spi_sck]
#/* SPI spi_sck constrain  end*/

#/* SPI asynchronous clks constrain  begin*/
set_clock_groups -asynchronous -group [get_clocks $clk_name] -group [get_clocks $clk_name2]

#/* SPI asynchronous clks constrain  end*/

#/*
set driving_cell CLKBUFV2_7TV50 
set loading_cell CLKBUFV8_7TV50 

set_drive [drive_of scc018v3ebcd_uhd50_rvt_tt_v5p0_25c_basic/${driving_cell}/Z] [all_inputs]
set_load [load_of  scc018v3ebcd_uhd50_rvt_tt_v5p0_25c_basic/${loading_cell}/I] [all_outputs]
#/*

#/add constrain
set input_delay_ns  5
set output_delay_ns 5

#/* input/output delay

set_input_delay $input_delay_ns -clock $clk_name [remove_from_collection [all_inputs] rstn_i]
set_output_delay $output_delay_ns -clock $clk_name [all_outputs]

# multicycle_path (not used)
#set_multicycle_path -setup  2 -from A -to B
#set_multicycle_path -hold   1 -from A -to B

# false path
# set asynchronous reset signal as false path
set_false_path -from [get_ports rstn_i] -to [all_registers]

#/**************设置约束条件***************************/


#/**************映射门级单元和优化**********************/
# set_ultra_optimization true
set_ultra_optimization -force

compile  -map_effort medium > $RPT_OUT/compile.rpt

#/**************映射门级单元和优化**********************/

#/**************检查综合结果并输出报告*******************/
check_design  > $RPT_OUT/check_design.rpt
check_timing  > $RPT_OUT/check_timing.rpt

report_qor > $RPT_OUT/qor.rpt
report_area > $RPT_OUT/area.rpt
report_area -hierarchy > $RPT_OUT/area_hier.rpt
report_timing -loops > $RPT_OUT/timing_loop.rpt
report_timing -path full -net -cap -input -tran -delay min -max_paths 3 -nworst 3 > $RPT_OUT/timing.min.rpt
report_timing -path full -net -cap -input -tran -delay max -max_paths 3 -nworst 3 > $RPT_OUT/timing.max.rpt
report_constraints -all_violators -verbose > $RPT_OUT/constraints.rpt
report_power > $RPT_OUT/power.rpt
#/**************检查综合结果并输出报告*******************/

#/**************输出综合结果***************************/
set bus_naming_style {%s[%d]} 
write_file -f verilog -hierarchy -output $DATA_OUT/$my_toplevel.v
write_sdf -version 2.1 $DATA_OUT/$my_toplevel.sdf
write_file -f ddc -hierarchy -output $DATA_OUT/$my_toplevel.ddc
write_sdc $DATA_OUT/$my_toplevel.sdc
#/**************输出综合结果***************************/

quit
