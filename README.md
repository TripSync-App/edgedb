# edgedb

`make build up migrate` to get DB running.

`make stop remove` to stop and remove DB from Docker.

`docker exec -it edgedb bash` # Go into the container
`edgedb -P 5656 --tls-security=insecure` # Connect to the database
