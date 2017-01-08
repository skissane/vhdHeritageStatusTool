#!/bin/bash
./runQuery.py vicHeritageNoStatus.sparql | sed -e 's!^<http://www.wikidata.org/entity/!!;s!>!!' | cut '-d	' -f1,2  | tail -n +2 | egrep -v '^$'
