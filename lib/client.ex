defmodule Bitmovin.Client do
  @type url() :: binary()
  @type body() :: any()
  @type response() :: Tesla.Env.t()
  @type error() :: any()

  @callback get(url()) :: {:ok, response()} | {:error, error()}
  @callback post(url(), body()) :: {:ok, response()} | {:error, error()}
end
