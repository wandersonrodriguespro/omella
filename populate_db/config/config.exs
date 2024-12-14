import Config

config :populate_db_script, PopulateDBScript.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "school_data_dev",
  hostname: "localhost",
  pool_size: 15
