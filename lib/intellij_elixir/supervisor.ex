defmodule IntellijElixir.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, :ok)
  end

  @quoter_module IntellijElixir.Quoter

  def init(:ok) do
    children = [
      worker(@quoter_module, [[], [name: @quoter_module]])
    ]
    
    supervise(children, strategy: :one_for_one)
  end
end
