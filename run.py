

import argparse
import os.path
import tempfile
import subprocess
import time

parser = argparse.ArgumentParser()

# common options

parser.add_argument("--depth","-d",
                    type=int,
                    default=3,
                    help="depth of the directory hierarchy created for testing")
parser.add_argument("--width","-w",
                    type=int,
                    default=3,
                    help="number of subdirectories in each directory")
parser.add_argument("--leaf","-l",
                    type=int,
                    default=10,
                    help="number of files in the leaf directory")
parser.add_argument("commands", nargs="*")

args = parser.parse_args()




def create(directory,level,root=False):
    if not root:
        os.mkdir(directory)
    if level==0:
        for i in range(args.leaf):
            open(os.path.join(directory,str(i)),"a").close()
    else:
        for i in range(args.width):
            create(os.path.join(directory,str(i)), level-1)

def main():
    with tempfile.TemporaryDirectory(dir=".") as d:
        create(d, args.depth, True)
        print("running:"," ".join(args.commands))
        subprocess.run(["/usr/bin/time", "-p", *args.commands])

if __name__ == "__main__":
    main()
