#!/bin/bash

source $(pwd)/hacurl.sh

service="script.shut_down_office"
json='{"entity_id": "media_player.denon_office"}'

hacurlServices -s "${service}"  -j "${json}"

