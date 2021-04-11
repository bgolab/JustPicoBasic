JustBasic is a BASIC interpreter for Raspberry PI PICO RP2040

State of work:
- the supported fetures are described in the manual and relevant examples are shown in *.bas files
- the code for the PICO board is compiled with 'no_flash' option so to test the code no flashing is required - just drag & drop the code to the PICO emulated disk, start the putty terminal and press enter
- although most features are already developed the project is considered in beta stage (reflected in binary names suffix: bxx)
- internal stuff will be improved to reduce the interpreter cycle time (some perf test were done - perf.txt, empty integer FOR-loop cycle is less than 4 microsec now)
- some hardware related examples / features will be targetted for Promoni Explorer Base board, later other displays will be supported
