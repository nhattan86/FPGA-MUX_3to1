# FPGA-MUX_3to1

This VHDL code implements a **3-to-1 Multiplexer** using a combination of two 2-to-1 multiplexers.

- **Inputs**:
  - `A`, `B`, `C`: Three single-bit data inputs.
  - `s`: A 2-bit select signal.
- **Output**:
  - `Y`: A single output that reflects one of the three inputs based on the select signal `s`.

- **Functionality**:
  - The multiplexer chooses one of the inputs (`A`, `B`, or `C`) based on the value of `s`.
    - When `s = "00"`, `Y` is set to `A`.
    - When `s = "01"`, `Y` is set to `B`.
    - When `s = "10"`, `Y` is set to `C`.
  
This design is useful in digital systems where three possible sources need to be selected based on a 2-bit control signal. The use of 2-to-1 multiplexers as components allows for easy scalability and modular design in larger multiplexing structures.

https://www.youtube.com/watch?v=o9DpOUS50II
