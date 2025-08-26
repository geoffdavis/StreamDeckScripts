#!/bin/bash

link=$(pbpaste | cut -d \# -f 1)
shorter=${link##https://github.com/snyk/}

if [ "$shorter" != "$link" ]
then
    repo=$(echo ${shorter%%/issues/*} | sed 's|product-marketing|pmktg|g;s|website-www.elastic.co|web|g')
    issue=${shorter##*/issues/}
    text="${repo} #${issue}"
elif [[ "$link" == *"snyk.io/blog"* ]]
then
    text="Blog"
elif [[ "$link" == *"snyk.io"* ]]
then
    text="Webpage"
elif [[ "$link" == *"snyksec.atlassian"* ]]
then
    text="Wiki"
elif [[ "$link" == *"docs.google.com/document"* ]]
then
    text="Google Doc"
elif [[ "$link" == *"docs.google.com/spreadsheets"* ]]
then
    text="Google Sheet"
else
    text="link"
fi

https://snyksec.atlassian.net/browse/CON-897

cell="=HYPERLINK(\"${link}\",\"${text}\")"

# echo $cell now in clipboard
echo -n $cell | pbcopy
