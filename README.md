# Vagrant
Необходимо написать Vagrantfile который по команде vagrant up сделает следующее: 
1) Запустит бокс Ubuntu 20.04 https://app.vagrantup.com/generic
2) Внутри ВМ произойдет автоматическая установка docker и docker compose (используя ansible). 
3) Внутри ВМ произойдет установка node exporter для Prometheus (используя ansible). 
4) С помощью docker compose (docker-compose up, сам docker compose стоит дернуть так же через ansible) будет запущено 2 контейнера: 
4.1) Первый контейнер с prometheus, который будет настроен на сбор метрик с node exporter из Ubuntu 
4.2) Второй контейнер с grafana, которая будет предварительно преднастроена:
    в качестве datasource используется prometheus из соседнего контейнера,
    уже загружен dashboard 1860 https://grafana.com/grafana/dashboards/1860,
    который визуализирует метрики полученные с node exporter 
6) Контейнер с grafana должен пробрасывать 3000 порт контейнера в ВМ с ubuntu
7) Сама ВМ с ubuntu должна пробрасывать 3000 порт в хостовую машину 
