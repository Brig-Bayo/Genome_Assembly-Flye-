#!/bin/bash

set -e

# Usage: ./run_flye.sh /path/to/input_folder /path/to/output_folder

INPUT_DIR="$1"
OUTPUT_DIR="$2"

if [[ -z "$INPUT_DIR" || -z "$OUTPUT_DIR" ]]; then
    echo "Usage: $0 <input_folder> <output_folder>"
    exit 1
fi

mkdir -p "$OUTPUT_DIR"

for fq in "$INPUT_DIR"/*.fastq; do
    sample_name=$(basename "$fq" .fastq)
    out_sample_dir="$OUTPUT_DIR/${sample_name}_flye"
    mkdir -p "$out_sample_dir"
    echo "Running Flye for $fq..."
    flye --nano-raw "$fq" --out-dir "$out_sample_dir" --threads 8
done

echo "All Flye assemblies are complete."
