#!/bin/bash

# Files location variables
DIR_AGE_KEY=${HOME}/.config/sops/age
FILE_AGE_KEY=keys.txt
PATH_AGE_KEY=${DIR_AGE_KEY}/${FILE_AGE_KEY}
DIR_VULTR_API_KEY=${HOME}/Nextcloud/Keys
FILE_VULTR_API_KEY=vultr-api-key.txt.age
PATH_VULTR_API_KEY=${DIR_VULTR_API_KEY}/${FILE_VULTR_API_KEY}

# Vultr end-points variables
VULTR_BASE_URL=https://api.vultr.com/v2
VULTR_FUNCTION=domains
VULTR_DNS_DOMAIN=hiyama.cloud
VULTR_LIST_RECORDS=${VULTR_DNS_DOMAIN}/records
VULTR_END_POINT=${VULTR_BASE_URL}/${VULTR_FUNCTION}/${VULTR_LIST_RECORDS}
# VULTR_END_POINT=${VULTR_BASE_URL}/${VULTR_FUNCTION}

# Read text from file 'key.txt'
VULTR_API_KEY=$(age -d -i ${PATH_AGE_KEY} ${PATH_VULTR_API_KEY})

# Output to user screen
# echo "Variable: VULTR_API_KEY = $VULTR_API_KEY"
# echo "Variable: VULTR_END_POINT = $VULTR_END_POINT"

# curl "${VULTR_END_POINT}" -X GET -H "Authorization: Bearer ${VULTR_API_KEY}"
curl "${VULTR_END_POINT}" \
  -X POST \
  -H "Authorization: Bearer ${VULTR_API_KEY}" \
  -H "Content-Type: application/json" \
  --data '{
    "name": "mini",
    "type": "CNAME",
    "data": "hiyama.cloud",
    "ttl": 300,
    "priority" : 0
  }'
