defmodule Bitmovin.Encoding.Configurations.Audio.AAC do
  alias Bitmovin.Client.Http

  def create(aac_audio_configuration, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/configurations/audio/aac", aac_audio_configuration) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
