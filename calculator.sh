#!/bin/bash
# Script to perform basic calculator operations

read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter operator (+, -, *, /): " operator

case $operator in
  +) result=$(echo "$num1 + $num2" | bc);;
  -) result=$(echo "$num1 - $num2" | bc);;
  *) result=$(echo "$num1 * $num2" | bc);;
  /) result=$(echo "scale=2; $num1 / $num2" | bc);;
  *) echo "Invalid operator"; exit 1;;
esac

echo "Result: $result"
