#!/bin/bash

cd /usr/share/fonts/truetype/

#TODO: put validation if folder already exists
sudo mkdir ttf-monaco

cd ttf-monaco/

sudo wget http://www.gringod.com/wp-upload/software/Fonts/Monaco_Linux.ttf

#create an index of X font files in a directory
sudo mkfontdir

#go to parent folder /usr/share/fonts/truetype
cd ..

fc-cache
