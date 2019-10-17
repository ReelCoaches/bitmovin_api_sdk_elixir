defmodule Bitmovin.Encoding.Encodings.Muxings.CMAF do
  alias Bitmovin.Client.Http

  def create(encoding_id, cmaf_muxing, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/encodings/#{encoding_id}/muxings/cmaf", cmaf_muxing) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
