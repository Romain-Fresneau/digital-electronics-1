# Lab 1: ROMAIN-FRESNEAU

### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):

   ![Logic function](20220216_182418.jpg)


2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of demorgan is
begin
    f_o  <= (not b_i and  a_i) or (not c_i and  not b_i);
    fnand_o <= (not b_i nand  a_i) nand (not c_i nand  not b_i);
    fnor_o <= (not c_i nor  a_i)) nor (not b_i)) ;
end architecture dataflow;
```

3. Complete table with logic functions' values:

| **c** | **b** |**a** | **f(c,b,a)** | **f_NAND(c,b,a)** | **f_NOR(c,b,a)** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 | 1 |1  |
| 0 | 0 | 1 |  0| 0 | 0 |
| 0 | 1 | 0 | 0 |0  |0  |
| 0 | 1 | 1 |  0| 0 |0  |
| 1 | 0 | 0 | 1 | 1 |1  |
| 1 | 0 | 1 |  1|1  | 1 |
| 1 | 1 | 0 | 0 | 0 | 0 |
| 1 | 1 | 1 | 1 | 1 | 1 |

### Distributive laws

1. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!
   With these equations, we are trying to see if distributive laws are right, so that, we obtain this table, we can see both are the same.

   ![your figure](20220216_184713.jpg)

2. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://www.edaplayground.com/x/fTQ4)

