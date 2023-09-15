read_liberty $lib
read_lef $techLef 
read_verilog $synthNetlist
link_design $designName
read_sdc -echo $sdc
unset_propagated_clock [all_clocks]


set bottom_margin  [expr $yUnit * 1]
set top_margin  [expr $yUnit * 1]
set left_margin [expr $xUnit * 1]
set right_margin [expr $xUnit * 1]


initialize_floorplan 
    -utilization 50 \
    -aspect_ratio 1 \
    -core_space "$bottom_margin $top_margin $left_margin $right_margin" \
    -site $::env(PLACE_SITE)

### do not edit this this is to get the units in tech file
    set ::tech [[::ord::get_db] getTech]
    set dbu [$tech getDbUnitsPerMicron]

source  config.tracks


write_def floorplan.def
write_sdc floorplan.sdc
