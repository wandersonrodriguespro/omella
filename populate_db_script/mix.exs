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

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
  [
    {:ecto, "~> 3.9"},    # Ecto
    {:ecto_sql, "~> 3.9"}, # Ecto SQL para integração com bancos de dados SQL
    {:postgrex, "~> 0.15"},
    {:csv, "~> 2.4"}
  ]
end
end
