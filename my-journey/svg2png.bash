#!/usr/bin/env bash
set -euo pipefail

input="mx.svg"
dpi=200
outdir="$HOME/Downloads"
output="$outdir/mx.png"

# Ensure output directory exists
mkdir -p "$outdir"

# Export PNG with transparent background at 200 DPI
inkscape "$input" \
  --export-type=png \
  --export-filename="$output" \
  --export-background=#00000000 \
  --export-dpi="$dpi"

echo "Exported: $output"
