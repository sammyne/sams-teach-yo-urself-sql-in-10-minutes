#!/bin/bash

cd `dirname ${BASH_SOURCE[0]}`

db=$PWD/data/TYSQL.sqlite

case "$1" in
  up)
    workdir=${2:-$PWD}
    cd $workdir

    sqlite3 $db
  ;;

  *)
    echo "未知命令 '$1'"
    exit 1
  ;;
esac
