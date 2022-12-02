#!/bin/bash


# python run.py -d 3 -w 10 -l 100 -- "rm -r ARG"
# python run.py -d 3 -w 10 -l 100 -- "find ARG -exec rm {} \;"
# python run.py -d 3 -w 10 -l 100 -- "find ARG -delete"
# python run.py -d 3 -w 10 -l 100 -- "mkdir empty; rsync --delete empty/ ARG/ ; rmdir empty"
python run.py -d 3 -w 10 -l 100 -- "cd ARG; perl -e 'for(<*>){((stat)[9]<(unlink))}'"
python run.py -d 3 -w 10 -l 100 -- "cd ARG; perl -e 'for(<*>){unlink}'"

