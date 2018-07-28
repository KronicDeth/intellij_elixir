# Changelog

## v2.0.0

### Enhancements
* [#6](https://github.com/KronicDeth/intellij_elixir/pull/6) - Update dependencies for Elixir 1.7.1 - [@KronicDeth](https://github.com/KronicDeth)

### Incompatible Changes
* [#6](https://github.com/KronicDeth/intellij_elixir/pull/6) - Requires Elixir >= 1.7 - [@KronicDeth](https://github.com/KronicDeth)

## v1.0.0

### Enhancements
* [#5](https://github.com/KronicDeth/intellij_elixir/pull/5) - [@KronicDeth](https://github.com/KronicDeth)
  * Switch from `exrm` to `distillery` adds support for Elixir 1.5.
  * Add `credo`
    * Run `credo` checks on CodeClimate.
  * Add `dialyxir`
    * Run `dialyxir` on Travis CI.
  * Build matrix for Elixir 1.3 - 1.5.

### Incompatible Changes
* [#5](https://github.com/KronicDeth/intellij_elixir/pull/5) - Switch from `exrm` to `distillery` drops support for Elixir < 1.3. - [@KronicDeth](https://github.com/KronicDeth)

## v0.1.1

### Enhancements
  * [#4](https://github.com/KronicDeth/intellij_elixir/pull/4) - Increase restart limit to 1000 restart per 4 seconds from the default 3 restarts per 5 seconds - [@KronicDeth](https://github.com/KronicDeth)

## v0.1.0

### Incompatible Changes
  * [#2](https://github.com/KronicDeth/intellij_elixir/pull/2) - `IntellijElixir.Quoter` implements `handle_call` instead of `handle_info` - [@KronicDeth](https://github.com/KronicDeth)
