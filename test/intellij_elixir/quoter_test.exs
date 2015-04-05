defmodule IntellijElixir.QuoterTest do
  use ExUnit.Case

  @code "Alias.function positional, key: value"
  @quoted Code.string_to_quoted(@code)

  test "responds to GenServer.call" do
    assert @quoted == GenServer.call IntellijElixir.Quoter, @code
  end

  test "responds to raw send of GenServer.call" do
    ref = make_ref
    send IntellijElixir.Quoter, {:'$gen_call', {self, ref}, @code}

    assert_receive {ref, @quoted}
  end
end