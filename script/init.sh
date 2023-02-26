#!/bin/bash

# Добавляем юзера
airflow users create \
          --username admin \
          --firstname admin \
          --lastname admin \
          --role Admin \
          --email admin@example.org \
          -p admin

# Создание БД
sleep 10
airflow upgradedb
sleep 10

# Запуск шедулера и вебсервера
airflow scheduler & airflow webserver

