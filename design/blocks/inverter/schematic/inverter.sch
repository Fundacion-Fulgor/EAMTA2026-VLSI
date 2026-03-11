v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 560 940 560 990 {lab=out}
N 560 1020 560 1100 {lab=vss}
N 560 770 560 850 {lab=vdd}
N 500 850 520 850 {lab=in}
N 500 940 500 1020 {lab=in}
N 500 1020 520 1020 {lab=in}
N 480 940 500 940 {lab=in}
N 500 850 500 940 {lab=in}
N 560 940 580 940 {lab=out}
N 560 880 560 940 {lab=out}
C {sg13g2_pr/sg13_lv_nmos.sym} 540 1020 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 540 850 0 0 {name=M2
l=0.13u
w=0.5u
ng=1
m=1
rfmode=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 560 770 0 0 {name=p1 lab=vdd}
C {iopin.sym} 580 940 0 0 {name=p2 lab=out}
C {iopin.sym} 560 1100 0 0 {name=p3 lab=vss}
C {iopin.sym} 480 940 2 0 {name=p4 lab=in}
