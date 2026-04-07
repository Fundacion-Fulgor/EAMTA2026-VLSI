v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 150 90 240 90 {lab=avss1p8}
N 280 -230 280 -200 {lab=avss1p8}
N 380 -230 380 -200 {lab=avdd1p8}
N 480 -230 480 -200 {lab=clk}
N 280 -140 280 -110 {lab=GND}
N 380 -140 380 -120 {lab=avss1p8}
N 480 -140 480 -120 {lab=avss1p8}
N 150 -80 150 -30 {lab=avdd1p8}
N 240 60 240 90 {lab=avss1p8}
N 50 -0 100 -0 {lab=0b}
N 180 0 240 0 {lab=#net1}
N 150 30 150 90 {lab=avss1p8}
N -50 180 -20 180 {lab=clk}
N 60 180 110 180 {lab=nclk}
N 30 120 30 150 {lab=avdd1p8}
N 30 210 30 250 {lab=avss1p8}
N -280 -140 -250 -140 {lab=clk}
N -280 -160 -250 -160 {lab=avdd1p8}
N -280 -120 -250 -120 {lab=avdd1p8}
N -280 -100 -250 -100 {lab=0b}
N -280 -60 -250 -60 {lab=avss1p8}
N -280 -80 -250 -80 {lab=avss1p8}
N -280 -40 -250 -40 {lab=nclk}
C {capa.sym} 240 30 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 150 -80 0 0 {name=p1 sig_type=std_logic lab=avdd1p8
}
C {lab_pin.sym} 240 90 2 0 {name=p3 sig_type=std_logic lab=avss1p8}
C {vsource.sym} 280 -170 0 0 {name=V4 value= DC\{vss\} savecurrent=false}
C {vsource.sym} 380 -170 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {vsource.sym} 480 -170 0 0 {name=V6 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\} DC 0 AC 0") savecurrent=false}
C {lab_pin.sym} 280 -230 0 0 {name=p5 sig_type=std_logic lab=avss1p8
}
C {lab_pin.sym} 380 -230 0 0 {name=p6 sig_type=std_logic lab=avdd1p8
}
C {lab_pin.sym} 480 -230 0 0 {name=p7 sig_type=std_logic lab=clk
}
C {lab_pin.sym} 480 -120 0 0 {name=p10 sig_type=std_logic lab=avss1p8
}
C {gnd.sym} 280 -110 0 0 {name=l1 lab=GND}
C {netlist_not_shown.sym} 10 -320 0 0 {name=SIMULATION only_toplevel=false
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
plot v(clk) v(0b)+1.2
reset
dc V6 0 1.2 0.01
setplot dc
set filetype = ascii
write dcsweep.raw
.endc
.end
"}
C {blocks/inverter/schematic/inverter.sym} 130 -10 0 0 {name=x2}
C {lab_pin.sym} 380 -120 0 0 {name=p13 sig_type=std_logic lab=avss1p8
}
C {blocks/inverter/schematic/inverter.sym} 10 170 0 0 {name=x3}
C {lab_pin.sym} -50 180 0 0 {name=p2 sig_type=std_logic lab=clk
}
C {lab_pin.sym} 110 180 2 0 {name=p14 sig_type=std_logic lab=nclk
}
C {lab_pin.sym} 30 120 0 0 {name=p16 sig_type=std_logic lab=avdd1p8
}
C {lab_pin.sym} 30 250 0 0 {name=p17 sig_type=std_logic lab=avss1p8}
C {lab_pin.sym} -250 -160 2 0 {name=p9 sig_type=std_logic lab=avdd1p8
}
C {lab_pin.sym} -250 -100 2 0 {name=p15 sig_type=std_logic lab=0b
}
C {lab_pin.sym} 50 0 0 0 {name=p23 sig_type=std_logic lab=0b
}
C {blocks/count1bit/schematic/count1bit.sym} -430 -100 0 0 {name=x1}
C {lab_pin.sym} -250 -140 2 0 {name=p18 sig_type=std_logic lab=clk
}
C {lab_pin.sym} -250 -40 2 0 {name=p19 sig_type=std_logic lab=nclk
}
C {lab_pin.sym} -250 -60 2 0 {name=p21 sig_type=std_logic lab=avss1p8
}
C {lab_pin.sym} -250 -80 2 0 {name=p4 sig_type=std_logic lab=avss1p8
}
C {lab_pin.sym} -250 -120 2 0 {name=p8 sig_type=std_logic lab=avdd1p8
}
