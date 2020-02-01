defmodule IncomeTax do
  def calculate(salary) when salary <= 2000, do: 0
  def calculate(salary) when salary <= 3000, do: 0.05 * salary
  def calculate(salary) when salary <= 6000, do: 0.10 * salary
  def calculate(salary), do: 0.15 * salary
end

input = IO.gets("Your salary:\n")

case Float.parse(input) do
  :error -> IO.puts "Invalid salary: #{input}"
  {salary, _} ->
    tax = IncomeTax.calculate(salary)
    IO.puts "Netwage: #{salary - tax} - Income tax: #{tax}"
end

