v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -750 150 -680 150 {lab=vin}
N -350 -30 -350 120 {lab=avdd1p8}
N -160 -70 -160 -20 {lab=avss1p8}
N -160 40 -160 90 {lab=GND}
N -70 -70 -70 -20 {lab=avdd1p8}
N -70 40 -70 90 {lab=avss1p8}
N 20 -70 20 -20 {lab=vin}
N 20 40 20 90 {lab=avss1p8}
N -190 280 -190 320 {lab=avss1p8}
N -350 320 -190 320 {lab=avss1p8}
N -620 320 -350 320 {lab=avss1p8}
N -480 140 -480 170 {lab=vout}
N -480 170 -430 160 {lab=vout}
N -350 200 -350 320 {lab=avss1p8}
N -260 160 -190 160 {lab=#net1}
N -190 160 -190 220 {lab=#net1}
N -750 180 -750 240 {lab=GND}
N -750 180 -680 180 {lab=GND}
N -520 170 -480 170 {lab=vout}
N -620 240 -620 320 {lab=avss1p8}
N -670 320 -620 320 {lab=avss1p8}
N -620 -20 -620 100 {lab=avdd1p8}
C {lab_pin.sym} -750 150 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_pin.sym} -620 30 2 0 {name=p1 sig_type=std_logic lab=avdd1p8}
C {lab_pin.sym} -670 320 0 0 {name=p4 sig_type=std_logic lab=avss1p8}
C {lab_pin.sym} -480 140 1 0 {name=p5 sig_type=std_logic lab=vout}
C {lab_pin.sym} -350 30 2 0 {name=p12 sig_type=std_logic lab=avdd1p8}
C {netlist_not_shown.sym} -800 -60 0 0 {name=SIMULATION only_toplevel=false
value="
* Circuit Parameters
.param vdd = 1
.param vss = 0.0
.param Tclk = 10n
.options TEMP = 27.0
* Include Models - IHP SG13G2
.lib cornerMOSlv.lib mos_tt
* OP Parameters & Singals to save
.save all
*Simulations
.control
tran 0.01u 100n
setplot tran1
plot v(vin) v(vout)+1
reset
dc V6 0 1 0.01
setplot dc
plot vin vout ylabel vout xlabel vin
set filetype = ascii
write dcsweep.raw
.endc
.end
"}
C {capa.sym} -190 250 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -160 90 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -160 -70 1 0 {name=p21 sig_type=std_logic lab=avss1p8}
C {lab_pin.sym} -70 90 3 0 {name=p22 sig_type=std_logic lab=avss1p8}
C {lab_pin.sym} -70 -70 1 0 {name=p23 sig_type=std_logic lab=avdd1p8}
C {lab_pin.sym} 20 90 3 0 {name=p24 sig_type=std_logic lab=avss1p8}
C {lab_pin.sym} 20 -70 1 0 {name=p25 sig_type=std_logic lab=vin}
C {vsource.sym} -160 10 0 0 {name=V4 value=DC\{vdd\} savecurrent=false}
C {vsource.sym} -70 10 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {vsource.sym} 20 10 0 0 {name=V6 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {blocks/andgate/schematic/andgate.sym} -530 170 0 0 {name=x1}
C {blocks/inverter/schematic/inverter.sym} -280 160 0 0 {name=x2}
C {gnd.sym} -750 240 0 0 {name=l2 lab=GND}
