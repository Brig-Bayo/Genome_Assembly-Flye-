#!/bin/bash

set -e

mkdir -p assemblies_flye_20 assemblies_flye_40 assemblies_flye_60 assemblies_flye_80 assemblies_flye_100

DIR="/home/simon/Documents/assembly-dvel/Data_1"

# Define the input files array
OUTPUT1="/home/simon/Documents/assembly-dvel/Data_1/assemblies_flye_20"
OUTPUT2="/home/simon/Documents/assembly-dvel/Data_1/assemblies_flye_40"
OUTPUT3="/home/simon/Documents/assembly-dvel/Data_1/assemblies_flye_60"
OUTPUT4="/home/simon/Documents/assembly-dvel/Data_1/assemblies_flye_80"
OUTPUT5="/home/simon/Documents/assembly-dvel/Data_1/assemblies_flye_100"

threads=6

flye --nano-raw /home/simon/Documents/assembly-dvel/Data_1/depths/subsampled_20x.fastq --threads "$threads" --iterations 2 --genome-size 6073000 --out-dir $OUTPUT1
flye --nano-raw /home/simon/Documents/assembly-dvel/Data_1/depths/subsampled_40x.fastq --threads "$threads" --iterations 2 --genome-size 6073000 --out-dir $OUTPUT2
flye --nano-raw /home/simon/Documents/assembly-dvel/Data_1/depths/subsampled_60x.fastq --threads "$threads" --iterations 2 --genome-size 6073000  --out-dir $OUTPUT3
flye --nano-raw /home/simon/Documents/assembly-dvel/Data_1/depths/subsampled_80x.fastq --threads "$threads" --iterations 2 --genome-size 6073000 --out-dir $OUTPUT4
flye --nano-raw /home/simon/Documents/assembly-dvel/Data_1/depths/subsampled_100x.fastq --threads "$threads" --iterations 2 --genome-size 6073000  --out-dir $OUTPUT5

#"flye --nano-hq /home/simon/Documents/assembly-dvel/Data_1/subsampling_tryc/depth_30/B6_30.fastq --threads "$threads" --iterations 2 --genome-size 5200000 --out-dir $OUTPUT/out6
#flye --nano-hq /home/simon/Documents/assembly-dvel/Data_1/subsampling_tryc/depth_30/B7_30.fastq --threads "$threads" --iterations 2 --genome-size 5200000 --out-dir $OUTPUT2/out7
#flye --nano-hq /home/simon/Documents/assembly-dvel/Data_1/subsampling_tryc/depth_30/B8_30.fastq --threads "$threads" --iterations 2 --genome-size 5200000 --out-dir $OUTPUT2/out8
#flye --nano-hq /home/simon/Documents/assembly-dvel/Data_1/subsampling_tryc/depth_30/B9_30.fastq --threads "$threads" --iterations 2 --genome-size 5200000 --out-dir $OUTPUT2/out9
#flye --nano-hq /home/simon/Documents/assembly-dvel/Data_1/subsampling_tryc/depth_30/B10_30.fastq --threads "$threads" --iterations 2 --genome-size 5200000 --out-dir $OUTPUT2/out10
#flye --nano-hq /home/simon/Documents/assembly-dvel/Data_1/subsampling_tryc/depth_30/B11_30.fastq --threads "$threads" --iterations 2 --genome-size 5200000 --out-dir $OUTPUT2/out11
#flye --nano-hq /home/simon/Documents/assembly-dvel/Data_1/subsampling_tryc/depth_30/B12_30.fastq --threads "$threads" --iterations 2 --genome-size 5200000 --out-dir $OUTPUT2/out12"


