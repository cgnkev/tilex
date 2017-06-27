defmodule Tilex.FeedController do
  use Tilex.Web, :controller

  def index(conn, _params) do
    posts = Repo.all from p in Tilex.Post, order_by: [desc: p.inserted_at], preload: [:developer]
    conn
    |> put_layout(:none)
    |> put_resp_content_type("application/xml")
    |> render("index.xml", items: posts)
  end
end
