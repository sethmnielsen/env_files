#!/usr/bin/env python3

import time
import uuid
import random

import requests

orig_requestid = "f1aa8814-a007-46ad-aede-ae071cacccbe"
orig_sessionid = "2019ed24-e518-4a2c-96d2-af660a7bff97"
orig_appid = "98DA7DF2-4E3E-4744-9DE6-EC931886ABAB"
orig_bootid = "87d86ae4-1349-4284-b63d-0e5de298b80d"
orig_machineid = "672a256cb41a4fc28db5a460fe7b2936" #censored
orig_oem = "RM102-939-63140" #censored
req = """<?xml version="1.0" encoding="UTF-8"?>
<request protocol="3.0" version="2.3.0.16" requestid="{{{requestid}}}" sessionid="{{{sessionid}}}" updaterversion="0.4.2" installsource="{installsource}" ismachine="1">
    <os version="zg" platform="reMarkable" sp="0.0.4.81_armv7l" arch="armv7l"></os>
    <app appid="{{{appid}}}" version="2.2.0.48" track="Prod" ap="Prod" bootid="{{{bootid}}}" oem="{oem}" oemversion="2.1.3" alephversion="2.2.0.48" machineid="{machineid}" lang="en-US" board="" hardware_class="" delta_okay="false" nextversion="0.0.0" brand="" client="" >
        <ping active="1"></ping>
        <updatecheck></updatecheck>
        <event eventtype="3" eventresult="2" previousversion=""></event>
    </app>
</request>"""
url = "https://get-updates.cloud.remarkable.engineering/service/update2"


def get_uuid():
    """Generate a random UUID.

    update_engine/utils.cc just reads this from /proc/sys/kernel/random/uuid
    """
    return str(uuid.uuid4())

def get_oem():
    base = "RM102"
    middle = "939"
    # middle = str(random.randint(500, 800))
    # end = "63140"
    end = str(random.randint(50000, 70000))

    return "-".join([base,middle,end])

while True:
    params = {
        "installsource": "scheduler",  # or "ondemandupdate"
        "requestid": get_uuid(),
        "sessionid": get_uuid(),
        "machineid": get_uuid().replace("-", ""),
        "oem": get_oem(),
        "bootid": orig_bootid,
        # "machineid": "759c63f7f10c448f8991afad149e4345",
        # "requestid": "6ec2ba6b-2e9c-4d4c-823a-d19a094062e5",
        # "sessionid": "3c4fa8b9-6aeb-4314-be22-5fa90a782fb9",
        "appid": orig_appid
        # "bootid": "48cfc9fb-e90a-4ace-81aa-2b9eeb928e83"
    }
    resp = requests.post(url, req.format(**params))

    if len(resp.text) != 0:
        updateline = resp.text.splitlines()[5]
        if "noupdate" not in updateline:
            print(f"\nRESPONSE:\n{resp.text}")
        else:
            print(".", end='', flush=True)
        # print(resp.text.find("updatecheck"))


    # if "noupdate" in resp.text:
    #     print(f"No update.. OEM: {params['oem']}, m-id: {params['machineid']}")
    # else:
    #     print("Found params to get update: ")
    #     print(params)
    #     print()
    #     print(resp.text)

    #     break

    time.sleep(1)
