# mssql-server

A Docker image for Microsoft SQL Server on Linux.

This image is based on the official Microsoft SQL Server image, but it has been modified to
include a pre-installed database with a user setup for that database.

Based on https://github.com/microsoft/mssql-docker/blob/master/linux/preview/examples/mssql-customize/

## Usage

```
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=Str0ngPassword" -p 1433:1433 -d pjfanning/mssql-server:2022-latest
```

* The database that is pre-installed is called `docker` with a user called `docker` with DDL, read and write permissions.
* The password for the `docker` user is based on the `MSSQL_SA_PASSWORD` env variable (see the `-e` above)
* The `-e` params are required by the base image `mcr.microsoft.com/mssql/server`
