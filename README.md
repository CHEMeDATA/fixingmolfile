## Extraction 
Extraction of molecules from images or .pdf files is never perfect. This tool allows to visualize and edit (future work) the SDF (.mol compatible) structures generated using [OSRA](https://cactus.nci.nih.gov/osra/).

[Details](generation) about the extraction of the structures

The structures were extracted from this [pdf](input/unige_5398_attachment01.pdf).
## Results 
The visualization of extracted [reactions](listReactions_svg.html) ([png](listReactions.html) image rendering) **Does not work / problem with obabel.**

[Visualize](listCompounds_svg.html) all extracted structures ([png](listCompounds.html) image rendering).

[Short list](listCompoundsShort.html) of extracted structures.

Note: The later lists do not work locally because of problems with .svg files.

**Project: click on the structure on the right to edit it.**

## Correct errors 

[Edit](displaySingleStructureForEdition.html) first structure.

**Currently no serious option to save the edited structure are proposed**

## Generation of json file
```
npm i 
npm i --save-dev esm
node -r esm ./generate_json.js
```


