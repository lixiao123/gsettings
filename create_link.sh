# Create link to backfiles

#!/bin/bash
linkfiles=$(ls -A|egrep "^\.[^g]")
echo $linkfiles

for f in ${linkfiles}
do
	if [ ! -f ~/"$f" ]
	then
		ln -rs $f ~/$f
	else
		echo "add function later"
	fi
done
