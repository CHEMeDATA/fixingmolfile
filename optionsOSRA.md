
Other options: 
-t, --threshold: Gray level threshold, default is 0.2
                 for black-and-white images, 

-n, --negate:    Inverts colors (for white on black images),

-o, --output:    Sets a prefix for writing recognized images to files - i.e.
                 "-o tmp" will create files tmp0.png, tmp1.png... for
                 each of the structures,

-s, --size:      Resize images on output - can be useful for running OSRA
                 as a backend for a webservice. Example: "-s 300x400".

-g,  --guess:    Prints out resolution guess when you chose to have automatic
     		 resolution estimate

-p,  --print:    Prints out the value of confidence function estimate


-f,  --format:  Output format (either smi for SMILES or sdf for SD file format)

-d,  --debug:    Print out debug information on spelling corrections

-a <configfile>,  --superatom <configfile>:  Superatom label map to SMILES (superatom.txt by default)

-l <configfile>,  --spelling <configfile>:   Spelling correction dictionary (spelling.txt by default)

-u <rounds>,  --unpaper <rounds>
     Pre-process image with unpaper algorithm, rounds (default: do not pre-process)

-w <filename>, --write <filename> Write output to a file instead of stdout

-b, --bond: Print out average bond length in pixels

-j, --jaggy: Additional thinning/scaling down of low quality documents

-i, --adaptive:    Adaptive thresholding pre-processing, useful for low light/low
     contrast images

-c,  --coordinates: Show surrounding box coordinates (only for SDF/SMI/CAN output format)

--embedded-format <format>: Allows the user to have InChI or SMILES  included in an SDF file
as a molecular property