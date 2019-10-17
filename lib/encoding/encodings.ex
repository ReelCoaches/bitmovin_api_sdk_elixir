defmodule Bitmovin.Encoding.Encodings do
  alias Bitmovin.Client.Http

  def create(encoding, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/encodings", encoding) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end

  def start(encoding_id, opts \\ []) do
    client = Keyword.get(opts, :client, Http)
    client.post("/encoding/encodings/#{encoding_id}/start", %{})
  end

  def status(encoding_id, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.get("/encoding/encodings/#{encoding_id}/status") do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
