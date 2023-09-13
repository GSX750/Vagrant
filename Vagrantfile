# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
# config.vm.box - Скачивает Box ВМ, если с доступом к репозиторую у Вас все в порядке то при подстановке значения "generic/ubuntu2004"
# загрузится образ ubuntu 20.04
# Если нету доступа к репозиторую скачиваем от сюда Box https://app.vagrantup.com/generic/boxes/ubuntu2004
# Теперь нужно скаченный Box добавить в Vagrant выполняем: vagrant box add lab1 file:///d:/path/to/file.box
# Теперь сконфигурируем ВМ: config.vm.box = "lab1"
  config.vm.box = "Dima"
# Все файлы для автоматической настройки находятся в папке от куда запускаем Vagrant
# Для того чтобы удобно конфигурировать файлы, пробросим всю текущую папку в ВМ: config.vm.synced_folder
  config.vm.synced_folder ".", "/home/vagrant/code"
# Сконфигурируем проброс портов с хоста в ВМ: config.vm.network
  config.vm.network "forwarded_port", guest: 3000, host: 3000
# Запустим скрипт который до настроит ВМ: config.vm.provision
  config.vm.provision "shell", path: "bootstrap.sh", keep_color: true
end
