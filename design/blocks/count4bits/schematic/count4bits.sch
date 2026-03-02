v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -100 -30 -80 -30 {lab=vdd}
N 80 -30 100 -30 {lab=vss}
N -120 -30 -100 -30 {lab=vdd}
N 100 -30 120 -30 {lab=vss}
N -150 10 -80 10 {lab=CE}
N -100 -30 -100 110 {lab=vdd}
N 100 -30 100 110 {lab=vss}
N -150 -30 -120 -30 {lab=vdd}
N 80 110 100 110 {lab=vss}
N -100 110 -80 110 {lab=vdd}
N -150 50 -40 50 {lab=CLK}
N 120 -30 140 -30 {lab=vss}
N 140 -30 150 -30 {lab=vss}
N 80 10 150 10 {lab=00}
N 80 150 150 150 {lab=01}
N 0 50 0 70 {lab=#net1}
N -120 70 0 70 {lab=#net1}
N -120 70 -120 150 {lab=#net1}
N -120 150 -80 150 {lab=#net1}
N -140 50 -140 190 {lab=CLK}
N -140 190 -40 190 {lab=CLK}
N -160 50 -150 50 {lab=CLK}
N -160 10 -150 10 {lab=CE}
N -160 -30 -150 -30 {lab=vdd}
N 40 50 150 50 {lab=CLR}
N 120 50 120 190 {lab=CLR}
N 40 190 120 190 {lab=CLR}
N -0 190 -0 210 {lab=#net2}
N -120 210 -0 210 {lab=#net2}
N -120 210 -120 290 {lab=#net2}
N -100 110 -100 250 {lab=vdd}
N -100 250 -80 250 {lab=vdd}
N -0 330 -0 350 {lab=#net3}
N -120 350 -0 350 {lab=#net3}
N -120 350 -120 430 {lab=#net3}
N -120 430 -80 430 {lab=#net3}
N -100 390 -80 390 {lab=vdd}
N -100 250 -100 390 {lab=vdd}
N -120 290 -80 290 {lab=#net2}
N -140 190 -140 330 {lab=CLK}
N -140 330 -40 330 {lab=CLK}
N -140 330 -140 470 {lab=CLK}
N -140 470 -40 470 {lab=CLK}
N 40 330 120 330 {lab=CLR}
N 120 190 120 330 {lab=CLR}
N 100 110 100 250 {lab=vss}
N 80 250 100 250 {lab=vss}
N 100 250 100 390 {lab=vss}
N 80 390 100 390 {lab=vss}
N 80 430 150 430 {lab=11}
N 80 290 150 290 {lab=10}
N 40 470 120 470 {lab=CLR}
N 120 330 120 470 {lab=CLR}
C {blocks/count1bit/schematic/count1bit.sym} 0 -10 0 0 {name=x1}
C {iopin.sym} -160 10 2 0 {name=p1 lab=CE}
C {iopin.sym} -160 -30 2 0 {name=p2 lab=vdd}
C {iopin.sym} 150 -30 0 0 {name=p3 lab=vss}
C {blocks/count1bit/schematic/count1bit.sym} 0 130 0 0 {name=x2}
C {iopin.sym} -160 50 2 0 {name=p4 lab=CLK}
C {iopin.sym} 150 10 0 0 {name=p5 lab=00}
C {iopin.sym} 150 150 0 0 {name=p6 lab=01}
C {iopin.sym} 150 50 0 0 {name=p7 lab=CLR}
C {blocks/count1bit/schematic/count1bit.sym} 0 270 0 0 {name=x3}
C {blocks/count1bit/schematic/count1bit.sym} 0 410 0 0 {name=x4}
C {iopin.sym} 150 290 0 0 {name=p8 lab=10}
C {iopin.sym} 150 430 0 0 {name=p9 lab=11}
