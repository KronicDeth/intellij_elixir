defmodule IntellijElixir.Quoter do
  @moduledoc """
  `Code.string_to_quoted/1` server
  """
  use GenServer

  # Types

  @type t :: []
  @type line :: non_neg_integer
  @type error :: any
  @type token :: binary

  @spec start_link(t) :: {:ok, pid}
  @spec start_link(t, name: atom) :: {:ok, pid}
  def start_link(args, opts \\ []) do
    GenServer.start_link(__MODULE__, args, opts)
  end

  @spec handle_call(String.t(), GenServer.from(), t) ::
          {:reply, {:ok, Macro.t()} | {:error, {line, error, token}}, t}
  def handle_call(code, _from, state) do
    {:reply, Code.string_to_quoted(code), state}
  end
end
