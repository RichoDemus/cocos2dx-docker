#!/bin/bash

VERSION="3.10"

#from http://stackoverflow.com/a/246128
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

FILENAME="cocos2d-x-${VERSION}.zip"
DOWNLOAD_COMMAND="wget -P ${DIR}/bin/ --no-check-certificate --no-cookies http://www.cocos2d-x.org/filedown/${FILENAME}"

if [ ! -f ${DIR}/download/${FILENAME} ]; then
	echo "File not found!"
	eval ${DOWNLOAD_COMMAND}
fi

docker build -t cocos2dx:${VERSION} .
