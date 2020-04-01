Extraction of molecules from images or .pdf files is never perfect. This tool allows to visualize and edit (future work) the strucures generated.

Extraction (outside the scope of the article).

The data in the input folder were generated from  

input/unige_5398_attachment01.pdf

using 

osra-2.1.0-1/src/osra input/unige_5398_attachment01.pdf -l osra-2.1.0-1/dict/spelling.txt -a osra-2.1.0-1/dict/superatom.txt -f sdf -w  input/allcompounds.sdf --embedded-format inchi -b -c -d -g -p -o input/images/struct -e

All structures are stored in a single file :

unige_5398_attachment01_structures/allcompounds.sdf
and the images in the input/images folder with number starting at 0!

The [script](https://openbabel.org/docs/dev/Command-line_tools/babel.html) is the following:

obabel input/allcompounds.sdf -o sdf -O input/separated_sdf/str.sdf -m -e
obabel input/allcompounds.sdf -o sdf -O input/separated_sdf/strH.sdf -m -h -e 
obabel input/allcompounds.sdf -o svg -O input/separated_svg/str.svg -m -e 
obabel input/allcompounds.sdf -o svg -O input/separated_svg/strH.svg -m -h -e
obabel input/allcompounds.sdf -o png -O input/separated_png/str.png -m -e 
obabel input/allcompounds.sdf -o png -O input/separated_png/strH.png -m -e -h
// problem with png

Note: -h adds explicit Hydrogen.
Note: -b black background.
Note: -e continues after error.
This extracs the tag indicating the page number in the pdf file.

obabel input/allcompounds.sdf -otxt --title "" --append Page -O input/page-number/in.txt


[more info and options](https://openbabel.org/docs/dev/Command-line_tools/babel.html#babel-options)

The files are strored in input/separated_sdf folder with numbers starting at 1. (unlike images!)

[Edit](index.html) first structure


[Look](index.html) at all structures
