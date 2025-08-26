#!/bin/bash

source $(pwd)/hacurl.sh

service="switch.turn_on"
json='{  "entity_id": "switch.holiday_payton_garland_js_switch"}'

hacurlServices -s "${service}" -j "${json}"

