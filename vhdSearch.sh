#!/bin/bash
#
# Keyword search VHD using API endpoint and returns results in CSV format.
#
KEYWORD="$1"
curl -Ss "http://api.heritagecouncil.vic.gov.au/v1/places?kw=$KEYWORD" | jq -r '._embedded.places|map([(.id|tostring),.name]|join(","))[]'
