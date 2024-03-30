edgedb --dsn edgedb://edgedb:edgedb@localhost --tls-security insecure migration create
edgedb --dsn edgedb://edgedb:edgedb@localhost --tls-security insecure migration apply

cat edgedb/test_data.edgeql | edgedb --dsn edgedb://edgedb:edgedb@localhost --tls-security insecure
cat edgedb/test_users.edgeql | edgedb --dsn edgedb://edgedb:edgedb@localhost --tls-security insecure
cat edgedb/test_teams.edgeql | edgedb --dsn edgedb://edgedb:edgedb@localhost --tls-security insecure
cat edgedb/test_vacations.edgeql | edgedb --dsn edgedb://edgedb:edgedb@localhost --tls-security insecure
cat edgedb/test_discussions.edgeql | edgedb --dsn edgedb://edgedb:edgedb@localhost --tls-security insecure
cat edgedb/test_messages.edgeql | edgedb --dsn edgedb://edgedb:edgedb@localhost --tls-security insecure
