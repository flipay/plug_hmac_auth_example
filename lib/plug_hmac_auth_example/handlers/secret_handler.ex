defmodule PlugHmacAuthExample.Handlers.SecretHandler do
  @behaviour PlugHmacAuth.SecretHandler

  @access_key_id "DVyRzUyS27fiBnpsdGBzOYH1seo3EVNodbL2Hb1njNJVC5QtT5DfmpzpqofBHnZo"
  @access_secret_key "zPWhb2JH5v5hhU92xt1GXNMKpQMMbO3qKdXS0VXI3f8DnNbYR48jzZm2jTOTGXFs"

  @impl PlugHmacAuth.SecretHandler
  @spec get_secret_key(String.t()) :: {:error, :not_found} | {:ok, String.t()}
  def get_secret_key(access_key_id) do
    if access_key_id == @access_key_id do
      {:ok, @access_secret_key}
    else
      {:error, :not_found}
    end
  end
end
