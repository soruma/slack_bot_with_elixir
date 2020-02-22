defmodule SlackBotWithElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :slack_bot_with_elixir,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {SlackBotWithElixir, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 0.3", only: [:dev, :test]},
      {:quantum, "~> 2.3"},
      {:timex, "~> 3.6"},
      {:slack, "~> 0.19"}
    ]
  end
end
