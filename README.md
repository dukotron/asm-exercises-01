Exercises - Assembler Session 01
================================

How-to
------
The intended way to work on these exercises is to make a fork of the repository, and then work on your own fork. 

Solve / implement the exercises creating a new AS7 project for each of them (unless an exercise builds on the previous) - then commit at least once after each solved exercise.

```sh
git add <filenames(s) | --all>
git commit -m"Your description of what you have done"
git push
```

When done you are (more than) welcome to make a pull request, and I shall do my best to give you my feedback.

Now, let's get going!


Exercises
---------

All code should be written in assembler.

1. Open Atmel Studio and on the Start Page select *Download Documentation* (alternatively: Help > Add and Remove Help Content)
    * Download the "AVR Instruction Set Manual" and documentation for Atmel Studio.
    * Open the "AVR Instruction Set Manual" and find the description of `LDI`. Which registers can we load data into with `LDI`? Explain how this is related to the 16-bit Opcode for `LDI`.

1. Create a new assembler project for atmega2560 in Atmel Studio
    * How big is the program memory of the atmega2560 and how much ram does it have?
    * Replace the default code with 
        ```avrasm 
        ldi r16, 0b0100_0010    ; load value into register r16
        nop                     ; does nothing, but provides a place to put a breakpoint
        ```  
    * Place a breakpoint before `nop` and start debugging(F5). 
    * Open the *Processor Status* window and verify that register *R16* contains the correct value.


*Use the **simulator** in Atmel Studio 7 to verify your solutions to the following exercises.  
Commit your solution at the end of each exercise.*

3. Write a program that:
    * puts the decimal value 42 into register R16
    * puts the hexadecimal value 33 into register R17
    * puts the binary value 10110010 into register R18

1. Write a program that add the values 0x08 and 0xb3. Place the result in R18.

1. Write a program that calculates `34 + (55 - 12) + (3 * 33)` and puts the result in r16.

*Do the following exercises using the Arduino. A document describing how to use an Arduino with Atmel Studio can be found at the course homepage.
Commit your solution at the end of each exercise.*

6. Hello World (or turn on a led)
    * Open the "HelloWorld" Atmel Studio project.
    * Build the project, and program the arduino
    * Verify that the buildin led got turned on

1. Connect a LED to a digital pin (be sure to place it in serial with a resistor). Try to modify the program so that this led is turned on instead  
    (commit changes when done)

1. Modify the program so that the led is turned on and off continuously.  
    *Hint: one jump instruction is `rjmp` and a label looks like `mylabel:`*  