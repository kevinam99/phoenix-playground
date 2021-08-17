defmodule TodoRestApiWeb.DefaultController do
  use TodoRestApiWeb, :controller

  @spec index(Plug.Conn.t(), any) :: Plug.Conn.t()
  def index(conn, params) do
    IO.inspect params
    text conn, "todo api"
  end
end
