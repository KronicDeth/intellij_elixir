defmodule IntellijElixir.Mixfile do
  use Mix.Project

  def project do
    [
      app: :intellij_elixir,
      deps: deps(),
      elixir: "~> 1.0",
      preferred_cli_env: [
        "credo": :test,
        "dialyzer": :test
      ],
      version: "1.0.0"
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger],
     mod: {IntellijElixir, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:credo, "~> 0.6.1", only: :test},
      {:dialyxir, "~> 0.5", only: :test, runtime: false},
      {:distillery, "~> 1.1"}
    ]
  end
end
