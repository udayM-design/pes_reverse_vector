A "reverse vector" generally refers to a data structure or array where the elements or elements' order are reversed from their original order.
The term "reverse vector" itself is not standard terminology in computer science or programming, but it's often used to describe the process of reversing the elements within a vector, list, or array.

For example, if you have a vector with elements [1, 2, 3, 4, 5], reversing the vector would result in [5, 4, 3, 2, 1]. The order of the elements has been reversed.

Reversing a vector can be a common operation in programming when you need to process data in the reverse order or when you want to reverse the order of elements for various reasons, such as user interface display, data manipulation, or algorithm requirements.
```
iverilog pes_reverse_vector.v pes_reverse_vector_tb.v
./a.out
gtkwave reverse_vector_tb.vcd

```

![image](https://github.com/udayM-design/pes_reverse_vector/assets/93391726/f34a2b4a-52d1-4b14-a0ce-3cb27350d2dd)

```
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog pes_reverse_ector.v
synth -top VectorReverse
abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show

```
![image](https://github.com/udayM-design/pes_reverse_vector/assets/93391726/ecd410e3-ef49-4459-9b28-5eb9872eef30)

```
iverilog ../my_lib/verilog_model/primitives.v ../my_lib/verilog_model/sky130_fd_sc_hd.v pes_reverse_vector_netlist.v pes_reverse_vector_tb.v
./a.out
gtkwave reverse_vector_tb.vcd
```
![image](https://github.com/udayM-design/pes_reverse_vector/assets/93391726/9e8fdbc1-07d6-4a18-84c2-797c643e9a1f)

![image](https://github.com/udayM-design/pes_reverse_vector/assets/93391726/f3c0699b-7d96-463b-ada3-732c55797df4)
