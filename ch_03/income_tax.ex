defmodule IncomeTax do
  def calculate(salary) when salary <= 2000, do: 0
  def calculate(salary) when salary <= 3000, do: 0.05 * salary
  def calculate(salary) when salary <= 6000, do: 0.10 * salary
  def calculate(salary), do: 0.15 * salary
end
    
