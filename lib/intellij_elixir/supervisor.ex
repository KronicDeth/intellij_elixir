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

    # Tuned based on intellij-elixir processing 1019 tests in 4 seconds, which is 254.75 tests per second.  Although
    # most tests are not expected to cause exits, just tuning to the test rate is less coupled than tuning to the
    # expected exit rate as expected exit is a new assertion for testing.
    supervise(children, max_restarts: 1000, max_seconds: 4, strategy: :one_for_one)
  end
end
