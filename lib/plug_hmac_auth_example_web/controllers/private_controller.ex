defmodule PlugHmacAuthExampleWeb.PrivateController do
  use PlugHmacAuthExampleWeb, :controller

  def show(conn, _attrs) do
    conn |> put_status(:ok) |> render("show.json")
  end
end
