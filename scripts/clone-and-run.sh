#!/bin/bash

cd $WORKDIR
git clone $REPO .
npm install

/protractor.sh conf.coffee
