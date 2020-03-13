defmodule Sum do
  def up_to(n), do: sum_up_to(n, 0)

  defp sum_up_to(0, sum), do: sum
  defp sum_up_to(n, sum), do: sum_up_to(n - 1, n + sum)
end
