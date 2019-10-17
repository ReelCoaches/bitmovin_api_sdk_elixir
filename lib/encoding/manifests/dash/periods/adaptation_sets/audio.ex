defmodule Bitmovin.Encoding.Manifests.Dash.Periods.AdaptationSets.Audio do
  alias Bitmovin.Client.Http

  def create(manifest_id, period_id, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post(
           "/encoding/manifests/dash/#{manifest_id}/periods/#{period_id}/adaptationsets/audio",
           %{}
         ) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
