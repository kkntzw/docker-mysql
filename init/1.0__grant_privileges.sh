#!/bin/bash

QUERY="
    GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}';
    FLUSH PRIVILEGES;
"
echo "${QUERY}" | mysql -u root -p${MYSQL_ROOT_PASSWORD}
