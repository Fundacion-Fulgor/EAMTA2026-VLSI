v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 0 0 20 {lab=out}
N -70 -0 -70 50 {lab=in}
N -70 -50 -40 -50 {lab=in}
N -70 50 -40 50 {lab=in}
N 0 85 -0 115 {lab=vss}
N 0 0 75 0 {lab=out}
N -0 -20 0 0 {lab=out}
N -0 -120 -0 -80 {lab=vdd}
N -0 50 15 50 {lab=vss}
N 15 50 15 85 {lab=vss}
N 0 85 15 85 {lab=vss}
N 0 80 0 85 {lab=vss}
N -0 -80 20 -80 {lab=vdd}
N 20 -80 20 -50 {lab=vdd}
N 0 -50 20 -50 {lab=vdd}
N -95 -0 -70 -0 {lab=in}
N -70 -50 -70 -0 {lab=in}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 50 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_rf_pmos.sym} -20 -50 0 0 {name=M2
l=0.72u
w=1.0u
ng=1
m=1
rfmode=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 0 -120 0 0 {name=p1 lab=vdd}
C {iopin.sym} 0 115 0 0 {name=p2 lab=vss
}
C {opin.sym} 75 0 0 0 {name=p3 lab=out}
C {ipin.sym} -95 0 0 0 {name=p4 lab=in}
