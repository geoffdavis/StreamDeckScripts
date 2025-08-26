#!/bin/sh

chars=$(pbpaste | wc -c | awk '{printf(" -- Last check: %s chars", $1)}')
echo $chars
echo -n  "$chars" | pbcopy
