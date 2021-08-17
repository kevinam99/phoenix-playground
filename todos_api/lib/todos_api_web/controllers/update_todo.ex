defmodule TodosApiWeb.UpdateTodo do
  use TodosApiWeb, :controller

  def index(conn, _params) do
    text conn, "Hello from POST /update_todo"
  end
end
