defmodule LiveViewPlay.Repo do
  use Ecto.Repo,
    otp_app: :live_view_play,
    adapter: Ecto.Adapters.Postgres
end
