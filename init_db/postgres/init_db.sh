#!/bin/bash
set -eux

THISDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#Demo PostgreSQL Database initialisation
psql postgres -c "CREATE USER student PASSWORD 'student'"
#The -O flag below sets the user: createdb -O DBUSER DBNAME
createdb -O student studentdb

#psql -d studentdb -U student -f $THISDIR/seed_db.sql