v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 150 90 240 90 {lab=avss1p8}
N 70 -80 150 -80 {lab=avdd1p8}
N 70 -130 70 -80 {lab=avdd1p8}
N 0 -80 70 -80 {lab=avdd1p8}
N 80 0 80 30 {lab=vout}
N 280 -230 280 -200 {lab=avss1p8}
N 380 -230 380 -200 {lab=avdd1p8}
N 480 -230 480 -200 {lab=vb}
N 280 -140 280 -110 {lab=GND}
N 380 -140 380 -120 {lab=avss1p8}
N 480 -140 480 -120 {lab=avss1p8}
N 0 -80 0 -50 {lab=avdd1p8}
N 150 -80 150 -30 {lab=avdd1p8}
N 240 60 240 90 {lab=avss1p8}
N -0 50 0 90 {lab=avss1p8}
N -30 90 0 90 {lab=avss1p8}
N 50 -0 80 0 {lab=vout}
N 180 0 240 0 {lab=#net1}
N 150 30 150 90 {lab=avss1p8}
N 80 0 100 -0 {lab=vout}
N 480 -80 480 -60 {lab=va}
N 480 0 480 30 {lab=avss1p8}
N 0 90 150 90 {lab=avss1p8}
N -80 -10 -50 -10 {lab=va}
N -80 10 -50 10 {lab=vb}
C {capa.sym} 240 30 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 70 -130 0 0 {name=p1 sig_type=std_logic lab=avdd1p8
}
C {lab_pin.sym} -80 10 0 0 {name=p2 sig_type=std_logic lab=vb
}
C {lab_pin.sym} -30 90 0 0 {name=p3 sig_type=std_logic lab=avss1p8}
C {lab_pin.sym} 80 30 0 0 {name=p4 sig_type=std_logic lab=vout
}
C {vsource.sym} 280 -170 0 0 {name=V4 value= DC\{vss\} savecurrent=false}
C {vsource.sym} 380 -170 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {vsource.sym} 480 -170 0 0 {name=V6 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {lab_pin.sym} 280 -230 0 0 {name=p5 sig_type=std_logic lab=avss1p8
}
C {lab_pin.sym} 380 -230 0 0 {name=p6 sig_type=std_logic lab=avdd1p8
}
C {lab_pin.sym} 480 -230 0 0 {name=p7 sig_type=std_logic lab=vb
}
C {lab_pin.sym} 480 -120 0 0 {name=p10 sig_type=std_logic lab=avss1p8
}
C {gnd.sym} 280 -110 0 0 {name=l1 lab=GND}
C {netlist_not_shown.sym} 10 -320 0 0 {nname=SIMULATION only_toplevel=false
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
plot v(va) v(vb) + 1.2 v(vout) + 2.4
set filetype = ascii
write dcsweep.raw
.endc
.end
"}
C {blocks/inverter/schematic/inverter.sym} 130 -10 0 0 {name=x2}
C {vsource.sym} 480 -30 0 0 {name=V1 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/2\} \{Tclk\}) DC 0 AC 0" savecurrent=false}
C {lab_pin.sym} 480 -80 0 0 {name=p8 sig_type=std_logic lab=va
}
C {lab_pin.sym} 480 30 0 0 {name=p11 sig_type=std_logic lab=avss1p8
}
C {lab_pin.sym} -80 -10 0 0 {name=p12 sig_type=std_logic lab=va
}
C {lab_pin.sym} 380 -120 0 0 {name=p13 sig_type=std_logic lab=avss1p8
}
C {blocks/xorgate/schematic/xorgate.sym} -50 0 0 0 {name=x1}
