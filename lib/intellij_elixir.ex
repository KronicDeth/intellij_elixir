defmodule IntellijElixir do
  use Application

  def start(_type, _args) do
    IntellijElixir.Supervisor.start_link
  end
end
