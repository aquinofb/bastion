defmodule Bastion.Mixfile do
  use Mix.Project

  def project do
    [app: :bastion,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :cowboy, :plug, :httpoison],
     mod: {Bastion, []}]
  end

  defp deps do
    [{:cowboy, "~> 1.0"},
     {:plug, "~> 1.0"},
     {:poison, "~> 2.1"},
     {:httpoison, "~> 0.8.3"}]
  end
end
