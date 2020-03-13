defmodule MyList do
  def max([]), do: nil
  def max([a]), do: a
  def max([head | tail]) do
    find_max(tail, head)
  end

  defp find_max([], current), do: current

  defp find_max([head | tail], current) when head > current do
    find_max(tail, head)
  end
  defp find_max([head | tail], current) when head <= current do
    find_max(tail, current)
  end

  def min([]), do: nil
  def min([a]), do: a
  def min([head | tail]) do
    find_min(tail, head)
  end

  def find_min([], current), do: current
  def find_min([head | tail], current) when head >= current do
    find_min(tail, current)
  end
  def find_min([head | tail], current) when head < current do
    find_min(tail, head)
  end
end
