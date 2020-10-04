defmodule TeenywordsWeb.PageController do
  use TeenywordsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
