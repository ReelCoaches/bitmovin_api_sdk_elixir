defmodule Bitmovin.Encoding.Manifests.Dash.Periods do
  alias Bitmovin.Client.Http

  def create(manifest_id, period, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/manifests/dash/#{manifest_id}/periods", period) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
