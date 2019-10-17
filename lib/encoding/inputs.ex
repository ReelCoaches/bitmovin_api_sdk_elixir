defmodule Bitmovin.Encoding.Inputs do
  alias Bitmovin.Client.Http

  @defaults %{client: Http}

  def list(opts \\ []) do
    %{client: client} = Enum.into(opts, @defaults)
    client.get("/encoding/inputs")
  end
end
