defmodule LiveViewPlayWeb.MyLiveView do
  use LiveViewPlayWeb, :live_view

  def render(assigns) do
    ~H"""
    <div class="p-3 flex flex-col space-y-3">
      <h1>My live view.</h1>

      <%# A nice modular liveview component, in another class. %>
      <LiveViewPlayWeb.Live.Support.MyDateRenderer.render_today />

      <%# The same kind of thing, but local (in this ex file) %>
      <.greeter_local_component_with_messy_assign first_name="Stevo1" last_name="McSteevy1" />
      <.greeter_local_component_with_cleaner_assign first_name="Stevo2" last_name="McSteevy2" />
    </div>
    """
  end

  def greeter_local_component_with_cleaner_assign(%{:first_name => first_name, :last_name => last_name} = assigns) do
    ~H"""
    <span>Hello there <em><%= full_name(first_name, last_name) %></em></span>
    """
  end

  defp full_name(first_name, last_name) do
    first_name <> " " <> last_name
  end

  def greeter_local_component_with_messy_assign(%{:first_name => first_name, :last_name => last_name} = assigns) do
    assigns = assign(assigns, full_name: first_name <> " " <> last_name)

    ~H"""
    <span>Hello there <em><%= @full_name %></em></span>
    """
  end

  def mount(_params, %{}, socket) do
    {:ok, assign(socket, :blahdiblah, "100")}
  end
end
