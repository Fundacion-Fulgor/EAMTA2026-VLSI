v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -280 0 -260 {lab=#net1}
N -80 -180 80 -180 {lab=out}
N 0 -200 0 -180 {lab=out}
N -80 -80 80 -80 {lab=vss}
N -140 -230 -140 -130 {lab=a_in}
N -140 -230 -40 -230 {lab=a_in}
N 140 -310 140 -130 {lab=b_in}
N 40 -310 140 -310 {lab=b_in}
N 0 -360 0 -340 {lab=vdd}
N -0 -80 -0 -60 {lab=vss}
N 0 -60 20 -60 {lab=vss}
N -0 -360 20 -360 {lab=vdd}
N -160 -180 -80 -180 {lab=out}
N -160 -230 -140 -230 {lab=a_in}
N 140 -310 160 -310 {lab=b_in}
N 130 -130 140 -130 {lab=b_in}
N 80 -80 90 -80 {lab=vss}
N 90 -100 90 -80 {lab=vss}
N 80 -180 90 -180 {lab=out}
N 90 -180 90 -160 {lab=out}
N -90 -100 -90 -80 {lab=vss}
N -90 -80 -80 -80 {lab=vss}
N -90 -180 -90 -160 {lab=out}
N -140 -130 -130 -130 {lab=a_in}
N -90 -130 -0 -130 {lab=vss}
N -0 -130 -0 -80 {lab=vss}
N 0 -130 90 -130 {lab=vss}
N 0 -230 80 -230 {lab=vdd}
N 80 -360 80 -230 {lab=vdd}
N -80 -310 -0 -310 {lab=vdd}
N -80 -360 -80 -310 {lab=vdd}
N -80 -360 0 -360 {lab=vdd}
N 20 -360 160 -360 {lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 20 -310 0 1 {name=M1
W=3
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
C {sky130_fd_pr/nfet_01v8.sym} -110 -130 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 110 -130 0 1 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} -20 -230 0 0 {name=M4
W=3
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
C {iopin.sym} -160 -230 2 0 {name=p4 lab=a_in
}
C {iopin.sym} -160 -180 2 0 {name=p1 lab=out
}
C {iopin.sym} 20 -60 0 0 {name=p2 lab=vss}
C {iopin.sym} 160 -360 0 0 {name=p3 lab=vdd
}
C {iopin.sym} 160 -310 0 0 {name=p5 lab=b_in
}
