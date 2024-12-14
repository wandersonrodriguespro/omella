defmodule PopulateDBScript.MixProject do
  use Mix.Project

  def project do
    [
      app: :populate_db_script,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {PopulateDbScript.Application, []}
    ]
  end

  defp deps do
  [
    {:ecto, "~> 3.9"},
    {:ecto_sql, "~> 3.9"},
    {:postgrex, "~> 0.15"},
    {:csv, "~> 2.4"}
  ]
end
end
