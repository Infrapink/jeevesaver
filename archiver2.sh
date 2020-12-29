#!/usr/bin/bash

for i in $(less urlist); do
    echo $i > temp
    python archiver3.py < temp;
done
