TITLE: RC Step input testench
.PARAM vdd_var=1

**Netlist
C1      vin    vout     1f
R1      vout    GND     1k


**Sources
Vsin    vin     GND     0 PULSE(0 vdd_var 2n 1p 1p 1n 2n)


*Simulation
.SAVEALL
.OP
.TRAN 10p 40n

.GLOBAL GND
.END
