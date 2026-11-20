# ZOMATO
Installation steps

Docker installation

# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc




# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: (./etc/os-release&&echo"{UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update

sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo systemctl status docker
sudo systemctl start docker


getent group docker
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins





Npm installation & verification


# sudo apt install npm
node -v
npm -v
npm list react react-dom react-scripts

npm install react-scripts@5.0.1

npm list react-scripts

npm list eslint eslint-config-react-app eslint-plugin-jest
npm install --save-dev eslint@8.48.0 eslint-plugin-jest@27.2.3 ## will update; neglect error

npm run build





































