defmodule IntellijElixir.Quoter do
  use GenServer

  def start_link(args, opts \\ []) do
    GenServer.start_link(__MODULE__, args, opts)
  end

  def handle_info(%{quote: code, for: pid}, state) do
    {status, quoted} = Code.string_to_quoted(code)
    send pid, {status, %{code: code, quoted: quoted}}

    {:noreply, state}
  end
end
