#!/bin/bash

set -e
cd upstream
git apply ../update.patch
cp bin/{common,ftpsync} ..
docker build -t ustcmirror/archvsync ..
