defmodule ClickCounterWeb.CountClicks do
  use ClickCounterWeb, :live_view
  def mount(_params, _session, socket) do
    
    {:ok, assign(socket, :clicks, 0)}
  end

  def render(assigns) do
    ~L"""
    <h1> Click count: <%= @clicks %> </h1>
      <br> <br>
     <button phx-click = "click" position = "center"> Click me! </button>
    """
  end

  def handle_event("click", _unsigned_params, socket) do
    # IO.inspect unsigned_params
    IO.puts "click event received"
    {:noreply, update(socket, :clicks, &(&1 + 1))}
  end
end
