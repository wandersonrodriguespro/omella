defmodule CsvImporter.MixProject do
  use Mix.Project

  def project do
    [
      app: :csv_importer,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
    mod: {CsvImporter.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:csv, "~> 3.0"},
    {:ecto_sql, "~> 3.10"},
    {:postgrex, ">= 0.0.0"}
    ]
  end
end
