v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 120 220 150 {
lab=#net1}
N 80 120 220 120 {
lab=#net1}
N 260 120 420 120 {
lab=#net2}
N 80 180 260 180 {
lab=GND}
N 260 180 420 180 {
lab=GND}
N 260 150 350 150 {
lab=GND}
N 350 150 350 180 {
lab=GND}
N 210 180 210 200 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 240 150 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 210 200 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 420 150 0 0 {name=V1 value="0.9"}
C {devices/vsource.sym} 80 150 0 0 {name=V2 value=0}
C {devices/code.sym} 30 250 0 0 {name=spice1 only_toplevel=false value="

.lib /home/rcg/tools/OpenLane/OpenLane/pdks/volare/sky130/versions/e8294524e5f67c533c5d0c3afa0bcc5b2a5fa066/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.control 
	dc V2 0 3 0.01
	plot -i(V1)
	plot V1
.endc

.save all

"}
