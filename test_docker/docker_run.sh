#!/usr/bin/env bash
INPUT_DIR=./images
OUTPUT_DIR=./output

mkdir -p ${OUTPUT_DIR}
docker run -v $(realpath ${INPUT_DIR}):/data -v $(realpath ${OUTPUT_DIR}):/data_out trufor -gpu -1 -in data/ -out data_out/
