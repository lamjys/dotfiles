#!/usr/bin/env python3

import json
import requests
import numpy as np
import pandas as pd
import datetime
import gspread
from oauth2client.service_account import ServiceAccountCredentials

scope = ['https://spreadsheets.google.com/feeds', \
    'https://www.googleapis.com/auth/drive']
credentials = ServiceAccountCredentials.from_json_keyfile_name( \
    '/home/nana/Nextcloud/Keys/jupytersheet-43d85a3364c9.json', \
    scope)

gc = gspread.authorize(credentials)
wks = gc.open("My cool spreadsheet").worksheet('Leaves')
tbl = wks.get_all_values()
hdr = tbl.pop(0)
df = pd.DataFrame(tbl, columns = hdr)

data = {}
for i in range(0,len(hdr)):
    result = df.iloc[:,i].replace('',np.nan).dropna().to_json(orient="records")
    parsed = json.loads(result)
    print(hdr[i])
    data[hdr[i]] = parsed

url = 'https://api.jsonbin.io/v3/b/5f7c20457243cd7e824b5f53'
xmkey = '$2b$10$231.m.rSFAciD5uBH74nS.hx2E.WBOVh99x7ZHFM7VXnJO1Ajwt.6'
headers = {
  'Content-Type': 'application/json',
  'X-Master-Key': xmkey
}
req = requests.put(url, json=data, headers=headers)
print(req.text)

url = 'http://192.168.0.125:3333/posts/2'
headers = {
  'Content-Type': 'application/json'
}
req = requests.put(url, json=data, headers=headers)
print(req.text)
