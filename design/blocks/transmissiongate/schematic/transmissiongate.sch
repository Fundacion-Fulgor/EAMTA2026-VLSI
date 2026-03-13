v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 380 1230 380 1250 {lab=out}
N 380 1230 430 1230 {lab=out}
N 380 1200 380 1230 {lab=out}
N 300 1280 340 1280 {lab=en}
N 300 1170 340 1170 {lab=noten}
N 380 1120 380 1140 {lab=in}
N 380 1310 380 1350 {lab=in}
N 380 1120 400 1120 {lab=in}
N 380 1100 380 1120 {lab=in}
N 380 1170 470 1170 {lab=vdd}
N 380 1280 470 1280 {lab=vss}
C {sg13g2_pr/sg13_lv_pmos.sym} 360 1170 0 0 {name=M1
l=0.15u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 360 1280 0 0 {name=M2
l=0.15u
w=0.75u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} 300 1170 2 0 {name=p1 lab=noten}
C {iopin.sym} 300 1280 2 0 {name=p2 lab=en}
C {iopin.sym} 380 1100 2 0 {name=p3 lab=in}
C {iopin.sym} 430 1230 0 0 {name=p5 lab=out}
C {lab_pin.sym} 400 1120 2 0 {name=p6 sig_type=std_logic lab=in}
C {lab_pin.sym} 380 1350 2 0 {name=p4 sig_type=std_logic lab=in}
C {iopin.sym} 470 1170 0 0 {name=p7 lab=vdd}
C {iopin.sym} 470 1280 0 0 {name=p8 lab=vss}
