defmodule TodoRestApiWeb.TodosLive do
  use TodoRestApiWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, list_todos())}
  end

  @impl true
  def handle_event("done", val, socket) do
    IO.puts "val = #{val["value"]}"
    {:noreply, socket}
  end

  def list_todos() do
    %{
      do: %{
        title: "tilr1",
        done: false
      },
      another: %{
        title: "tilr2",
        done: true
      }
    }
  end
end
