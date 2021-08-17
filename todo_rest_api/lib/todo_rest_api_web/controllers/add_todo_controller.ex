defmodule TodoRestApiWeb.AddTodoController do
  use TodoRestApiWeb, :controller
  defmodule Todo do
    defstruct title: nil, done: false

  end
  def index(conn, params) do
    # IO.inspect params
    # IO.inspect req
    todos_map = %{}
    for param <- params do
      # IO.inspect param
      {_, param} = param
      IO.inspect param
      IO.inspect Map.put(todos_map, :title, param["title"], :done, param["done"])

    end



    text conn, "#{params["title"]} added"
  end

  def todos do
    %{}
  end
end
