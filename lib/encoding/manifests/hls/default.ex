defmodule Bitmovin.Encoding.Manifests.HLS.Default do
  alias Bitmovin.Client.Http

  def create(manifest, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/manifests/hls/default", manifest) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
