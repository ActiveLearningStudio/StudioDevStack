# Introduction

CurrikiStudio enables you to create interactive learning content and publish them anywhere like Google Classroom, LMSs etc


# Pre-Requisites

1. Docker version 19 or above
2. Ubuntu 18.04 / 20.04, CentOS 8


# Docker / Docker-compose Instructions

## For Ubuntu

	sudo apt-get update -y
	sudo apt-get install git -y
	sudo apt-get install apt-transport-https ca-certificates curl gnupg -y
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
	sudo apt install docker.io -y
	sudo systemctl start docker
	sudo systemctl enable docker
				
	sudo curl -L https://github.com/docker/compose/releases/download/1.28.4/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose

## For CentOS 8

	sudo yum update -y
	sudo yum install git -y",
	sudo yum install -y yum-utils
	sudo yum-config-manager \
		--add-repo \
		https://download.docker.com/linux/centos/docker-ce.repo
	sudo yum install -y docker-ce docker-ce-cli containerd.io


	sudo systemctl start docker
	sudo systemctl enable docker

## Minimum Requirements

1. 8GB RAM
2. 4 VCPUs
3. Tried on Ubuntu, Amaozon Linux, Oracle Linux. This list will grow after testing

# Installation

    git clone https://github.com/ActiveLearningStudio/StudioSingleServer.git curriki
    cd curriki
	chmod +x install.sh
	./install.sh

# Components

## Applications

Following applications are the part of CurrikiStudio

1. [React Frontend application](https://github.com/ActiveLearningStudio/ActiveLearningStudio-react-client)
2. [Backend API](https://github.com/ActiveLearningStudio/ActiveLearningStudio-API)
3. [Tsugi for LTI](https://github.com/tsugiproject/tsugi)
4. [Trax LRS](https://github.com/trax-project/trax-lrs)

## Databases

1. External Postgres (For API, For LRS)
2. External MySQL (For Tsugi)



