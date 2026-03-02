v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 -109 -50 -79 {lab=avdd1p8}
N 100 -109 100 -79 {lab=avdd1p8}
N 170 -30 200 -30 {lab=#net1}
N 100 20 100 50 {lab=avss1p8}
N -50 20 -50 50 {lab=avss1p8}
N -120 -30 -90 -30 {lab=vin}
N 20 -30 60 -30 {lab=vout}
N 40 -50 40 -30 {lab=vout}
N -70 50 -50 50 {lab=avss1p8}
N -50 50 100 50 {lab=avss1p8}
N 200 -30 220 -30 {lab=#net1}
N 220 -30 220 -20 {lab=#net1}
N 220 40 220 50 {lab=avss1p8}
N 100 50 220 50 {lab=avss1p8}
N 320 -100 320 -70 {lab=avss1p8}
N 320 -190 320 -160 {lab=avdd1p8}
N 220 -190 220 -160 {lab=avss1p8}
N 220 -100 220 -70 {lab=GND}
N 410 -190 410 -160 {lab=vin}
N 410 -100 410 -70 {lab=avss1p8}
N 100 19 100 20 {lab=avss1p8}
N -50 19 -50 20 {lab=avss1p8}
C {blocks/inverter/schematic/inverter.sym} -50 -30 0 0 {name=x1}
C {blocks/inverter/schematic/inverter.sym} 100 -30 0 0 {name=x2}
C {capa.sym} 220 10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 220 -130 0 0 {name=V4 value=DC\{vss\} savecurrent=false}
C {vsource.sym} 320 -130 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {vsource.sym} 410 -130 0 0 {name=V6 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {netlist_not_shown.sym} -60 -250 0 0 {name=SIMULATION only_toplevel=false
value="
* Circuit Parameters
.param vdd = 1.8
.param vss = 0.0
.param Tclk = 10n
.options TEMP = 65.0
* Include Models
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT
* OP Parameters & Singals to save
.save all
*Simulations
.control
tran 0.01u 100n
setplot tran1
plot v(vin) v(vout)+2
reset
dc V6 0 1.8 0.01
setplot dc
plot vin vout ylabel vout xlabel vin
set filetype = ascii
write dcsweep.raw
.endc
.end
"}
C {lab_wire.sym} -50 -109 0 0 {name=p1 sig_type=std_logic lab=avdd1p8}
C {lab_wire.sym} 100 -109 0 0 {name=p2 sig_type=std_logic lab=avdd1p8
}
C {lab_wire.sym} -70 50 0 0 {name=p3 sig_type=std_logic lab=avss1p8}
C {lab_wire.sym} 40 -50 0 0 {name=p4 sig_type=std_logic lab=vout}
C {lab_wire.sym} -120 -30 0 0 {name=p5 sig_type=std_logic lab=vin}
C {lab_wire.sym} 320 -190 0 0 {name=p6 sig_type=std_logic lab=avdd1p8
}
C {lab_wire.sym} 220 -190 0 0 {name=p7 sig_type=std_logic lab=avss1p8
}
C {lab_wire.sym} 320 -70 0 0 {name=p8 sig_type=std_logic lab=avss1p8
}
C {lab_wire.sym} 410 -70 0 0 {name=p9 sig_type=std_logic lab=avss1p8
}
C {lab_wire.sym} 410 -190 0 0 {name=p10 sig_type=std_logic lab=vin}
C {gnd.sym} 220 -70 0 0 {name=l1 lab=GND}
