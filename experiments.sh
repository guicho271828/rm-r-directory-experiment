#!/bin/bash


python run.py -d 3 -w 10 -l 100 -- "rm -r ARG"
python run.py -d 3 -w 10 -l 100 -- "find ARG -delete"
python run.py -d 3 -w 10 -l 100 -- "mkdir empty; rsync -r --delete empty/ ARG/ ; rmdir empty"
# python run.py -d 3 -w 10 -l 100 -- "cd ARG; perl -e 'for(<*>){((stat)[9]<(unlink))}'"
# python run.py -d 3 -w 10 -l 100 -- "cd ARG; perl -e 'for(<*>){unlink}'"

python run.py -d 1 -w 1 -l 100000 -- "rm -r ARG"
python run.py -d 1 -w 1 -l 100000 -- "find ARG -delete"
python run.py -d 1 -w 1 -l 100000 -- "mkdir empty; rsync -r --delete empty/ ARG/ ; rmdir empty"
# python run.py -d 1 -w 1 -l 100000 -- "cd ARG; perl -e 'for(<*>){((stat)[9]<(unlink))}'"
# python run.py -d 1 -w 1 -l 100000 -- "cd ARG; perl -e 'for(<*>){unlink}'"

