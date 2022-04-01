#!/usr/bin/env python3

import zulip

# Pass the path to your zuliprc file here.
client = zulip.Client(config_file="./zulip/.zuliprc")

# Get all users in the realm
result = client.get_members()
print(result)
