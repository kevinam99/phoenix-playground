defmodule TodosApiWeb.AddTodo do
  use TodosApiWeb, :controller

  def index(conn, _params) do
    text conn, "hello from POST/"
  end
end
