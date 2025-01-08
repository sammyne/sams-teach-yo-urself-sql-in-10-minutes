#!/bin/bash

db=data/TYSQL.sqlite

case "$1" in
  up)
    sqlite3 $db
  ;;

  *)
    echo "未知命令 '$1'"
    exit 1
  ;;
esac
