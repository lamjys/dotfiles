curl -X POST \
    -H "Authorization: $(base64 -d ~/.config/ha-bearer-base)" \
    -H "Content-Type: application/json" \
    -d '{"entity_id": "switch.tasmota01"}' \
    http://192.168.0.210:8123/api/services/switch/toggle
