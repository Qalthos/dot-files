#!/bin/bash
# Assuming the repo has been installed to ~/dot-files:

cd ~/dot-files
for file in *; do
    rm -r ~/.$file
    ln -s ~/dot-files/$file ~/.$file
done
cd -
