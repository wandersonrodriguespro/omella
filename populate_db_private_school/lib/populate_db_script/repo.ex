defmodule PopulateDBScript.Repo do
  use Ecto.Repo,
    otp_app: :populate_db_script,
    adapter: Ecto.Adapters.Postgres
end
