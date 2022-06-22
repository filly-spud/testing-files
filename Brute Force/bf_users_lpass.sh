#!/bin/bash

# $1 Random Users File
# $3 Random passes w/ legit creds. Contains 1 legit

# Random Users - Random Passes w/ Legit Creds

echo "============================================="
echo "==== Start Random Users - W/ Legit Pass ====="
echo "============================================="
while IFS= read -r user; do
    while IFS= read -r pass; do
        echo "Testing $user:$pass"
        echo "$pass" | su -l $user
    done < $2
done < $1
echo "============================================="
echo "===== Done Random Users - W/ Legit Pass ====="
echo "============================================="