defmodule LiveViewPlayWeb.MyLiveView do
  use LiveViewPlayWeb, :live_view

  def render(assigns) do
    ~H"""
    Bananas
    """
  end

  def mount(_params, %{}, socket) do
    {:ok, assign(socket, :blahdiblah, "100")}
  end
end
