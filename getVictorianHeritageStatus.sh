#!/bin/bash
curl -Ss http://api.heritagecouncil.vic.gov.au/v1/places/$1 | jq -r .heritage_authority_name
