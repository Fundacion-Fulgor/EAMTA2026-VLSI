v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -70 20 20 20 {lab=in}
N 20 -40 20 20 {lab=in}
N 20 -40 90 -40 {lab=in}
N 20 90 90 90 {lab=in}
N 20 20 20 90 {lab=in}
N 130 -10 130 20 {lab=out}
N 130 20 280 20 {lab=out}
N 130 20 130 60 {lab=out}
N 130 90 220 90 {lab=vss}
N 220 90 220 160 {lab=vss}
N 220 160 280 160 {lab=vss}
N 130 120 130 160 {lab=vss}
N 130 160 220 160 {lab=vss}
N 130 -130 130 -70 {lab=vdd}
N 220 -130 280 -130 {lab=vdd}
N 130 -40 220 -40 {lab=vdd}
N 220 -130 220 -40 {lab=vdd}
N 130 -130 220 -130 {lab=vdd}
C {sg13g2_pr/sg13_lv_pmos.sym} 110 -40 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 110 90 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} -70 20 2 0 {name=p1 lab=in}
C {iopin.sym} 280 20 0 0 {name=p2 lab=out}
C {iopin.sym} 280 160 0 0 {name=p3 lab=vss}
C {iopin.sym} 280 -130 0 0 {name=p6 lab=vdd}
