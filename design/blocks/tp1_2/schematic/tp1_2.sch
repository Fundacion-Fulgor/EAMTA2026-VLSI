v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 640 90 710 90 { lab=#net1}
N 750 90 850 90 { lab=#net2}
N 750 120 750 140 {
lab=GND}
N 750 10 750 60 {
lab=#net2}
N 480 10 480 70 {
lab=#net2}
N 620 90 640 90 {
lab=#net1}
N 620 80 620 90 {
lab=#net1}
N 620 10 620 20 {
lab=#net2}
N 850 10 850 90 {
lab=#net2}
N 750 10 850 10 {
lab=#net2}
N 620 190 620 220 {
lab=GND}
N 480 190 630 190 {
lab=GND}
N 750 140 750 190 {lab=GND}
N 630 190 750 190 {lab=GND}
N 480 130 480 190 {lab=GND}
N 480 10 750 10 {lab=#net2}
C {vsource.sym} 480 100 0 0 {name=VDS value=DC\{vds\}}
C {netlist_not_shown.sym} 320 50 0 0 {name=simulation only_toplevel=false
value="

* Parameters
.param vds = 1.8
.param vgs = 0.9
.options TEMPS = 27.0

* Include Models
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT
* Data to save
.save all
+ @M.XM2.msky130_fd_pr__pfet_01v8[id]
+ @M.XM2.msky130_fd_pr__pfet_01v8[gm]
+ @M.XM2.msky130_fd_pr__pfet_01v8[vth]
+ @M.XM2.msky130_fd_pr__pfet_01v8[vds]
+ @M.XM2.msky130_fd_pr__pfet_01v8[vdsat]
+ @M.XM2.msky130_fd_pr__pfet_01v8[vgs]

* Simulation
.control
  dc VDS 0 1.8 0.01 VGS 0 1.8 0.3
  setplot dc1
  plot @M.XM2.msky130_fd_pr__pfet_01v8[id] ylabel Id xlabel Vds title 'Id vs Vds vs Vgs'
  set filetype = ascii
  write tp1_2_dc1.raw

  reset
  dc VGS 0 1.8 0.01
  setplot dc2
  plot @M.XM2.msky130_fd_pr__pfet_01v8[id] ylabel Id xlabel Vgs
  set filetype = ascii
  write tp1_2_dc2.raw
 
.endc

.end
"}
C {sky130_fd_pr/pfet_01v8.sym} 730 90 0 0 {name=M2
L=0.75
W=3.75
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} 620 50 0 0 {name=VGS value=DC\{vgs\}}
C {gnd.sym} 620 220 0 0 {name=l2 lab=GND}
