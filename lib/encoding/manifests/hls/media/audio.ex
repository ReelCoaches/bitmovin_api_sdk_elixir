defmodule Bitmovin.Encoding.Manifests.HLS.Media.Audio do
  alias Bitmovin.Client.Http

  def create(hls_manifest_id, audio_media, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/manifests/hls/#{hls_manifest_id}/media/audio", audio_media) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
