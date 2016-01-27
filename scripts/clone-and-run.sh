#!/bin/bash

set -x

cd $WORKDIR
git clone $REPO .
npm install

/protractor.sh $CONF_FILE $PARAMS
