v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -260 -30 -190 -30 {lab=A}
N -100 100 -30 100 {lab=A}
N 10 -30 70 -30 {lab=B}
N -110 210 -30 210 {lab=B}
N 10 130 10 180 {lab=#net1}
N 10 240 10 310 {lab=GND}
N -150 -0 -150 30 {lab=OUT}
N -150 30 10 30 {lab=OUT}
N 10 50 10 70 {lab=OUT}
N 110 -0 110 30 {lab=OUT}
N 10 30 110 30 {lab=OUT}
N -150 -100 -150 -60 {lab=VDD}
N -20 -100 110 -100 {lab=VDD}
N 110 -100 110 -60 {lab=VDD}
N -20 -140 -20 -100 {lab=VDD}
N -150 -100 -20 -100 {lab=VDD}
N 10 50 100 50 {lab=OUT}
N 10 30 10 50 {lab=OUT}
C {sg13g2_pr/sg13_hv_pmos.sym} -170 -30 0 0 {name=M1
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 90 -30 0 0 {name=M2
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -10 100 0 0 {name=M3
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -10 210 0 0 {name=M4
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {iopin.sym} -260 -30 2 0 {name=p1 lab=A}
C {iopin.sym} -100 100 2 0 {name=p2 lab=A}
C {iopin.sym} 10 -30 2 0 {name=p3 lab=B}
C {iopin.sym} -110 210 2 0 {name=p4 lab=B}
C {gnd.sym} 10 310 0 0 {name=l1 lab=GND}
C {vdd.sym} -20 -140 0 0 {name=l2 lab=VDD}
C {iopin.sym} 100 50 0 0 {name=p5 lab=OUT}
