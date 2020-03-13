defmodule Math do
  def sum(items), do: sum_list(items, 0)
  defp sum_list([], sum), do: sum
  defp sum_list([head | tail], sum), do: sum_list(tail, head + sum)
end
