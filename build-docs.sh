#!/bin/sh

xcodebuild docbuild  \
  -scheme JunnosBlog \
  -derivedDataPath ~/Workspace/DerivedDataFoler \
  -destination 'platform=iOS Simulator,name=iPhone 14'
  
find ~/Workspace/DerivedDataFoler \
  -type d \
  -name "*.doccarchive"
