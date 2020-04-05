defmodule PlugHmacAuthExampleWeb.Router do
  use PlugHmacAuthExampleWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PlugHmacAuthExampleWeb do
    pipe_through :api
  end
end
