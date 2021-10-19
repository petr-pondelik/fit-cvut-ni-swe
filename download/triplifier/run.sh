#!/bin/bash

# Input and output directories
DATA_DIR="./../data"
OUTPUT_DIR="./../output"

# Set this variable to your TARQL binary
TARQL="./../tarql-1.2/bin/tarql"

echo $TARQL_BIN

# Dump the settings
echo "Settings:"
echo "DATA_DIR: ${DATA_DIR}, OUTPUT_DIR: ${OUTPUT_DIR}, TARQL: ${TARQL}"

# ==================================================
# Číselníky triplification
# ==================================================

$TARQL -e utf-8 "./ciselniky/kraje.sparql" > "${OUTPUT_DIR}/kraje.ttl"
$TARQL -e utf-8 "./ciselniky/okresy.sparql" > "${OUTPUT_DIR}/okresy.ttl"
