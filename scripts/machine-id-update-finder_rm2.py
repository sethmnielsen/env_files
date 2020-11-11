#!/usr/bin/env python3

import time
import uuid
import random
import requests

# This script is tested and working as of September 2020.
# It is only a slightly modified version of leezu's script: https://gist.github.com/leezu/2efb1533d453b70db406b58eb6e3a2af
# leezu gets 99.9% of the credit

# INSTRUCTIONS:
# Run this script on any computer with internet and python3 installed.
# Once a machine id is found, see instructions at the end of this script (instructions will be printed to terminal).

# not sure if the UUID of these ones matter
orig_appid = "98DA7DF2-4E3E-4744-9DE6-EC931886ABAB"
orig_bootid = "fddcd3cd-3bf6-4cee-9a0a-31577b58b6da"

# these two DO matter
orig_machineid = "0968003611624c548b6684b5e1d80bfe" #example id, run 'cat /etc/machine-id' on tablet for yours
orig_oem = "RM110-039-51902" #find in /home/root/.config/remarkable/xochitl.conf as 'deviceid=RM110-xxx-xxxxx'

# this is the request to send; fill in the desired software version and your current version
# in this example, current version is 2.3.1.27 and desire to update to 2.4.0.27
cur_firmware_ver = "2.3.1.27"
des_firmware_ver = "2.4.0.27"
req = """<?xml version="1.0" encoding="UTF-8"?>
<request protocol="3.0" version="{des_firmware}" requestid="{{{requestid}}}" sessionid="{{{sessionid}}}" updaterversion="0.4.2" installsource="{installsource}" ismachine="1">
    <os version="zg" platform="reMarkable" sp="0.0.4.81_armv7l" arch="armv7l"></os>
    <app appid="{{{appid}}}" version="{cur_firmware}" track="Prod" ap="Prod" bootid="{{{bootid}}}" oem="{oem}" oemversion="2.1.3" alephversion="{cur_firmware}" machineid="{machineid}" lang="en-US" board="" hardware_class="" delta_okay="false" nextversion="0.0.0" brand="" client="" >
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
    base = "RM110"
    middle = "039"
    end = str(random.randint(40000, 70000))

    return "-".join([base,middle,end])

while True:
    params = {
        "installsource": "scheduler",  # or "ondemandupdate"
        "cur_firmware": cur_firmware_ver,
        "des_firmware": des_firmware_ver,
        "requestid": get_uuid(),
        "sessionid": get_uuid(),
        "machineid": get_uuid().replace("-", ""),
        "oem": get_oem(),
        "bootid": orig_bootid,
        "appid": orig_appid
    }
    req_fulltext = req.format(**params)
    resp = requests.post(url, req_fulltext)
    print(params)

    if "Bad Request" in resp.text:
        msg = f"Bad request. Request content:\n{req_fulltext}"
        raise requests.RequestException(msg)

    if len(resp.text) != 0:
        if "noupdate" in resp.text:
            print(f"\nNo update ---- OEM: {params['oem']}, machine-id: {params['machineid']} ", end='')
            time.sleep(1)
        else:
            print("Found params to get update: ")
            print(f"{params}\n")
            print(resp.text)
            break
    else:
        print(".", end='', flush=True)
        # there is a limit to how many requests can be sent to their server
        # limit was found to be 3 requests every 20 sec
        # decreasing the delay below will just result in more empty responses
        time.sleep(20)


print(f"\nNow replace your tablet's machine-id with: {params['machineid']}")
print("You can do that by running this command on your tablet:\n")
print(f"\tmv /etc/machine-id /etc/machine-id_orig && echo {params['machineid']} > /etc/machine-id\n")
print("After that, on tablet go to Settings -> Software -> set 'Automatic updates' to 'On' -> press 'Check for updates'")
print("Then you should be able to download the new firmware update!")
