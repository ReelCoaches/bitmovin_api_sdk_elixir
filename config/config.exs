import Config

config :bitmovin, Bitmovin.Client, Bitmovin.Client.Http

config :tesla, adapter: Tesla.Adapter.Mint

import_config "#{Mix.env()}.exs"
