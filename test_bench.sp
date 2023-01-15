*

.CONNECT GND 0
.global GND 0

.INCLUDE /home/centos/inf152153/PRO/pro/nand2.spi
.INCLUDE /home/centos/inf152153/PRO/pro/nand3.spi
.INCLUDE /home/centos/inf152153/PRO/pro/nand4.spi
.INCLUDE /home/centos/inf152153/PRO/pro/inv.spi

xInvertorX1 X1 X1N VDD GND INV
xInvertorX2 X2 X2N VDD GND INV
xInvertorX3 X3 X3N VDD GND INV
xInvertorX4 X4 X4N VDD GND INV

xNand1 X4N X3N X2 BO VDD GND NAND3
xNand2 X4N X2N X1 DO VDD GND NAND3
xNand3 X4 X3N X2N X1N FO VDD GND NAND4
xNand4 BO DO HO VDD GND NAND2

xInvertorX5 HO HON VDD GND INV

xNand5 HON FO OUT VDD GND NAND2

VDS VDD GND DC 1.2V
VX1 X1 GND PULSE(0 1.2 0 0.3n 0.3n 50n 100n)
VX2 X2 GND PULSE(0 1.2 0 0.3n 0.3n 100n 200n)
VX3 X3 GND PULSE(0 1.2 0 0.3n 0.3n 200n 400n)
VX4 X4 GND PULSE(0 1.2 0 0.3n 0.3n 400n 800n) 
