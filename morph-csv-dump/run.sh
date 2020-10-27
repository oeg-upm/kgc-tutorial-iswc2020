#!/bin/bash

cp data/*.csv tmp/csv/

echo "Running Morph-CSV to prepare the GTFS-CSV for dumping"
docker exec -w /morphcsv morphcsv python3 morphcsv.py -c ../mappings/config-gtfs.json -q ../queries/naive.rq

echo "Running SDM-RDFizer to generate the RDF-KG dump from GTFS in CSV"
docker exec sdm-rdfizer python3 /sdmrdfizer/run_rdfizer.py /mappings/config.ini
docker exec sdm-rdfizer sed -i '/.*Null.*/d' /results/gtfs.nt


echo "Output should appear in the results folder"
 