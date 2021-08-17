defmodule ClickCounter.Repo do
  use Ecto.Repo,
    otp_app: :click_counter,
    adapter: Ecto.Adapters.Postgres
end
