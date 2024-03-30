edgedb -P 5656 --tls-security=insecure migration create
edgedb -P 5656 --tls-security=insecure migration apply
cat edgedb/test_data.edgeql | edgedb -P 5656 --tls-security=insecure
cat edgedb/test_users.edgeql | edgedb -P 5656 --tls-security=insecure
cat edgedb/test_teams.edgeql | edgedb -P 5656 --tls-security=insecure
cat edgedb/test_vacations.edgeql | edgedb -P 5656 --tls-security=insecure
cat edgedb/test_discussions.edgeql | edgedb -P 5656 --tls-security=insecure
cat edgedb/test_messages.edgeql | edgedb -P 5656 --tls-security=insecure
