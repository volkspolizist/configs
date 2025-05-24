#!/bin/bash

VERSION="1.0"

rm -rf nbfc-linux

git clone https://github.com/nbfc-linux/nbfc-linux

cp nbfc-linux/share/nbfc/model_support.json "$VERSION"/

cp nbfc-linux/share/nbfc/configs/*.json "$VERSION"/configs/

rm -rf nbfc-linux
