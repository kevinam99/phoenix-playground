defmodule TodosApiWeb.DeleteTodoView do
  use TodosApiWeb, :view
  alias TodosApiWeb.TodoView
  def render("show.json", %{todo: todo}) do
    %{data: render_one(todo, TodoView, "todo.json")}
  end
end
