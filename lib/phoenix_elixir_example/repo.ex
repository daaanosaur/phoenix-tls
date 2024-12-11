defmodule PhoenixElixirExample.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_elixir_example,
    adapter: Ecto.Adapters.Postgres
end
