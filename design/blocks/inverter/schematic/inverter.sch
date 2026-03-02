v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 -50 70 -50 {lab=vdd}
N -0 -90 -0 -80 {lab=vdd}
N 0 -90 70 -90 {lab=vdd}
N 0 10 0 20 {lab=out}
N 0 50 70 50 {lab=vss}
N 70 -50 80 -50 {lab=vdd}
N 70 -90 80 -90 {lab=vdd}
N 80 -90 80 -50 {lab=vdd}
N 0 80 0 90 {lab=vss}
N 0 90 80 90 {lab=vss}
N 80 50 80 90 {lab=vss}
N 70 50 80 50 {lab=vss}
N -0 -20 -0 10 {lab=out}
N -50 -50 -40 -50 {lab=in}
N -50 -50 -50 50 {lab=in}
N -50 50 -40 50 {lab=in}
N -60 0 -50 0 {lab=in}
N 0 0 10 0 {lab=out}
N 80 50 90 50 {lab=vss}
N 80 -50 90 -50 {lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} -20 50 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -20 -50 0 0 {name=M2
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
C {iopin.sym} 90 -50 0 0 {name=p1 lab=vdd
}
C {iopin.sym} 10 0 0 0 {name=p2 lab=out
}
C {iopin.sym} 90 50 0 0 {name=p3 lab=vss}
C {iopin.sym} -60 0 2 0 {name=p4 lab=in
}
