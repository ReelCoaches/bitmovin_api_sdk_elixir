defmodule Bitmovin.Encoding.Encodings.Streams do
  alias Bitmovin.Client.Http

  def create(encoding_id, stream, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/encodings/#{encoding_id}/streams", stream) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
