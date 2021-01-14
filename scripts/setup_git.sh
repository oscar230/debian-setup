#!/bin/bash

# Clone repos
mkdir ~/repos
REPOS="
https://github.com/NullHypothesis/exitmap.git
https://github.com/oscar230/oscaande.se.git
https://github.com/oscar230/oscaande.onion.git
https://github.com/oscar230/loopbox.git
"
for R in $REPOS
do
	(cd ~/repos; git clone $R)
done