defmodule Bitmovin.MixProject do
  use Mix.Project

  def project do
    [
      app: :bitmovin,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      source_url: "https://github.com/ReelCoaches/bitmovin_api_sdk_elixir"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tesla, "~> 1.3"},
      {:mint, "~> 0.4.0"},
      {:castore, "~> 0.1.3"},
      {:jason, "~> 1.1"},
      {:exconstructor, "~> 1.1"},
      {:proper_case, "~> 1.3"},
      {:atomic_map, "~> 0.9.3"},
      {:ex_doc, "~> 0.21.2", only: :dev, runtime: false}
    ]
  end

  defp description do
    "Elixir SDK for the Bitmovin REST API"
  end

  defp package do
    [
      name: "bitmovin_api_sdk_elixir",
      licenses: ["MIT"]
    ]
  end
end
