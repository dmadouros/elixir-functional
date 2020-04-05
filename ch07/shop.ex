defmodule Shop do
  def checkout() do
    quantity = ask_number("Quantity?")
    price = ask_number("Price?")
    calculate(quantity, price)
  end

  defp calculate(:error, _), do: IO.puts("Quantity is not a number")
  defp calculate(_, :error), do: IO.puts("Price is not a number")
  defp calculate({quantity, _}, {price, _}), do: quantity * price

  defp ask_number(message) do
    message <> "\n"
      |> IO.gets
      |> Integer.parse
  end
end