#!/usr/bin/python

import savepagenow
n = 1

url = input()
print("Now saving", url)

savepagenow.capture(url)
n+=1
