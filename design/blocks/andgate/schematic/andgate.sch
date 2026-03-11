v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -520 -50 -520 -30 {lab=a}
N -520 40 -450 40 {lab=b}
N -520 20 -520 40 {lab=b}
N -430 -470 -430 -430 {lab=vdd}
N -410 -430 -380 -430 {lab=vdd}
N -380 -470 -380 -430 {lab=vdd}
N -450 130 -450 160 {lab=vss}
N -410 130 -360 130 {lab=vss}
N -450 130 -410 130 {lab=vss}
N -360 130 -360 160 {lab=vss}
N -520 40 -520 60 {lab=b}
N -180 -300 -180 -230 {lab=vdd}
N -180 -170 -180 -120 {lab=vss}
N -150 -200 -40 -200 {lab=out}
N -520 -50 -450 -50 {lab=a}
N -520 -70 -520 -50 {lab=a}
N -410 40 -410 130 {lab=vss}
N -410 40 -400 40 {lab=vss}
N -400 -50 -400 40 {lab=vss}
N -410 -50 -400 -50 {lab=vss}
N -410 -20 -410 10 {lab=#net1}
N -410 -200 -410 -80 {lab=#net2}
N -410 -200 -230 -200 {lab=#net2}
N -500 -270 -500 -250 {lab=#net2}
N -410 -250 -360 -250 {lab=#net2}
N -360 -270 -360 -250 {lab=#net2}
N -410 -250 -410 -200 {lab=#net2}
N -500 -250 -410 -250 {lab=#net2}
N -500 -380 -500 -300 {lab=vdd}
N -500 -380 -410 -380 {lab=vdd}
N -410 -430 -410 -380 {lab=vdd}
N -430 -430 -410 -430 {lab=vdd}
N -410 -380 -360 -380 {lab=vdd}
N -360 -380 -360 -300 {lab=vdd}
N -410 -300 -390 -300 {lab=b}
N -570 -300 -540 -300 {lab=a}
C {iopin.sym} -520 20 2 0 {name=p1 lab=b}
C {iopin.sym} -520 -70 2 0 {name=p2 lab=a}
C {iopin.sym} -430 -470 2 0 {name=p3 lab=vdd}
C {iopin.sym} -450 160 2 0 {name=p4 lab=vss}
C {lab_pin.sym} -380 -470 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -520 -30 0 0 {name=p6 sig_type=std_logic lab=a}
C {lab_pin.sym} -520 60 0 0 {name=p7 sig_type=std_logic lab=b}
C {lab_pin.sym} -360 160 0 0 {name=p12 sig_type=std_logic lab=vss}
C {iopin.sym} -40 -200 0 0 {name=p13 lab=out}
C {sg13g2_pr/sg13_lv_nmos.sym} -430 40 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -520 -300 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {blocks/inverter/schematic/inverter.sym} -200 -210 0 0 {name=x1}
C {lab_pin.sym} -180 -300 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -180 -120 0 0 {name=p11 sig_type=std_logic lab=vss}
C {sg13g2_pr/sg13_lv_nmos.sym} -430 -50 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -380 -300 0 0 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -570 -300 0 0 {name=p8 sig_type=std_logic lab=a}
C {lab_pin.sym} -410 -300 0 0 {name=p9 sig_type=std_logic lab=b}
