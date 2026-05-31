curl -X POST \
    -H "Authorization: $(base64 -d ~/.config/ha-bearer-base)" \
    -H "Content-Type: application/json" \
    -d '{"entity_id": "media_player.kef"}' \
    http://homeassistant.local:8123/api/services/media_player/toggle
