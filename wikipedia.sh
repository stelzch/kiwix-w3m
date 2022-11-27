#!/usr/bin/env bash

query="$*"
zim_file="wikipedia_en_all_maxi_2022-05"
zim_url="http://localhost:8081"

if [[ -z $query ]]; then
    w3m "$zim_url/$zim_file/A/User:The_other_Kiwix_guy/Landing"
elif [[ "$1" = "--exact" ]]; then
    w3m "$zim_url/$zim_file/A/$2"
else
    urlencoded_query=$(python3 -c "import urllib.parse;print(urllib.parse.urlencode({'pattern': '$query'}))")
    url="$zim_url/search?content=$zim_file&$urlencoded_query"
    w3m $url
fi
