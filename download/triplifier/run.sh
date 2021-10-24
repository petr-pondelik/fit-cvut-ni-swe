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
# Kraje and okresy triplification
# ==================================================

$TARQL -e utf-8 "./kraje.sparql" > "${OUTPUT_DIR}/kraje.ttl"
$TARQL -e utf-8 "./okresy.sparql" > "${OUTPUT_DIR}/okresy.ttl"

# ==================================================
# Life satisfaction triplification
# ==================================================

$TARQL -e utf-8 --dedup 10000 "./life-satisfaction.sparql" > "${OUTPUT_DIR}/life-satisfaction.ttl"

# ==================================================
# Covid world triplification
# ==================================================

$TARQL -e utf-8 --dedup 15000000 "./covid-world.sparql" > "${OUTPUT_DIR}/covid-world.ttl"

# ==================================================
# Covid CZE triplification
# ==================================================

$TARQL -e utf-8 -H --no-header-row --dedup 1000000 "./covid-cze.sparql" > "${OUTPUT_DIR}/covid-cze.ttl"
