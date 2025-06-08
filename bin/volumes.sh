#!/bin/bash

VOLUME_LIST="$(cat volumes.txt 2>/dev/null || echo "")"

[[ -z "${VOLUME_LIST}" ]] && { echo "Volume list is empty!"; exit 1; }

VOL_ARGS=()

while IFS= read -r line; do
  [[ -z "$line" || "$line" == \#* ]] && continue # Skip blank and comments
  eval line_expanded=\"${line}\"
  VOL_ARGS+=(" -v $line_expanded")
done <<< "${VOLUME_LIST}"

echo $VOL_ARGS

export DOCKER_VOLUMES="${VOL_ARGS[*]}"

