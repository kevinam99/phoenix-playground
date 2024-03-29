defmodule TodosApiWeb.TodoView do
  use TodosApiWeb, :view
  alias TodosApiWeb.TodoView

  def render("index.json", %{todos: todos}) do
    %{data: render_many(todos, TodoView, "todo.json")}
  end

  def render("show.json", %{todo: todo}) do
    %{data: render_one(todo, TodoView, "todo.json")}
  end

  def render("todo.json", %{todo: todo}) do
    %{id: todo.id, title: todo.title, done: todo.done}
  end

  def render("error.json", %{error: error}) do
    %{
      message: error
    }
  end
end
