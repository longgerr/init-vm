# init-vm
Scripts to init tools for new Ubuntu VM

## VirtualBox

1. Generate ssh-key and add to github
    ```sh
    ssh-keygen
    cat ~/.ssh/id_rsa.pub
    ```
1. Install basic tools
    ```sh
    cd $HOME \
      && sudo apt update \
      && sudo apt install -y git gcc make perl vim \
      && git clone git@github.com:longgerr/init-vm.git \
      && cd init-vm \
      && git config user.email "longgerr@gmail.com" \
      && git config user.name "longgerr" \
      && git config --global core.editor "vim" \
      && ./init.sh
    ```
1. Install VirtualBox Guest Additions
