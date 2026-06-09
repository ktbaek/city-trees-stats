# read datasets from db
cfg <- yaml::read_yaml("config/db.yml")$copenhagen

con_cph <- DBI::dbConnect(
  RPostgres::Postgres(),
  host = cfg$host,
  port = cfg$port,
  dbname = cfg$dbname,
  user = cfg$user
)

cfg <- yaml::read_yaml("config/db.yml")$berlin

con_bln <- DBI::dbConnect(
  RPostgres::Postgres(),
  host = cfg$host,
  port = cfg$port,
  dbname = cfg$dbname,
  user = cfg$user
)