We used [OSRA](https://cactus.nci.nih.gov/osra/) to extract stuctures from pdf.

The extraction of molecules from images or .pdf files is never perfect. This tool allows to visualize and edit (future work) the generated structures.

# Extraction of structure using OSRA 

[On-line](https://cactus.nci.nih.gov/cgi-bin/osra/index.cgi) version of OSRA](https://cactus.nci.nih.gov/osra/).
The data produced here were using using a local installation of [osra-2.1.0-1](https://sourceforge.net/projects/osra/) after some minor modification in the cpp code (a few casting causing errors).

The data in the input folder were generated from  

`input/unige_5398_attachment01.pdf`

using 
```
osra-2.1.0-1/src/osra input/unige_5398_attachment01.pdf -l osra-2.1.0-1/dict/spelling.txt -a osra-2.1.0-1/dict/superatom.txt -f sdf -w  input/allcompounds.sdf --embedded-format inchi -b -c -d -g -p -o input/images/struct -e
```
All structures are stored in a single file :

unige_5398_attachment01_structures/allcompounds.sdf
and the images in the input/images folder with number starting at 0!

reactions were extracted using
```
osra-2.1.0-1/src/osra input/unige_5398_attachment01.pdf -l osra-2.1.0-1/dict/spelling.txt -a osra-2.1.0-1/dict/superatom.txt -f rxn -w  input/allreactions.sdf  -b -c -d -g -p -o input/images/reaction -e
```
[OSRA's options](optionsASRA)

# Extraction of individual .sdf file

The [scripts](https://openbabel.org/docs/dev/Command-line_tools/babel.html) used are the following:
```
obabel input/allcompounds.sdf -o sdf -O input/separated_sdf/str.sdf -m -e
obabel input/allcompounds.sdf -o sdf -O input/separated_sdf/strH.sdf -m -h -e 
obabel input/allcompounds.sdf -o svg -O input/separated_svg/str.svg -m -e 
obabel input/allcompounds.sdf -o svg -O input/separated_svg/strH.svg -m -h -e
obabel input/allcompounds.sdf -o png -O input/separated_png/str.png -m -e 
obabel input/allcompounds.sdf -o png -O input/separated_png/strH.png -m -e -h

obabel input/allreactions.rxn -o rxn -O input/separate_reactions_rxn/reac.rxn -m -e
obabel input/allreactions.rxn -o svg -O input/separate_reactions_svg/reac.svg -m -e
```
Note: The .png generated files are not opening on mac os...
Note: The .svg were used to generate the results page. 

Note: `-h` adds explicit Hydrogen.
Note: `-b` black background.
Note: `-e` continues after error.


This extracts the SD tag including the page number of the molecule in the [pdf](unige_5398_attachment01.pdf) file.
```
obabel input/allcompounds.sdf -otxt --title "" --append Page -O input/page-number/in.txt
```
[Other tags](SDtags.md)

[more info and options on open babel](https://openbabel.org/docs/dev/Command-line_tools/babel.html#babel-options)

The files are stored in `input/separated_sdf` folder with numbers starting at 1. (unlike images!)

# Extraction of text

From root:
```
npm i pdfjs-dist
node myPDFfileToText.js > extractedText.txt
```

