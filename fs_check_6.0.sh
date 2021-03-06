#!/bin/bash
# Script to check if FreeSurfer is installed correctly.
# The command is based on 
# http://surfer.nmr.mgh.harvard.edu/fswiki/DownloadAndInstall
# 19 Jan 2019 K.Nemoto

echo "Test the installation of freesurfer"

cd $SUBJECTS_DIR
freeview -v \
    bert/mri/T1.mgz                            \
    bert/mri/wm.mgz                            \
    bert/mri/brainmask.mgz                     \
    bert/mri/aseg.mgz:colormap=lut:opacity=0.2 \
    -f                                         \
    bert/surf/lh.white:edgecolor=blue          \
    bert/surf/lh.pial:edgecolor=red            \
    bert/surf/rh.white:edgecolor=blue          \
    bert/surf/rh.pial:edgecolor=red &

