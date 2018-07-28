defmodule IntellijElixir do
  @moduledoc """
  Exposed `GenServer`, `IntellijElixir.Quoter` that can quote code using `Code.string_to_quoted/1`
  """

  use Application

  @spec start(Application.start_type(), []) :: {:ok, pid}
  def start(_type, _args) do
    IntellijElixir.Supervisor.start_link()
  end
end
