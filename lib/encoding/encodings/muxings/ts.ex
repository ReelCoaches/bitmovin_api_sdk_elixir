defmodule Bitmovin.Encoding.Encodings.Muxings.TS do
  alias Bitmovin.Client.Http

  def create(encoding_id, muxing, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/encodings/#{encoding_id}/muxings/ts", muxing) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
