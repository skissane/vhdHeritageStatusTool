#!/usr/bin/env python3.5
import sys
from urllib.parse import quote, unquote
from urllib.request import urlopen, Request
import re

if len(sys.argv) != 2:
    raise Exception("wrong arguments")

queryName = sys.argv[1]
with open(queryName,"r") as fh:
    queryText = fh.read()

WIKIDATA_BASE = "https://query.wikidata.org/bigdata/namespace/wdq/sparql?query="

uri = WIKIDATA_BASE + quote(queryText)

req = Request(uri)
req.add_header("Accept","text/tab-separated-values;charset=UTF-8")
resp = urlopen(req)
print(resp.read().decode("utf-8"))
# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4 cc=70
