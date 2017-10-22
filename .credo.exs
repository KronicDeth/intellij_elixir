%{
  # You can have as many configs as you like in the `configs:` field.
  configs: [
    %{
      # Run any config using `mix credo -C <name>`. If no config name is given
      # "default" is used.
      name: "default",
      # These are the files included in the analysis:
      files: %{
        # You can give explicit globs or simply directories.
        # In the latter case `**/*.{ex,exs}` will be used.
        included: ["lib/"],
        excluded: [~r"/_build/", ~r"/deps/"]
      },
      strict: true,
      checks: [
        {Credo.Check.Readability.MaxLineLength, priority: :low, max_length: 120},
      ]
    }
  ]
}
