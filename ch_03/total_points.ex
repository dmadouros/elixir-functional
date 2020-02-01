defmodule TotalPoints do
  def exec(%{str: str, int: int, dex: dex}) do
    (str * 2) + (int * 3) + (dex * 3)
  end
end
