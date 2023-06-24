# Double-Sevens

In this project the goal is to display hexadecimal numbers in the 7 segment display (creating an 8 completely lit up) by lighting up, or having a zero output, for the corresponding inputs. Each segment is set to one and to change to zero if that hexadecimal number includes the segment. In the first part of the project you design the VHDL files to create the 7 segment and light up the hexadecimal numbers in order (0-F). Then two seven segments are utilized to count (0-F) and once the right most makes one iteration the next seven segment counts "1" for that iteration. This pattern repeats until FF is displayed. In the second part of the project a two bit adder is made. Taking in two four bit numbers, a zero is added to each to create five bits so they can then be added together and accounted for a carry with the additional bit. The seven segment display represents the addition of the two five bit binary numbers in hexadecimal utilizing hex0 and hex1.




