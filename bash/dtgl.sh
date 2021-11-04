#!/bin/bash
CONTAINER_NAME_DEFAULT='webtop'
CONTAINER_NAME=${1:-${CONTAINER_NAME_DEFAULT}}
if ! [ -x "$(command -v docker)" ]; then
  echo 'Error: docker is not installed.' >&2
  exit 1
else
  CID=$(docker ps -qa -f name=^/${CONTAINER_NAME}$)
  echo ${CID}
  if [ ! "${CID}" ]; then
    echo "Not found container: ${CONTAINER_NAME}"
  else
    CID_STATUS=$(docker inspect ${CONTAINER_NAME} --format={{.State.Status}})
    case ${CID_STATUS} in
      running)
	echo "now running, trying to pause..."
        docker pause ${CONTAINER_NAME}
	echo "paused"
	;;
      paused)
        echo "now paused, trying to run..."
        docker unpause ${CONTAINER_NAME}
	echo "running"
	;;
      *)
        echo "Nothing done, container status: ${CID_STATUS}"
	;;
    esac
  fi
  unset CID
fi
