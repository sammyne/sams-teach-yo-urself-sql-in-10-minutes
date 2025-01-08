#!/bin/bash

cd `dirname ${BASH_SOURCE[0]}`

file=TYSQL5_SQLite.zip

if [[ ! -f $file ]]; then
  echo "从官网下载数据文件 :)"
  wget https://forta.com/wp-content/uploads/books/0135182794/$file
fi

#unzip -o $file

# 删除文件头部多余的两个错误字符
sed -i '1s/^..//' create.txt
# 删除多余的 \0 字节，并将 windows 的换行符 '\r\n' 转为 '\n'
tr -d '\0' < create.txt | sed 's/\r$//' > create-unix.txt
# 覆盖 create.txt
mv create-unix.txt create.txt

# 将 windows 的换行符 '\r\n' 转为 '\n'
tr -d '\0' < populate.txt | sed 's/\r$//' > populate-unix.txt
mv populate-unix.txt populate.txt
