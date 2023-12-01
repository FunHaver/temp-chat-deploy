# Temp Chat

This repository is here to contain the deployment of Temp Chat. The constituent parts are submodules and the main repository here contains installation scripts, system files, and configurations.

The source code for the client can be found [here](https://github.com/FunHaver/temp-chat-client)

The source code for the server can be found [here](https://github.com/FunHaver/temp-chat-server)

## Live Demo
To view a live demo, [click here](temp-chat.conortsullivan.net).

## Installation

### System Requirements
* OS: Debian 12
* nodeJS 20
* npm 10
* systemd
* nginx 1.22.1 or later
* bash
* 512MB of RAM
* git

### Instructions
1. Ensure all system requirements are met
2. Create the tempchat user with a home directory and sudo privileges\
`sudo useradd -s /bin/bash -d /home/tempchat -m -G sudo tempchat`
3. Give the tempchat user a secure password\
`sudo passwd tempchat`
4. Switch to the tempchat user and navigate to its home directory\
`su - tempchat`
5. clone this repository\
`git clone https://github.com/FunHaver/temp-chat-deploy`
6. Change into the temp-chat-deploy directory\
`cd temp-chat-deploy`
6. Make modifications to the nginx config file if you so choose (e.g. to enable SSL). The file is located in the top level of the temp-chat-deploy directory:\
temp-chat-nginx-config.conf
6. run the install.sh script with sudo\
`sudo ./install.sh`
7. start the application \
`sudo systemctl start temp-chat-server.service`

