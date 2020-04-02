#!/bin/csh
set s="input/separated_sdf"
foreach toto (`ls $s/*sdf`)
echo "Generating images for $toto"
set output=`echo $toto|sed s/".sdf"//g`
echo $output
set output2=`echo $output|sed s/separated/separated_svg/g`
set output3=`echo $output|sed s/separated/separated_png/g`
obabel $toto -o svg -O $output2.svg 
obabel $toto -o png -O $output3.png
end
