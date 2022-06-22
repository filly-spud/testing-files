#!/bin/bash

# 4 total actions
# Admin - Random Pass
# Random Users - Random Pass
# Admin - Random passes with legit creds
# Random Users - Random Passes w/ Legit Creds


# $3 Random passes w/ legit creds. Contains 1 legit admin and 1 legit user cred.

# Admin - Random passes with legit creds
echo "============================================="
echo "===== Start Admin User - W/ Legit Pass ======"
echo "============================================="
while IFS= read -r pass; do
    echo "Testing timmy:$pass"
    echo "$pass" | su -l timmy
done < $1
echo "============================================="
echo "====== Done Admin User - W/ Legit Pass ======"
echo "============================================="
echo ""
echo ""
echo ""
