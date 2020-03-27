defmodule MyList do
  def test_data do
    [
      %{title: "Edwin's Longsword", price: 150},
      %{title: "Healing Potion", price: 60},
      %{title: "Edwin's Rope", price: 30},
      %{title: "Dragon's Spear", price: 100}
    ]
  end

  def each([], _function), do: nil

  def each([head | tail], function) do
    function.(head)
    each(tail, function)
  end

  def map([], _function), do: []

  def map([head | tail], function) do
    [function.(head) | map(tail, function)]
  end

  def reduce([], acc, _function), do: acc

  def reduce([head | tail], acc, function) do
    reduce(tail, function.(head, acc), function)
  end

  def filter([], _function), do: []

  def filter([head | tail], function) do
    if function.(head) do
      [head | filter(tail, function)]
    else
      filter(tail, function)
    end
  end
end
