v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 160 -30 160 {lab=in}
N -50 -20 -50 160 {lab=in}
N -50 -20 -30 -20 {lab=in}
N 30 -20 50 -20 {lab=out}
N 50 -20 50 160 {lab=out}
N 30 160 50 160 {lab=out}
N -70 -20 -50 -20 {lab=in}
N 50 -20 70 -20 {lab=out}
N 0 -20 0 60 {lab=vdd}
N 0 60 70 60 {lab=vdd}
N 0 80 0 160 {lab=vss}
N 0 80 70 80 {lab=vss}
N -0 200 -0 220 {lab=#net1}
N -0 220 50 220 {lab=#net1}
N 0 -80 0 -60 {lab=a_neg}
N 0 -80 70 -80 {lab=a_neg}
N 50 220 70 220 {lab=#net1}
C {sky130_fd_pr/pfet_01v8.sym} 0 -40 1 0 {name=M0
W=1.5
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 0 180 1 1 {name=M1
W=0.75
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 70 60 0 0 {name=p3 lab=vdd}
C {iopin.sym} 70 80 0 0 {name=p1 lab=vss}
C {iopin.sym} 70 -20 0 0 {name=p2 lab=out}
C {iopin.sym} -70 -20 2 0 {name=p4 lab=in}
C {iopin.sym} 70 -80 0 0 {name=p5 lab=a_neg}
C {iopin.sym} 70 220 0 0 {name=p6 lab=a_pos}
