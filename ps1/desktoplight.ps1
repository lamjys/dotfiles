$param = @{
    Uri           = "http://192.168.0.210:8123/api/services/switch/toggle"
    Method        = "Post"
    Body          = '{"entity_id": "switch.tasmota01"}'
    ContentType   = "application/json"
    Header        = @{Authorization = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJhYTViZTJiZjcyODY0ZmVkYTNkNDU5MjRmMDhkNjk2MyIsImlhdCI6MTY0NDI0MDYwMywiZXhwIjoxOTU5NjAwNjAzfQ.Ggn4RkJM0egCvsXPeNQKKbQGYOYeZJp8NmiwUpXWSIc"}
}
Invoke-RestMethod @param