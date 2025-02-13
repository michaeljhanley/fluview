library(DBI)
library(RSQLite)

con <- dbConnect(SQLite(), "fluview_database.db")

# Create tables and work with the database
dbExecute(con, "CREATE TABLE fluview_hhs_age (
    id INTEGER PRIMARY KEY,
    release_date TEXT,
    region TEXT,
    issue TEXT,
    epiweek TEXT,
    lag INTEGER,
    num_ili INTEGER,
    num_patients INTEGER,
    num_providers INTEGER,
    num_age_0 INTEGER,
    num_age_1 INTEGER,
    num_age_3 INTEGER,
    num_age_4 INTEGER,
    num_age_5 INTEGER,
    wili REAL,
    ili REAL
)")

dbDisconnect(con)