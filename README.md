# Stopwatch Lab

**To run code, open .xpr file.**

Digital logic circuit running on Basys3 Board that implements stopwatch using BCD 7-segment Display. <br>
Display output on Basys3 board (BCD output) uses negative logic. As such, values of 0 -> on, while values of 1 -> off. <br>

BCD display has outputs A-G and works as illustrated below: <br>

![image](https://github.com/AAgarwal04/FPGALabs/assets/121470779/fc8d4b35-94a4-4a61-83c0-da22ff150669)<br>
<sub>Illustration provided by Dr. Jaydeep Kulkarni.</sub><br>

The stopwatch implemented 4 different modes: <br>
* Mode 1: Timer from 00.00 to 99.99 <br>
* Mode 2: Timer from 8-bit initial value (loaded onto the display in decimal) to 99.99. <br>
* Mode 3: Timer from 99.99 to 00.00. <br>
* Mode 4: Timer from 99.99 to an 8-bit final value. <br>

Switches would be used to determine the 8-bit values for Mode 2 and Mode 4. The switches would be inert for Modes 1 and 3. <br>
A reset button is present to bring the display segment back to the original initial value. This is dependant on the mode. <br>
The modes switch using separate board switches that are different from the switches used to load the initial value. <br>
A singular button is used as the start/stop button to perform the functions of a stopwatch.

The following HLSM was used to develop the structure of the code: <br>

<img width="632" alt="image" src="https://github.com/AAgarwal04/FPGALabs/assets/121470779/1b099bf7-1035-456b-a0dd-0a00b35965f4"> <br>

The project utilizes aspects of previous labs, including the hex-to-7segment display used for the BCD-to-7Segment Lab as well as the clock divider used in the Time Multiplexing Lab. <br>
The Modes.v files contains the code necessary for switching between modes and implements the stopwatch functionality. <br>
