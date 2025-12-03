---
sidebar_position: 1
---

# Introduction

This script will help with the quick setup and installation of tools and applications for new developers at Badal-IO. Tested in Mac OS 10.14 to 12. This script works on both Intel and M1/M2 Macs.

You can run this script multiple times without issue. You can also run it on a partially set-up computer and it will only install what is missing.

The script will create/modify `.bash_profile` and `.zprofile` with path and autocomplete sources. If you do run it on an already set-up computer, please check these files for any duplicated paths/imports/etc.

## Quick Install Instructions

Paste the command below in a Mac OS Terminal:
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/badal-io/setup-new-computer-script/main/setup-new-computer.sh)"
```

## Manual Install Instructions

* Download the script `setup-new-computer.sh` to your home folder
* Open Terminal and navigate to where you saved it
* Make the script executable:
   ```sh
   chmod +x ./setup-new-computer.sh
   ```
* Run the script:
   ```sh
   ./setup-new-computer.sh
   ```

* Some installs will need your password
* You will be prompted to fill out your git email and name. Use the email and name you use for Github