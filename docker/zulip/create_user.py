#!/usr/bin/env python3

import zulip

# The user for this zuliprc file must be an organization administrator
client = zulip.Client(config_file="./zulip/.zuliprc")

# Create a user
request = {
    "email": "newbie@mail.com",
    "password": "i0522zUli-p",
    "full_name": "Newbie User",
}
result = client.create_user(request)
print(result)
