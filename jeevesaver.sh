#!/usr/bin/bash

for i in {1..301504}; do # I manually checked how many total webcomics are on SmackJeeves
    for j in {1..9999}; do # Hopefully none of them have more than 9999 instalments
	url=www.smackjeeves.com/discover/articleList?titleNo=$i&articleNo=$j
	ping -c 1 $url > /dev/null 2>&1 # returns 0 if the page exists
	if [[ $? -eq 0 ]]; then # do this if the page in question exists
	    chromium https://web.archive.org/save/https://$url
	fi;
    done;
done
