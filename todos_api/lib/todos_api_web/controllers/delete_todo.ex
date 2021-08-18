defmodule TodosApiWeb.DeleteTodo do
  use TodosApiWeb, :controller
  alias TodosApi.Todos
  alias TodosApi.Todos.Todo

  action_fallback TodosApiWeb.FallbackController

  def index(conn, %{"id" => id}) do
    todo = Todos.get_todo!(id)

    with {:ok, %Todo{}} <- Todos.delete_todo(todo) do
      send_resp(conn, 200, "todo deleted")
    else
      error -> send_resp(conn, 500, error)
    end
  end

  def no_id_received(conn, _params) do
    send_resp(conn, 401, "{error: NO_ID_RECEIVED}")
  end
end
