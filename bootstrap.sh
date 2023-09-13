#!/usr/bin/env bash

bootstrap() {
  echo "Installing dependencies..."
  echo ""
	sudo apt-get update
	sudo apt-get -y install ansible
	ansible-playbook /home/vagrant/code/playbook.yml
	cd /home/vagrant/code && docker-compose up -d
}
export DEBIAN_FRONTEND=noninteractive
bootstrap
