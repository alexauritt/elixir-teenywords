defmodule TeenywordsWeb.PageController do
  use TeenywordsWeb, :controller
  import Teenywords.TeenyString


  def index(conn, _params) do
    teeny_str = Teenywords.TeenyString.random(2)
    render(conn, "index.html", teeny_str: teeny_str, is_word: is_word(teeny_str))
  end
end
