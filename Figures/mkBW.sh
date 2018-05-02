#!/usr/bin/env bash

gs -sDEVICE=pdfwrite -sProcessColorModel=DeviceGray -sColorConversionStrategy=Gray -dOverrideICC -o $1-BW.pdf -f $1.pdf
