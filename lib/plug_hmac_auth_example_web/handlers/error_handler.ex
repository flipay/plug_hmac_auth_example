defmodule PlugHmacAuthExampleWeb.ErrorHandler do
  use PlugHmacAuthExampleWeb, :controller
  import Plug.Conn

  @behaviour PlugHmacAuth.ErrorHandler

  @impl PlugHmacAuth.ErrorHandler
  @spec auth_error(Plug.Conn.t(), atom()) :: Plug.Conn.t()
  def auth_error(conn, _code) do
    conn
    |> put_status(:unauthorized)
    |> put_view(PlugHmacAuthExampleWeb.ErrorView)
    |> render(:"401")
  end
end
