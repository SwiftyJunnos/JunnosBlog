#!/bin/sh

xcodebuild docbuild  \
  -scheme JunnosBlog \
  -derivedDataPath DerivedDataFoler \
  -destination 'platform=iOS Simulator,name=iPhone 14'
  
find DerivedDataFoler \
  -type d \
  -name "*.doccarchive"
