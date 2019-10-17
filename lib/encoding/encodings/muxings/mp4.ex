defmodule Bitmovin.Encoding.Encodings.Muxings.MP4 do
  alias Bitmovin.Client.Http

  def create(encoding_id, mp4_muxing, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/encodings/#{encoding_id}/muxings/mp4", mp4_muxing) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
