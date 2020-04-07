defmodule PlugHmacAuthExampleWeb.PrivateView do
  @spec render(String.t(), map()) :: %{status: String.t()}
  def render("show.json", %{}) do
    %{status: "success"}
  end
end
