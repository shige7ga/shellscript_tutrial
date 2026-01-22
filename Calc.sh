#!/bin/bash

while true
do
echo 'Enter two numbers:'
read num1
read num2

# 数値か確認
if [[ ! "$num1" =~ ^-?[0-9]+$ ]] || [[ ! "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Please enter valid integers."
    continue
fi

echo 'Choose an artithmetic operation (+, -, *,/)'
while true
do
read op

# ゼロ除算の確認
if [ "$op" = "/" ] && [ "$num2" -eq 0 ]; then
    echo "Cannot divide by zero."
    continue 2
fi

# 演算子の確認
if [ "$op" = "+" ] || [ "$op" = "-" ] || [ "$op" = "*" ] || [ "$op" = "/" ]; then
    break 2
else
    echo "Invalid operation. Please enter one of (+, -, *, /)"
fi
done
done

echo The result:$(expr $num1 $op $num2)
