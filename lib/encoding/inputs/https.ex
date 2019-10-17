defmodule Bitmovin.Encoding.Inputs.HTTPS do
  alias Bitmovin.Client.Http

  def create(http_input, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/inputs/https", http_input) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end

  def get(id, opts \\ []) do
    client = Keyword.get(opts, :client, Http)
    client.get("/encoding/inputs/https/#{id}")
  end
end
