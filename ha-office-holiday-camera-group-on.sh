#!/bin/bash

source $(pwd)/hacurl.sh

service="switch.turn_on"
json='{  "entity_id": "switch.holiday_camera_group"}'

# hacurlServices -s "${service}" -j "${json}"

