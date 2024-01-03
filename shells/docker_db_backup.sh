#!/bin/bash

echo "Enter Container name: "
# shellcheck disable=SC2162
read container
echo "Enter user name of the MySql Database: "
# shellcheck disable=SC2034
# shellcheck disable=SC2162
read username

echo "Enter your Database name: "
# shellcheck disable=SC2162
read db_name
echo "Enter database password: "
# shellcheck disable=SC2162
read -s pass

echo "Enter backup db name: "
# shellcheck disable=SC2162
read dump

docker exec -it $container mysql -u $username –p $pass $db_name > DB_Backup/$dump.sql
