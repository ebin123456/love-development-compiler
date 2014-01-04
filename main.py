#!/usr/bin/env python
from __future__ import with_statement
from contextlib import closing
from zipfile import ZipFile, ZIP_DEFLATED
import os
import subprocess

def zipdir(basedir, archivename):
    assert os.path.isdir(basedir)
    with closing(ZipFile(archivename, "w", ZIP_DEFLATED)) as z:
        for root, dirs, files in os.walk(basedir):
            #NOTE: ignore empty directories
            for fn in files:
                absfn = os.path.join(root, fn)
                zfn = absfn[len(basedir)+len(os.sep):] #XXX: relative path
                z.write(absfn, zfn)

if __name__ == '__main__':
    import sys
    try:
        basedir = sys.argv[1]
        #archivename = sys.argv[2]
    except:
        print "Please run like  'l2d path_to_project_folder output_name(optional)'"
        sys.exit()
    try:
        archivename = sys.argv[2]
    except:
        archivename = 'l.love'
    zipdir(basedir,archivename)
    os.system('love '+archivename)

