# Tool to import heritage status field from Victorian Heritage Database (VHD) to Wikidata

Basically, items in Wikidata can have associated with them the [Victorian
Heritage Database ID (P3443)](https://www.wikidata.org/wiki/Property:P3443)
property, which is a pointer to the [Victorian Heritage Database (VHD)](http://vhd.heritagecouncil.vic.gov.au).

Items have P3443 should also have [heritage status (P1435)](https://www.wikidata.org/wiki/Property:P1435) property associated with them. The purpose of this tool is to find Wikidata items having P3443 but lacking P1435. This tool then interrogates the VHD to infer the appropriate P1435 values, and generates statements to set it.

Additionally, there is a script `vhdSearch.sh` to do a keyword search of VHD from the command line. I use this to quickly identify items which could be linked to Wikidata.

## Usage

1. Run: `./getQuickStatements.sh > statements.tmp`
2. Go to URL: https://tools.wmflabs.org/wikidata-todo/quick_statements.php
3. Click the "WiDaR" link to make sure you are logged in
4. Paste in contents of statements.tmp and click "Do it"
