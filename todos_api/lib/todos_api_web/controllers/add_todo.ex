defmodule TodosApiWeb.AddTodo do
  use TodosApiWeb, :controller

  alias TodosApi.Todos
  # database context
  alias TodosApi.Todos.Todo

  action_fallback TodosApiWeb.FallbackController

  def create(conn, %{"todo" => todo_params}) do
    IO.puts("Hello from POST /api/addTodo")

    with {:ok, %Todo{} = todo} <- Todos.create_todo(todo_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.todo_path(conn, :show, todo))
      |> render("show.json", todo: todo)
    end
  end
end
