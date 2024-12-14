import Config

config :csv_importer, 
  ecto_repos: [CsvImporter.Repo]

config :csv_importer, CsvImporter.Repo,
  database: "school_data_dev",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"