#!/bin/bash
#
# Save the title page and final slide as PNG images.
#

convert -density 300 example.pdf[0] -background white -flatten -resize 25% titlepage.png
convert -density 300 example.pdf[5] -background white -flatten -resize 25% slide.png
