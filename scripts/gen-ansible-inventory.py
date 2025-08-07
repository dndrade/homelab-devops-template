#!/usr/bin/env python3
import json
import subprocess

tf_output = subprocess.check_output(["terraform", "output", "-json"], cwd="terraform/gcp")
data = json.loads(tf_output)

inventory = {
    "all": {
        "hosts": [
            data["vm_public_ip"]["value"]
        ],
        "vars": {
            "ansible_user": data["ssh_user"]["value"],
            "ansible_host": data["vm_public_ip"]["value"],
            "ansible_ssh_common_args": "-o StrictHostKeyChecking=no"
        }
    }
}

print(json.dumps(inventory, indent=2))
