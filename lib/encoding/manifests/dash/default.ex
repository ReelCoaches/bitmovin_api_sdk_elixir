defmodule Bitmovin.Encoding.Manifests.Dash.Default do
  def create(manifest, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/manifests/dash/default", manifest) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
