# Tool to import heritage status field from Victorian Heritage Database (VHD) to WikiData

Basically, items in WikiData can have associated with them the [Victorian
Heritage Database ID (P3443)](https://www.wikidata.org/wiki/Property:P3443)
property, which is a pointer to the [Victorian Heritage Database (VHD)](http://vhd.heritagecouncil.vic.gov.au).

Items have P3443 should also have [heritage status (P1435)](https://www.wikidata.org/wiki/Property:P1435) property associated with them. The purpose of these scripts is to find Wikidata items having P3443 but lacking P1435. This script then interrogates the VHD to infer the appropriate P1435 value, and generates a statement to set it.

## Usage

1. Run: ./getQuickStatements > statements.tmp
2. Go to URL: https://tools.wmflabs.org/wikidata-todo/quick_statements.php
3. Click the "WiDaR" link to make sure you are logged in
4. Paste in contents of statements.tmp and click "Do it"
