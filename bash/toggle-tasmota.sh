curl -X POST \
    -H "Authorization: $(base64 -d ~/.config/ha-bearer-base)" \
    -H "Content-Type: application/json" \
    -d '{"entity_id": "switch.tasmota01"}' \
    http://homeassistant.local:8123/api/services/switch/toggle
