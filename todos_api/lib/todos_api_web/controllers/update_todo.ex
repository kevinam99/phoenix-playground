defmodule TodosApiWeb.UpdateTodo do
  use TodosApiWeb, :controller
  alias TodosApi.Todos
  alias TodosApi.Todos.Todo

  action_fallback TodosApiWeb.FallbackController

  def update(conn, %{"id" => id, "todo" => todo_params}) do
    todo = Todos.get_todo!(id)

    with {:ok, %Todo{} = todo} <- Todos.update_todo(todo, todo_params) do
      render(conn, "show.json", todo: todo)
    else
      error -> render(conn, "error.json", error: error)
    end
  end

  def no_id_received(conn, _params) do
    send_resp(conn, 401, "{error: NO_PARAMS_RECEIVED}")
  end
end
