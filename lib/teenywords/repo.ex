defmodule Teenywords.Repo do
  use Ecto.Repo,
    otp_app: :teenywords,
    adapter: Ecto.Adapters.Postgres
end
