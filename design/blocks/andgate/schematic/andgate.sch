v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -120 -0 -100 0 {lab=A}
N 150 0 190 0 {lab=B}
N -60 -120 -60 -30 {lab=vdd}
N 80 -120 230 -120 {lab=vdd}
N 230 -160 230 -120 {lab=vdd}
N 80 -120 80 -30 {lab=vdd}
N 40 -120 80 -120 {lab=vdd}
N -60 30 -60 70 {lab=#net1}
N 10 70 80 70 {lab=#net1}
N 80 30 80 70 {lab=#net1}
N 10 110 10 140 {lab=#net1}
N -60 70 10 70 {lab=#net1}
N 10 200 10 260 {lab=#net2}
N 200 110 230 110 {lab=#net1}
N 10 70 10 110 {lab=#net1}
N 270 170 270 200 {lab=Z}
N 200 230 230 230 {lab=#net1}
N 200 110 200 230 {lab=#net1}
N 10 110 200 110 {lab=#net1}
N 270 -120 270 80 {lab=vdd}
N 230 -120 270 -120 {lab=vdd}
N -60 0 -30 0 {lab=vdd}
N -30 -120 -30 -0 {lab=vdd}
N -60 -120 -30 -120 {lab=vdd}
N 40 -0 80 0 {lab=vdd}
N 40 -120 40 -0 {lab=vdd}
N -30 -120 40 -120 {lab=vdd}
N 270 110 330 110 {lab=vdd}
N 330 -120 330 110 {lab=vdd}
N 270 -120 330 -120 {lab=vdd}
N 10 320 10 360 {lab=vss}
N 70 360 150 360 {lab=vss}
N 150 360 150 400 {lab=vss}
N 270 260 270 360 {lab=vss}
N 150 360 270 360 {lab=vss}
N 10 290 40 290 {lab=vss}
N 40 290 40 360 {lab=vss}
N 10 360 40 360 {lab=vss}
N 10 170 70 170 {lab=vss}
N 70 170 70 360 {lab=vss}
N 40 360 70 360 {lab=vss}
N 270 230 300 230 {lab=vss}
N 300 230 300 360 {lab=vss}
N 270 360 300 360 {lab=vss}
N 270 170 360 170 {lab=Z}
N 270 140 270 170 {lab=Z}
N -80 290 -30 290 {lab=B}
N -120 -0 -120 170 {lab=A}
N -140 -0 -120 -0 {lab=A}
N -120 170 -30 170 {lab=A}
N -80 90 -80 290 {lab=B}
N -80 90 150 90 {lab=B}
N 150 0 150 90 {lab=B}
N 120 -0 150 0 {lab=B}
C {sg13g2_pr/sg13_lv_rf_pmos.sym} -80 0 0 0 {name=M1
l=0.72u
w=1.0u
ng=1
m=1
rfmode=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_rf_pmos.sym} 100 0 2 0 {name=M2
l=0.72u
w=1.0u
ng=1
m=1
rfmode=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_rf_nmos.sym} -10 170 0 0 {name=M3
l=0.72u
w=1.0u
ng=1
m=1
rfmode=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_rf_nmos.sym} -10 290 0 0 {name=M4
l=0.72u
w=1.0u
ng=1
m=1
rfmode=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_rf_pmos.sym} 250 110 0 0 {name=M5
l=0.72u
w=1.0u
ng=1
m=1
rfmode=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_rf_nmos.sym} 250 230 0 0 {name=M6
l=0.72u
w=1.0u
ng=1
m=1
rfmode=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} -140 0 2 0 {name=p1 lab=A}
C {iopin.sym} 230 -160 3 0 {name=p6 lab=vdd}
C {iopin.sym} 150 400 1 0 {name=p3 lab=vss}
C {iopin.sym} 190 0 0 0 {name=p2 lab=B}
C {iopin.sym} 360 170 0 0 {name=p4 lab=Z}
