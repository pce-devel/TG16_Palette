# Turbografx-16 / PC Engine Composite Color Palette Generator

<p align="center"> <img width="586" height="242" src="https://github.com/user-attachments/assets/cd547655-25e3-4980-82fa-24be9ee656bf"> </p>

## What is it?
For years, people had assumed that the PC Engine's composite output was simply an encoded version of the RGB colors output from the video processor. No stock releases of the TG16 or PC Engine had RGB output by default, so composite was the de-facto standard for the system. Some screenshots which showed some color scenarios that were clearly not intended by the artist led to a search for why the RGB colors and Composite output didn't match well. Furrtek decapped the encoder and discovered that there was a lookup table of values that was indexed by the RGB color, but did not linearly reflect these values.

After much trial and error Jamie Blanks (Kitrinx) used this dumped LUT to find a reasonable approximation of the color math that matched vectorscope plots provided by Artemio. The code here uses this math to generate palette files for use in emulation.

## Building
To build, simply run `make` in the directory or manually compile with gcc or clang using the `gcc -o tg16color tg16color.c -lm` command. 

Simply running the program will generate the palettes for both Mednafen/Mesen2 and MiSTer with no additional input required from the user.
