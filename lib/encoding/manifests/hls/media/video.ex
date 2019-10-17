defmodule Bitmovin.Encoding.Manifests.HLS.Media.Video do
  alias Bitmovin.Client.Http

  def create(hls_manifest_id, video_media, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/manifests/hls/#{hls_manifest_id}/media/video", video_media) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
