defmodule Sort do
  def ascending([]), do: []
  def ascending([a]), do: [a]

  def ascending(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)

    merge(
      ascending(list_a),
      ascending(list_b),
      []
    )
  end

  defp merge([], list_b, acc), do: acc ++ list_b
  defp merge(list_a, [], acc), do: acc ++ list_a

  defp merge([head_a | tail_a], list_b = [head_b | _], acc) when head_a <= head_b do
    merge(tail_a, list_b, acc ++ [head_a])
  end

  defp merge(list_a = [head_a | _], [head_b | tail_b], acc) when head_a > head_b do
    merge(list_a, tail_b, acc ++ [head_b])
  end
end
