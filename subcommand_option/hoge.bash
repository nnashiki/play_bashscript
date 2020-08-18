#!/bin/bash

SUB_CMDNAME=$(basename $1)
echo $SUB_CMDNAME;

shift 1; # args を option のみに絞る

# getopts コマンドの第一引数にはシェルスクリプトに指定可能なオプションを指定し、さらそのオプションが値を要する場合は : (コロン) を付ける。
while getopts ab: OPT; do
  case $OPT in
  a) FLG_A="TRUE" ;;
  b)
    FLG_B="TRUE"
    VALUE_B="$OPTARG"
    ;;
  *)
    echo "Usage: $CMDNAME [-a] [-b VALUE]" 1>&2
    exit 1
    ;;
  esac
done

if [ "$FLG_A" = "TRUE" ]; then
  echo '"-a"オプションが指定されました。'
fi

if [ "$FLG_B" = "TRUE" ]; then
  echo '"-b"オプションが指定されました。 '
  echo "→値は${VALUE_B}です。"
fi

exit 0
