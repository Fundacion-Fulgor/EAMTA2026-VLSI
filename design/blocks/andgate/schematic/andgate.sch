v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 130 90 150 {lab=#net1}
N 90 50 90 70 {lab=#net2}
N -0 50 90 50 {lab=#net2}
N -0 30 -0 50 {lab=#net2}
N 90 50 180 50 {lab=#net2}
N 180 30 180 50 {lab=#net2}
N 0 -50 0 -30 {lab=out}
N 10 -50 180 -50 {lab=out}
N 180 -50 180 -30 {lab=out}
N 0 -50 10 -50 {lab=out}
N 0 0 180 0 {lab=out}
N 90 -50 90 0 {lab=out}
N 90 210 90 230 {lab=vss}
N 180 50 180 130 {lab=#net2}
N 190 50 260 50 {lab=#net2}
N 190 130 260 130 {lab=#net2}
N 190 -50 300 -50 {lab=out}
N 300 -50 300 20 {lab=out}
N 300 160 300 230 {lab=vss}
N 100 230 300 230 {lab=vss}
N 300 80 300 100 {lab=out}
N -60 0 -40 0 {lab=a_in}
N -60 0 -60 100 {lab=a_in}
N -60 100 50 100 {lab=a_in}
N 220 0 240 0 {lab=b_in}
N 130 180 240 180 {lab=b_in}
N 240 0 240 180 {lab=b_in}
N 180 50 190 50 {lab=#net2}
N 180 -50 190 -50 {lab=out}
N 180 130 190 130 {lab=#net2}
N 90 230 100 230 {lab=vss}
N 90 100 210 100 {lab=vss}
N 210 100 210 230 {lab=vss}
N 0 180 90 180 {lab=vss}
N -0 180 -0 230 {lab=vss}
N 0 230 90 230 {lab=vss}
N 300 50 390 50 {lab=out}
N 300 -50 390 -50 {lab=out}
N 390 -50 390 50 {lab=out}
N 300 130 390 130 {lab=vss}
N 390 130 390 230 {lab=vss}
N 300 230 390 230 {lab=vss}
N 240 180 420 180 {lab=b_in}
N -90 -0 -60 -0 {lab=a_in}
N 300 90 420 90 {lab=out}
N 390 230 420 230 {lab=vss}
N 390 -50 420 -50 {lab=out}
C {sky130_fd_pr/pfet_01v8.sym} -20 0 0 0 {name=M0
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
C {sky130_fd_pr/pfet_01v8.sym} 200 0 0 1 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 70 100 0 0 {name=M2
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 110 180 0 1 {name=M3
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 280 50 0 0 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} 280 130 0 0 {name=M5
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
C {iopin.sym} 420 180 0 0 {name=p18 lab=b_in}
C {iopin.sym} -90 0 0 1 {name=p1 lab=a_in}
C {iopin.sym} 420 90 0 0 {name=p2 lab=out}
C {iopin.sym} 420 -50 0 0 {name=p3 lab=vdd}
C {iopin.sym} 420 230 0 0 {name=p4 lab=vss}
