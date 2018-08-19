sleep 20s
sqlcmd  -S localhost -U sa -P P@55w0rd -i /tmp/sql/0_create_database.sql
sqlcmd  -S localhost -U sa -P P@55w0rd -i /tmp/sql/1_create_schema.sql
sqlcmd  -S localhost -U sa -P P@55w0rd -i /tmp/sql/2_init_data.sql
sqlcmd  -S localhost -U sa -P P@55w0rd -i /tmp/sql/3_store_procedures.sql
sqlcmd  -S localhost -U sa -P P@55w0rd -i /tmp/sql/4_trigguers.sql