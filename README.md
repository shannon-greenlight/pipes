# Pipes - 8 Harmonic Tracking Oscillator with 8 VCAs
Pipes is a 14HP Eurorack module designed and made by Greenface Labs.
Used in conjunction with a VCO and an 8 output CV generating module such as the Bonkulator, Pipes is a great way to set the amplitude envelopes of a tone and 7 of its harmonics. The harmonics are 1f, 2f, 3f, 4f, 5f, 6f, 7f and 8f. They are generated as square waves.
Pipes features one signal input, a signal output, an output level adjustment pot, and eight CV inputs to the VCAs.
The signal input level must be greater than .1Vp-p for the phase-locked loop circuits to be able to lock on.
The output signal ranges from 0 to 10Vp-p. The CV inputs range is 0 - 10V.

These repos contain the materials needed to construct the Pipes main board and the front panel. The files are for KiCAD 6.0. 
Go to the Greenlight Kicad repo to get the needed libraries. The gerber files work with JLCPC and will most likely work with other board manufacturers.

When using the JLCPCB assembly service, the BOM is split into 3 parts.
- bom/lcsc/pipes_bom.xlsx : The parts to be assembled by JLCPCB
- bom/digi-key/pipes_bom.xlsx : The remaining parts to be assembled by user
- bom/other/other_bom.xlsx : The parts that must be bought from sources other than JLCPCB and Digi-Key

Also, when an assembly service is used, a component position file is required. This file's path is: fab/pipes_cpl.xlsx

notes: 	The bom and cpl files are auto-generated from the BOM files produced by KiCAD. You will need to refresh the data and save the file when changes to 
the schematic that affect the BOM or changes to the board layout occur.
If they exist, the extra parts and additional data fields that appear on the schematic help to produce the different BOM files. 
They must be maintained for these BOMs to come out right.
