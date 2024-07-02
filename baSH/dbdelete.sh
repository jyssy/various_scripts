#!/bin/bash

# Login to PostgreSQL
psql -U postgres -c "\l" | awk '/^[[:alnum:]]/ && $1 != "template0" && $1 != "template1" && $1 != "postgres" {print $1}' | while read db ; do
    echo "Dropping database: $db"
    psql -U postgres -c "DROP DATABASE $db;"
done


