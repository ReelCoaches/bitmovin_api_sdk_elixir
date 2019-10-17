defmodule Bitmovin.Encoding.Manifests.Dash.Periods.AdaptationSets.Representations.CMAF do
  alias Bitmovin.Client.Http

  def create(manifest_id, period_id, adaptation_set_id, cmaf_representation, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post(
           "/encoding/manifests/dash/#{manifest_id}/periods/#{period_id}/adaptationsets/#{
             adaptation_set_id
           }/representations/cmaf",
           cmaf_representation
         ) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
