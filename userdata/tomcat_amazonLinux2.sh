#!/bin/bash
sudo amazon-linux-extras install epel -y
yum update -y

## install these dependencies from standard OS repositories
yum install socat logrotate -y


## install RabbitMQ and zero dependency Erlang
yum install -y erlang rabbitmq-server


sudo yum install firewalld
sudo systemctl start firewalld
sudo systemctl enable firewalld
firewall-cmd --add-port=5672/tcp
firewall-cmd --runtime-to-permanent
sudo systemctl start rabbitmq-server
sudo systemctl enable rabbitmq-server
sudo systemctl status rabbitmq-server
sudo sh -c 'echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config'
sudo rabbitmqctl add_user test test
sudo rabbitmqctl set_user_tags test administrator
sudo systemctl restart rabbitmq-server

