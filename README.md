# init-vm
Scripts to init tools for new Ubuntu VM

## VirtualBox

* Install basic tools
  ```sh
  cd /tmp \
    && sudo apt update \
    && sudo apt install -y git gcc make perl \
    && git clone https://github.com/longgerr/init-vm.git \
    && cd init-vm \
    && git config user.email "longgerr@gmail.com" \
    && git config user.name "longgerr" \
    && ./init.sh
  ```
* Install VirtualBox Guest Additions
