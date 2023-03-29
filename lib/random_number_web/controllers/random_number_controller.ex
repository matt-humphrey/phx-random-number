defmodule RandomNumberWeb.RandomNumberController do
  use RandomNumberWeb, :controller

  def index(conn, _params) do
    count = Enum.random(1..100)
    render(conn, "index.html", count: count)
  end

end
