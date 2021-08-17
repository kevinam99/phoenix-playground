defmodule ClickCounterWeb.PageController do
  use ClickCounterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
