IntellijElixir
==============

[![Code Climate](https://codeclimate.com/github/KronicDeth/intellij_elixir/badges/gpa.svg)](https://codeclimate.com/github/KronicDeth/intellij_elixir)

Elixir helpers for [intellj-elixir](https://github.com/KronicDeth/intellij-elixir),
the [Elixir](http://elixir-lang.org) plugin for [JetBrains](https://www.jetbrains.com)
IDEs.

# Building Release

To build the release for production, set both the `MIX_ENV` and
distillery environment to `prod`

`MIX_ENV=prod mix release --env=prod`

# Using with intellij-elixir tests

[intellij-elixir](https://github.com/KronicDeth/intellij-elixir)'s
`org.elixir.parsing_definition` tests use `IntellijElixir.Quoter` `GenServer`
to verify that intellij-elixir's parsed and quoted form match's Elixir's native
quoted form from `Code.string_to_quoted`.  IntellijElixir must be running
on node name `intellij_elixir` for intellij-elixir's tests to find it, so start
IntellijElixir release like so

```
_build/prod/rel/intellij_elixir/bin/intellij_elixir start
```
