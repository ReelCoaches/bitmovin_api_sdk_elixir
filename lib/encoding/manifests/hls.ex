defmodule Bitmovin.Encoding.Manifests.HLS do
  alias Bitmovin.Client.Http

  def create(manifest, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/manifests/hls", manifest) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end

  def start(manifest_id, opts \\ []) do
    client = Keyword.get(opts, :client, Http)
    client.post("/encoding/manifests/hls/#{manifest_id}/start", %{})
  end
end
