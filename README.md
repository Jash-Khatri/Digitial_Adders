# Digitial_Adders
This Repo contains code to Generate CLA &amp; CRA in verilog from HLL

# How to run the code?
* run the follow command to generate the N-bit CLA circuit in verilog. 
* Code will ask to input the value of N when you will run ./a.out enter any value in power of 2. 

g++ CLA_gen.cpp

./a.out

64

* After running the above command the CLA.v file will be generated in you current directory which is the verilog file for N-bit adder (N is 64 in this case)

- run the follow command to generate the N-bit CRA circuit in verilog. 
- Code will ask to input the value of N when you will run ./a.out enter any value in power of 2. 

g++ RCA_gen.cpp

./a.out

64

- After running the above command the RCA.v file will be generated in you current directory which is the verilog file for N-bit adder (N is 64 in this case)


# Comparative Analysis
![alt text](https://github.com/Jash-Khatri/Digitial_Adders/blob/main/index.png)
![alt text](https://github.com/Jash-Khatri/Digitial_Adders/blob/main/index1.png)

* Green line shows the result of CLA and Red line shows the result of CRA.
* We can see that time taken for CLA is much lesser than CRA as value of N increases as curve for CLA is almost flat which shows that CLA is much faster than CRA.
* amount of NAND gates required to realize CLA are more than that for CRA. This shows that CLA is much costlier to than CRA. 
