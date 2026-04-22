#!/usr/bin/env bash

# Unsplash photo search script
# Run: ./unsplash_search.sh <keyword>
# Requires: curl, jq, feh

UTM_SOURCE=Photo-app    # UTM - Urchin Tracking Module : source e.g. Photo-app
UTM_MEDIUM=referral     # UTM - Urchin Tracking Module : medium e.g. referral

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <keyword>"
  exit 1
fi
KEYWORD="$1"

if [ -z "$UNSPLASH_CLIENT_ID" ]; then
  echo "Error: UNSPLASH_CLIENT_ID not set"
  exit 1
fi

URLS=$(curl -s "https://api.unsplash.com/search/photos/?query=${KEYWORD}&client_id=${UNSPLASH_CLIENT_ID}&utm_source=${UTM_SOURCE}&utm_medium=${UTM_MEDIUM}" | jq -r '.results[].urls.raw')

if [ -z "$URLS" ]; then
  echo "No images found for $KEYWORD"
  exit 1
fi

feh -FZ --image-bg black $URLS
