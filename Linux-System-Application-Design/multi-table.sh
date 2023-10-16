#!/bin/bash

# 첫 번째와 두 번째 인자를 변수에 저장
n=$1
m=$2

# 인자가 두 개가 아닌 경우 에러 메시지 출력
if [ "$#" -ne 2 ]; then
  echo "Invalid Input"
  exit 1
fi

# 인자가 양수가 아닌 경우 에러 메시지 출력
if [ "$n" -le 0 ] || [ "$m" -le 0 ]; then
  echo "Input must be greater than 0"
  exit 1
fi

# 곱셈 테이블 출력
for i in $(seq 1 $n); do
  for j in $(seq 1 $m); do
    result=$(( i * j ))
    echo -n "$i*$j=$result  "
  done
  echo ""
done
