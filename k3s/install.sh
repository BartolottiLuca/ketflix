#!/bin/bash
curl -sfL https://get.k3s.io | sh -
sudo cp ... ~/.kube/config

# install terraform

if ! $(echo $PATH | grep -q /usr/local/bin); then
  echo 'export PATH=$PATH:/usr/local/bin' >>~/.bashrc
fi
curl https://releases.hashicorp.com/terraform/1.5.3/terraform_1.5.3_linux_amd64.zip -o terraform_1.5.3_linux_amd64.zip
unzip terraform_1.5.3_linux_amd64.zip
mv terraform /usr/local/bin/terraform_1.5.3
ln -s /usr/local/bin/terraform_1.5.3 /usr/local/bin/terraform

terraform -install-autocomplete
