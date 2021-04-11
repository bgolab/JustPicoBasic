JustBasic is a BASIC interpreter for Raspberry PI PICO RP2040

State of work:
- although most features are already developed the project is considered a beta stage (reflected in binary names suffix: bxx)
- the project is targetted for both Windows and PICO (Windows is used mostly as development platform now)
- the supported features are described in the manual and relevant examples are shown in *.bas files (those with PICO suffixes are targetted for real PICO hardware, others are for WINDOWS & PICO releases)
- the code for the PICO board is compiled with 'no_flash' option so to test the code no flashing is required - just drag & drop the code to the PICO emulated disk, start the putty terminal and press enter
- internal stuff will be improved to reduce the interpreter cycle time (some perf test were done - perf.txt, empty integer FOR-loop cycle is less than 4 usec now) - since no optimisation was applied so far it is expected to get better perf numbers
- some hardware related examples / features are targetted for Promoni Explorer Base board (buttons, graphic, etc), later other displays will be supported
- it is assumed that POKE / PEEK will be used to address missing hardware features (the PICO examples show how to use systick timer) - NOTE: PEEK / POKE were not heavily tested - use them at your own RISK
