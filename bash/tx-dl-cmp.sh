#!/bin/env bash

#################################################################################
# These are inherited from Transmission.                                        #
# Do not declare these. Just use as needed.                                     #
#                                                                               #
# TR_APP_VERSION                                                                #
# TR_TIME_LOCALTIME                                                             #
# TR_TORRENT_DIR                                                                #
# TR_TORRENT_HASH                                                               #
# TR_TORRENT_ID                                                                 #
# TR_TORRENT_NAME                                                               #
#                                                                               #
#################################################################################

NTFY_HOST=https://ntfy.hiyama.cloud
NTFY_CHANNEL=test
curl -d "D/L Completed: $TR_TORRENT_NAME" $NTFY_HOST/$NTFY_CHANNEL
