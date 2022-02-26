defmodule LiveViewPlayWeb.PageController do
  use LiveViewPlayWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
