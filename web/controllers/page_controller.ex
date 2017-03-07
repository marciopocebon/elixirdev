defmodule Elixirdev.PageController do
  use Elixirdev.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
