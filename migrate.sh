edgedb -P 5656 --tls-security=insecure migration create
edgedb -P 5656 --tls-security=insecure migration apply
cat test_data.edgeql | edgedb -P 5656 --tls-security=insecure
