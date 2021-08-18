defmodule TodosApiWeb.DefaultController do
  use TodosApiWeb, :controller

  def index(conn, _params) do
    text conn, "Hello from GET /"
  end
end
