from distutils.core import setup
import py2exe, sys, os

sys.argv.append('py2exe')

setup(
    options = {'py2exe': {'bundle_files': 1, 'compressed': True}},
    console=['main.py'],
    zipfile = None,
)


# from distutils.core import setup
# import py2exe
  
# setup(console=['main.py'])
os.rename('dist/main.exe','dist/l2d.exe')