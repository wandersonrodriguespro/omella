defmodule PopulateDbScript.Application do
   use Application

  @impl true
  def start(_type, _args) do
    children = [
      PopulateDBScript.Repo
    ]
    opts = [strategy: :one_for_one, name: PopulateDbScript.Supervisor]
    Supervisor.start_link(children, opts)
  end
end