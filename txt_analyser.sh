#!/bin/bash
# Script to analyze a text file

if [ -z "$1" ]; then
  echo "Please provide a text file."
  exit 1
fi

LINES=$(wc -l < "$1")
WORDS=$(wc -w < "$1")
CHARS=$(wc -m < "$1")

echo "Lines: $LINES"
echo "Words: $WORDS"
echo "Characters: $CHARS"
