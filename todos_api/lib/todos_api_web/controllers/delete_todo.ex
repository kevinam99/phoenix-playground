defmodule TodosApiWeb.DeleteTodo do
  use TodosApiWeb, :controller
  def index(conn, _params) do
    text conn, "Hello from POST /delete_todo"
  end
end
