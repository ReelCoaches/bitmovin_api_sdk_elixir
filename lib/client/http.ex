defmodule Bitmovin.Client.Http do
  @behaviour Bitmovin.Client

  def get(url) do
    case Tesla.get(client(), url) do
      {:ok, %{body: body}} ->
        {:ok, AtomicMap.convert(body, %{safe: false})}
    end
  end

  def post(url, body) do
    body = ProperCase.to_camel_case(body)

    case Tesla.post(client(), url, body) do
      {:ok, %{body: body}} ->
        {:ok, AtomicMap.convert(body, %{safe: false})}
    end
  end

  def client() do
    middleware = [
      {Tesla.Middleware.BaseUrl, "https://api.bitmovin.com/v1"},
      Tesla.Middleware.JSON,
      {Tesla.Middleware.Headers, [{"X-Api-Key", Application.fetch_env!(:bitmovin, :api_key)}]}
    ]

    Tesla.client(middleware)
  end
end
