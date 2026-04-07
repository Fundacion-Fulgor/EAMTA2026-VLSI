v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -150 -250 -80 -250 {lab=vin}
N 270 -450 270 -300 {lab=avdd1p8}
N 460 -490 460 -440 {lab=avss1p8}
N 460 -380 460 -330 {lab=GND}
N 550 -490 550 -440 {lab=avdd1p8}
N 550 -380 550 -330 {lab=avss1p8}
N 640 -490 640 -440 {lab=vin}
N 640 -380 640 -330 {lab=avss1p8}
N 430 -140 430 -100 {lab=avss1p8}
N 270 -100 430 -100 {lab=avss1p8}
N 0 -210 0 -100 {lab=avss1p8}
N -50 -100 0 -100 {lab=avss1p8}
N 140 -280 140 -250 {lab=vout}
N 140 -250 190 -260 {lab=vout}
N 90 -250 140 -250 {lab=vout}
N -0 -430 -0 -290 {lab=avdd1p8}
N 270 -220 270 -100 {lab=avss1p8}
N 0 -100 270 -100 {lab=avss1p8}
N 360 -260 430 -260 {lab=#net1}
N 430 -260 430 -200 {lab=#net1}
C {lab_pin.sym} -150 -250 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_pin.sym} 0 -390 2 0 {name=p1 sig_type=std_logic lab=avdd1p8}
C {lab_pin.sym} -50 -100 0 0 {name=p4 sig_type=std_logic lab=avss1p8}
C {lab_pin.sym} 140 -280 1 0 {name=p5 sig_type=std_logic lab=vout}
C {lab_pin.sym} 270 -390 2 0 {name=p12 sig_type=std_logic lab=avdd1p8}
C {netlist_not_shown.sym} -180 -480 0 0 {name=SIMULATION only_toplevel=false
value="
* Circuit Parameters
.param vdd = 1.2
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
plot v(vin) v(vout)+1.2
reset
dc V6 0 1.2 0.01
setplot dc
plot vin vout ylabel vout xlabel vin
set filetype = ascii
write dcsweep.raw
.endc
.end
"}
C {capa.sym} 430 -170 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 460 -330 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 460 -490 1 0 {name=p21 sig_type=std_logic lab=avss1p8}
C {lab_pin.sym} 550 -330 3 0 {name=p22 sig_type=std_logic lab=avss1p8}
C {lab_pin.sym} 550 -490 1 0 {name=p23 sig_type=std_logic lab=avdd1p8}
C {lab_pin.sym} 640 -330 3 0 {name=p24 sig_type=std_logic lab=avss1p8}
C {lab_pin.sym} 640 -490 1 0 {name=p25 sig_type=std_logic lab=vin}
C {vsource.sym} 460 -410 0 0 {name=V4 value=DC\{vdd\} savecurrent=false}
C {vsource.sym} 550 -410 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {vsource.sym} 640 -410 0 0 {name=V6 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {blocks/inverter/schematic/inverter.sym} 70 -250 0 0 {name=x1}
C {blocks/inverter/schematic/inverter.sym} 340 -260 0 0 {name=x2}
