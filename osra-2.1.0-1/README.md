/Volumes/san256/users_for_mac_system_macPro/jeannerat/mygit/osra/osra-2.1.0-1/src

DJ made minor changes for compilation to pass.
executable in 
/Volumes/san256/users_for_mac_system_macPro/jeannerat/mygit/osra/osra-2.1.0-1/src
:
/Volumes/san256/users_for_mac_system_macPro/jeannerat/mygit/osra/osra-2.1.0-1/src/orca

https://sourceforge.net/p/osra/wiki/Usage/
## Brief usage

osra [-c] [-i] [-j] [-b] [-w <filename>] [-u <default: 0 rounds>] [-R <0..360>] [-e] [-d] [-a <configfile>] [-l <configfile>] [-f <can/smi/sdf>] [-g] [-p] [-s <dimensions, 300x400>] [-n] [-r <default: auto>] [-o <filename prefix>] [-t <0.2..0.8>] [--embedded-format] [--] [--version] [-h] <filename>

Most common use: osra filename

Use reaction output formats such as rxn, rsmi, or cmlr to run OSRA in reaction recognition mode instead of the default molecule recognition.
## Description

OSRA is a utility designed to convert graphical representations of chemical structures into SMILES or SDF. OSRA can read a document in any of the over 90 graphical formats parseable by GraphicsMagick and generate the SMILES or SDF representation of the molecular structure images encountered within that document.
Options

The program follows the usual GNU command line syntax, with long options starting with two dashes (`-').

  -i, --adaptive
     Adaptive thresholding pre-processing, useful for low light/low contrast images

  -c, --coordinates
    Show surrounding box coordinates (only for SDF/SMI/CAN output format)

  --embedded-format "format"
     Allows the user to have InChI or SMILES included in an SDF file as a molecular property

  -j,  --jaggy
    Additional thinning/scaling down of low quality documents

  -b,  --bond
    Show average bond length in pixels

  -w <filename>,  --write <filename>
    Write output to file

  -u <default: 0 rounds>,  --unpaper <default: 0 rounds>
    Pre-process image with unpaper algorithm, rounds

  -R <0..360>,  --rotate <0..360>
    Rotate image clockwise by specified number of degrees

  -e,  --page
    Show page number for PDF/PS/TIFF documents

  -d,  --debug
    Print out debug information on spelling corrections

  -a <configfile>,  --superatom <configfile>
    Superatom label map to SMILES

  -l <configfile>,  --spelling <configfile>
    Spelling correction dictionary

  -f <can/smi/sdf>,  --format <can/smi/sdf>
    Output format

  -g,  --guess
    Print out resolution guess

  -p,  --print
    Print out confidence estimate

  -s <dimensions, 300x400>,  --size <dimensions, 300x400>
    Resize image on output

  -n,  --negate
    Invert color (white on black)

  -r <default: auto>,  --resolution <default: auto>
    Resolution in dots per inch

  -o <filename prefix>,  --output <filename prefix>
    Write out images to files

  -t <0.2..0.8>,  --threshold <0.2..0.8>
    Gray level threshold

  --,  --ignore_rest
    Ignores the rest of the labeled arguments following this flag.

  --version
    Displays version information and exits.

  -h,  --help
    Displays usage information and exits.

  <filename>
    (required)  input file

Files

    /usr/local/share/spelling.txt

This is system-wide spelling corrections dictionary for atom labels and abbreviations that might not be correctly parsed by OCR engine. The default location of the file can be redefined with -l option. You can run with -d option for more debug output on OCR processing and spelling corrrection.

    /usr/local/share/superatom.txt

This is system-wide translations of superatom labels to SMILES codes. The default location of the file can be redefined with -a option.
Diagnostics

The following diagnostics may be issued on stderr: Cannot open file "dummy.png" - the given input file does not exist or is not readable. OSRA provides some return codes, that can be used in scripts.

    Code 0: Program exited successfully.
    Code 1: Some error occured. See above mentioned error messages.

Bugs

Report all bugs which are functionality related to SourceForge BugTracker. Report all bugs which are Debian-packaging or Debian-specific to Debian BugTracker.
Related

Wiki: Home