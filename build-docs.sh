#!/bin/sh

xcodebuild docbuild  \
  -scheme JunnosBlog \
  -derivedDataPath ~/Workspace/DerivedDataFoler \
  -destination 'platform=iOS Simulator,name=iPhone 14'
  
doccarchive_path=$(find ~/Workspace/DerivedDataFoler -type d -name "*.doccarchive")
  
if [[ -z $doccarchive_path ]]; then
  echo "No doccarchive file found."
  exit 1
fi
  
$(xcrun --find docc) process-archive \
  transform-for-static-hosting "$doccarchive_path" \
  --output-path docs
