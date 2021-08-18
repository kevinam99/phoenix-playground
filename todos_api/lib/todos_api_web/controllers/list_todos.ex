defmodule TodosApiWeb.ListTodos do
  use TodosApiWeb, :controller
  alias TodosApi.Repo
  alias TodosApi.Todos.Todo
  def index(conn, _params) do
    IO.puts "Todos:"
    Repo.all(Todo)
    |> Enum.each(fn todo ->
      IO.puts todo["title"]
    end)
    text conn, "Hello from GET /"
  end
end
