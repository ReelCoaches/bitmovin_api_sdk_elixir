defmodule Bitmovin.Encoding.Inputs.GCS do
  alias Bitmovin.Client.Http

  def create(gcs_input, opts \\ []) do
    client = Keyword.get(opts, :client, Http)
    client.post("/encoding/inputs/gcs", gcs_input)
  end

  def get(id, opts \\ []) do
    client = Keyword.get(opts, :client, Http)
    client.get("/encoding/inputs/gcs/#{id}")
  end
end
