defmodule CsvImporter.Repo do
  use Ecto.Repo,
    otp_app: :csv_importer,
    adapter: Ecto.Adapters.Postgres
end