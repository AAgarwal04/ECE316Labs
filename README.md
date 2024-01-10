# Stopwatch Lab

**To run code, open .xpr file.**

Digital logic circuit running on Basys3 Board that implements stopwatch using BCD 7-segment Display. <br>
Display output on Basys3 board (BCD output) uses negative logic. As such, values of 0 -> on, while values of 1 -> off. <br>

BCD display has outputs A-G and works as illustrated below: <br>

![image](https://github.com/AAgarwal04/FPGALabs/assets/121470779/fc8d4b35-94a4-4a61-83c0-da22ff150669)<br>
<sub>Illustration provided by Dr. Jaydeep Kulkarni.</sub><br>

The stopwatch implemented 4 different modes. <br>

The digit that was to be displayed was a decimal digit. <br>
Since a 4-bit input was being used, and value above **9** was designed to turn the display off.

The following truth table was used to design the logic for the lab: <br>

![image](https://github.com/AAgarwal04/FPGALabs/assets/121470779/55554de9-2a45-4ce2-a9b1-6bf0ccbb1c18) <br>
**S3, S2, S1, S0 correspond to switches.** <br>
**A-G correspond to the display outputs.** <br>
**a0 corresponds to an0 on the display output.**

Designed BCD-to-7segment decoder on Basys FPGA using Verliog to simulate counting.
