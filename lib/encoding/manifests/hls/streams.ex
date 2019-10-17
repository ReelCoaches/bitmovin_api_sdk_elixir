defmodule Bitmovin.Encoding.Manifests.HLS.Streams do
  alias Bitmovin.Client.Http

  def create(hls_manifest_id, stream, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/manifests/hls/#{hls_manifest_id}/streams", stream) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
