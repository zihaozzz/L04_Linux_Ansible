#!/usr/bin/env sh


echo "#1. seq LAST"
seq 10
echo "#2. seq FIRST LAST"
seq 3 10
echo "#3. seq INCREMENT LAST"
seq 1 3 10
echo "#4. seq -f “FORMAT” FIRST INCREMENT LAST"
seq -f "NO.%01g" 1 5
echo "#5. seq -s “STRING” FIRST INCREMENT LAST"
seq -s " " 2 7
echo "#6 padding with zero"
seq -w 96 101


DURATION=2
COUNT=1
ATTEMPTS=5
while [ $COUNT -lt $ATTEMPTS ]; do
    echo "While loop attempt $COUNT: Waiting ${DURATION} seconds..."
    sleep "$DURATION"
    COUNT=$((COUNT+1))
done

FILES=$(ls -la | awk '{print $9}' | grep -v "\.$")
F_COUNT=0
for f in $FILES; do
    F_COUNT=$((F_COUNT+1))
    echo "File No.$F_COUNT in for loop: $f"
    sleep 1
done

