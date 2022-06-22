#!/bin/bash

# 4 total actions
# Admin - Random Pass
# Random Users - Random Pass
# Admin - Random passes with legit creds
# Random Users - Random Passes w/ Legit Creds

# $2 Random Passwords Files



echo "============================================="
echo "======= Start Admin - Random Pass ==========="
echo "============================================="
while IFS= read -r pass; do
    echo "Testing admin:$pass"
    echo "$pass" | su -l admin
done < $1
echo "============================================="
echo "======== Done Admin - Random Pass ==========="
echo "============================================="
echo ""
echo ""
echo ""



