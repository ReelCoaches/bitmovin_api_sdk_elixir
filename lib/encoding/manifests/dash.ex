defmodule Bitmovin.Encoding.Manifests.Dash do
  alias Bitmovin.Client.Http

  def create(manifest, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/manifests/dash", manifest) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end

  def start(manifest_id, opts \\ []) do
    client = Keyword.get(opts, :client, Http)
    client.post("/encoding/manifests/dash/#{manifest_id}/start", %{})
  end
end
