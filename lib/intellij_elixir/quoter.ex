defmodule IntellijElixir.Quoter do
  use GenServer

  def start_link(args, opts \\ []) do
    GenServer.start_link(__MODULE__, args, opts)
  end

  def handle_call(code, _from, state) do
    {:reply, Code.string_to_quoted(code), state}
  end
end
