defmodule Bitmovin.Encoding.Outputs.GCS do
  alias Bitmovin.Client.Http

  def create(gcs_output, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/outputs/gcs", gcs_output) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end

  def get(id, opts \\ []) do
    client = Keyword.get(opts, :client, Http)
    client.get("/encoding/outputs/gcs/#{id}")
  end
end
