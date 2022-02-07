#!/bin/bash


sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common libssl-dev libffi-dev git wget nano
sudo groupadd docker
sudo usermod -aG docker $(whoami)
id $(whoami)
curl -fsSl https://download.docker.com/linux/ubuntu/gpg  | sudo apt-key add
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo apt-get install -y docker-ce containerd.io
sudo apt-get install -y kubectl
echo "sudo service docker start" >> ~/.profile
exit