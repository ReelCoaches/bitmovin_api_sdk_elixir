defmodule Bitmovin.Encoding.Configurations.Video.H264 do
  alias Bitmovin.Client.Http

  def create(h264_video_configuration, opts \\ []) do
    client = Keyword.get(opts, :client, Http)

    case client.post("/encoding/configurations/video/h264", h264_video_configuration) do
      {:ok, %{data: %{result: result}}} -> {:ok, result}
    end
  end
end
