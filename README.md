IntellijElixir
==============

Elixir helpers for [intellj-elixir](https://github.com/KronicDeth/intellij-elixir),
the [Elixir](http://elixir-lang.org) plugin for [JetBrains](https://www.jetbrains.com)
IDEs.

# Using with intellij-elixir tests

[intellij-elixir](https://github.com/KronicDeth/intellij-elixir)'s
`org.elixir.parsing_definition` tests use `IntellijElixir.Quoter` `GenServer`
to verify that intellij-elixir's parsed and quoted form match's Elixir's native
quoted form from `Code.string_to_quoted`.  IntellijElixir must be running
on node name `intellij_elixir` for intellij-elixir's tests to find it, so start
IntellijElixir app like so

```
iex --sname intellij_elixir -S mix
```
