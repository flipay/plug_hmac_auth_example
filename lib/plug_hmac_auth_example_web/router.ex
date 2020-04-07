defmodule PlugHmacAuthExampleWeb.Router do
  use PlugHmacAuthExampleWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  pipeline :plug_hmac_auth do
    plug(PlugHmacAuth,
      key_access_id: "x-access-id",
      key_signature: "x-access-signature",
      hmac_hash_algo: :sha512,
      secret_handler: PlugHmacAuthExample.Handlers.SecretHandler,
      error_handler: PlugHmacAuthExampleWeb.ErrorHandler
    )
  end

  scope "/api/private", PlugHmacAuthExampleWeb do
    pipe_through([:api, :plug_hmac_auth])

    get("/", PrivateController, :show)
  end
end
