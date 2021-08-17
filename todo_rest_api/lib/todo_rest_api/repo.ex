defmodule TodoRestApi.Repo do
  use Ecto.Repo,
    otp_app: :todo_rest_api,
    adapter: Ecto.Adapters.Postgres
end
