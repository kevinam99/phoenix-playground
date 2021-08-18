defmodule TodosApiWeb.ListTodos do
  use TodosApiWeb, :controller

  alias TodosApi.Todos
  alias TodosApi.Todos.Todo

  def index(conn, _params) do
    todos = Todos.list_todos()
    render(conn, "index.json", todos: todos)
  end
end
