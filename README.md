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
      && sudo apt install -y git gcc make perl vim net-tools openssh-server ansible \
      && git clone git@github.com:longgerr/init-vm.git \
      && cd init-vm \
      && git config user.email "longgerr@gmail.com" \
      && git config user.name "longgerr" \
      && git config --global core.editor "vim" 

    sudo swapoff -a
    # Perminantly disable swap
    sudo sed -i 's|/swapfile|#/swapfile|g' /etc/fstab
    ```
1. Install VirtualBox Guest Additions
1. Install docker
    ```sh
    ./docker-install.sh
    ```
1. Install kubernetes
    ```sh
    sudo ./kubeadm-install.sh
    ```
1. Install go
    ```sh
    ./go-install.sh --64
    ```
1. Install vscode and extentions
    1. Install golang extention
    1. Update preference for `go.goroot` and `go.gopath` accordingly
        ```json
        {
            "go.gopath": "/home/yingbo/go",
            "go.goroot": "/home/yingbo/.go"
        }
        ```
    1. Install go tools
        ```bash
        ./go-install-tools.sh
        ```