#!/bin/bash

NAME_TORSOCKS=/tmp/torsocks
mkdir $NAME_TORSOCKS
git clone git@github.com:dgoulet/torsocks.git $NAME_TORSOCKS
(cd $NAME_TORSOCKS/; ./autogen.sh)
(cd $NAME_TORSOCKS/; ./configure)
(cd $NAME_TORSOCKS/; make)
(cd $NAME_TORSOCKS/; sudo make install)