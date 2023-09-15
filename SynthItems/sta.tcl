source setup.tcl
read_liberty $lib
read_lef $techLef
read_verilog $synthNetlist 
link_design $designName
read_sdc -echo $sdc

if { $preCts == 1 } {
 unset_propagated_clock [all_clocks]
} else {
 set_propagated_clock [all_clocks]
    read_spef $spefFile
}

set_cmd_units -time ns -capacitance pF -current mA -voltage V -resistance kOhm -distance um

#report_checks -path_delay min -fields {slew cap input nets fanout} -format full_clock_expanded -group_count 5
report_checks -path_delay max -fields {slew cap input nets fanout} -format full_clock_expanded -group_count 5
#report_checks -unconstrained -fields {slew cap input nets fanout} -format full_clock_expanded

#report_checks -slack_max -0.01 -fields {slew cap input nets fanout} -format full_clock_expanded
#report_check_types -max_slew -max_capacitance -max_fanout -violators

report_tns
report_wns
report_worst_slack -max
report_worst_slack -min
report_power
report_design_area

