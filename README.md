# Adder Lab
**To run code, open .xpr file.**

Verilog Code for running RCA and CLA logic circuit.

### Ripple Carry Adder (RCA)
 
<img width="311" alt="image" src="https://github.com/AAgarwal04/FPGALabs/assets/121470779/b6bbcad2-bd08-49a5-9220-eb40fdeb2409"> <br>
<sub>Circuit and overall code structure provided by Dr. Jaydeep Kulkarni.</sub>

RCA consists of small one bit adders. Carry out of each adder is tied to carry in of following adder. Adding process is similar to what one performs on paper.

![image](https://github.com/AAgarwal04/FPGALabs/assets/121470779/988cc304-1f05-4b06-aad5-b6a25e013163)<br>
<sub>Circuit structure generated through Xilinx Vivado software.</sub>

RCA circuit does not take a large amount of space. However, the critical path is relatively long.

### Carry Lookahead Adder (CLA)

Instead of performing addition in a sequential manner, the CLA performs addition all at once by using a propogate, generate, and carry register.

Below is the logic for the four digit hexadecimal CLA adder. A and B are both 16 bit numbers.

<img width="304" alt="image" src="https://github.com/AAgarwal04/FPGALabs/assets/121470779/f3b20eb1-fb8e-4cba-8e9b-3db6264b38ff"> <br>

Because the CLA circuit performs addition steps instantaneously, the critical path is relatively short. However, because of the number of operations being performed, the size of the circuit is significantly larger than an RCA circuit.

![image](https://github.com/AAgarwal04/FPGALabs/assets/121470779/80115ec3-2bd6-4d40-b50d-58c9a3af4452) <br>
<sub>Circuit structure generated through Xilinx Vivado software.</sub>
