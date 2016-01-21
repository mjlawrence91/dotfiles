#!/bin/bash
IMAGES_DIR=/mnt/KG/Wallpapers
feh --bg-scale $IMAGES_DIR/`ls $IMAGES_DIR | sort -R | tail -n 1`