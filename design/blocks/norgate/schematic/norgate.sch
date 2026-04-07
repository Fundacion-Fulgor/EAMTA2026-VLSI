v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -760 -340 -710 -340 {lab=b}
N -750 -240 -710 -240 {lab=a}
N -670 -310 -670 -270 {lab=#net1}
N -670 -430 -670 -340 {lab=vdd}
N -670 -240 -660 -240 {lab=vdd}
N -660 -340 -660 -240 {lab=vdd}
N -670 -340 -660 -340 {lab=vdd}
N -790 -110 -760 -110 {lab=b}
N -610 -110 -590 -110 {lab=a}
N -720 -110 -720 -30 {lab=vss}
N -640 -30 -550 -30 {lab=vss}
N -550 -110 -550 -30 {lab=vss}
N -720 -160 -720 -140 {lab=out}
N -670 -160 -550 -160 {lab=out}
N -550 -160 -550 -140 {lab=out}
N -670 -210 -670 -160 {lab=out}
N -720 -160 -670 -160 {lab=out}
N -550 -160 -520 -160 {lab=out}
N -640 -30 -640 10 {lab=vss}
N -720 -30 -640 -30 {lab=vss}
C {iopin.sym} -670 -430 2 0 {name=p3 lab=vdd}
C {iopin.sym} -640 10 2 0 {name=p4 lab=vss}
C {sg13g2_pr/sg13_lv_nmos.sym} -570 -110 0 0 {name=M1
l=0.15u
w=0.75u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -690 -240 0 0 {name=M4
l=0.15u
w=3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -740 -110 0 0 {name=M3
l=0.15u
w=0.75u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -690 -340 0 0 {name=M5
l=0.15u
w=3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -750 -240 0 0 {name=p8 sig_type=std_logic lab=a}
C {lab_pin.sym} -760 -340 0 0 {name=p9 sig_type=std_logic lab=b}
C {iopin.sym} -790 -110 2 0 {name=p2 lab=b}
C {iopin.sym} -610 -110 2 0 {name=p5 lab=a
}
C {iopin.sym} -520 -160 0 0 {name=p6 lab=out}
