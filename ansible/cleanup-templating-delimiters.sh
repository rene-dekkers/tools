#!/bin/bash
# René Dekkers - 2018
# Cleanup delimiters such as {{ }} or {% %} in an ansible yaml file
if [ $# -ne 1 ]; then
        echo "Usage: $0 <yml_file>"
        exit 2
fi

YMLFILE=$1

sed -i -E "s/when: ?\"\{\{ ?/when: \"/g" $YMLFILE
sed -i -E "s/when: ?\"(.*) }}\"/when: \"\1\"/g" $YMLFILE

sed -i -E "s/when: ?\"\{% ?/when: \"/g" $YMLFILE
sed -i -E "s/when: ?\"(.*) %}\"/when: \"\1\"/g" $YMLFILE
