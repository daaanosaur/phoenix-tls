defmodule PhoenixElixirExample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      PhoenixElixirExampleWeb.Telemetry,
      PhoenixElixirExample.Repo,
      {DNSCluster, query: Application.get_env(:phoenix_elixir_example, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: PhoenixElixirExample.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: PhoenixElixirExample.Finch},
      # Start a worker by calling: PhoenixElixirExample.Worker.start_link(arg)
      # {PhoenixElixirExample.Worker, arg},
      # Start to serve requests, typically the last entry
      PhoenixElixirExampleWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PhoenixElixirExample.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PhoenixElixirExampleWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end