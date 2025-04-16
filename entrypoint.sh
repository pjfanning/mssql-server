#!/bin/bash

# Start the script to create the DB and user
/usr/config/configure-db.sh &> /usr/config/config.log &

# Start SQL Server
/opt/mssql/bin/sqlservr
