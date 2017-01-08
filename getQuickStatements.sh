#!/bin/bash
#
# run this to generate QuickStatements to add missing heritage statuses
#
# https://tools.wmflabs.org/wikidata-todo/quick_statements.php
#
./getLackingStatus.sh | while read wikidataEntity vhdID; do
	echo -e "$wikidataEntity\tP1435\t$(./getHeritageStatusID.sh "$(./getVictorianHeritageStatus.sh $vhdID)")"
done
