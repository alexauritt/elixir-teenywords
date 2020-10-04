defmodule TeenywordsWeb.PageController do
  use TeenywordsWeb, :controller


  def index(conn, _params) do
    teeny_str = Teenywords.TeenyString.random(2)
    render(conn, "index.html", teeny_str: teeny_str)
  end
end
