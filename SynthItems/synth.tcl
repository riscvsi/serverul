# Copyright 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
yosys -import

# inputs expected as env vars
set buffering sky130_fd_sc_hd__buf_4
set sizing 0 
set vtop "mkcsrfile"
set sclib "sky130_fd_sc_hd__tt_025C_1v80.lib"



# ns expected (in sdc as well)
set clock_period [expr {18*1000}]

set driver  sky130_fd_sc_hd__inv_2
set cload   "33"

# input pin cap of IN_3VX8
set max_FO 4

set max_Tran 0.75

# get old sdc, add library specific stuff for abc scripts
set sdc_file mkcsrfile.sdc
set outfile [open ${sdc_file} w]
#puts $outfile $sdc_data
puts $outfile "set_driving_cell ${driver}"
puts $outfile "set_load ${cload}"
close $outfile

# Start Synthesis
read_verilog mkcsrfile.v

select -module $vtop
select -clear

hierarchy -check -top $vtop
synth -top $vtop -flatten
dfflibmap -liberty $sclib
#techmap -map $sclib
abc -liberty $sclib
splitnets


opt
opt_clean -purge

design -save checkpoint
set output mkcsrfile_synth.v
write_verilog -noattr -noexpr -nohex -nodec -defparam $output

# Explore/Finalize
