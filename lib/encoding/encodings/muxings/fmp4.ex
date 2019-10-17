defmodule Bitmovin.Encoding.Encodings.Muxings.FMP4 do
  alias Bitmovin.Client.Http

  def create(encoding_id, fmp4_muxing, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/encodings/#{encoding_id}/muxings/fmp4", fmp4_muxing) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
