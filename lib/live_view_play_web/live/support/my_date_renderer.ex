defmodule LiveViewPlayWeb.Live.Support.MyDateRenderer do
  use Phoenix.Component

  def render_today(assigns) do
    ~H"""
    <span>
      <%= Date.utc_today() %>
    </span>
    """
  end
end
