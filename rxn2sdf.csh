#!/bin/csh
set s="input/separate_reactions_rxn"
foreach toto (`ls $s/*rxn`)
echo "Generating images for $toto"
set output=`echo $toto|sed s/".rxn"//g`
echo $output
set output2=`echo $output|sed s/separate_reactions/separate_reactions_svg/g`
set output3=`echo $output|sed s/separate_reactions/separate_reactions_png/g`
obabel $toto -o svg -O $output2.svg 
obabel $toto -o png -O $output3.png
end
