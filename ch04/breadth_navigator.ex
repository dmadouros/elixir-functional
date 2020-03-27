defmodule BreadthNavigator do
  @max_breadth 2

  def navigate(dir) do
    expanded_dir = Path.expand(dir)
    go_through([expanded_dir], 0)
  end

  defp go_through([], _current_breadth), do: nil
  defp go_through(_, current_breadth) when current_breadth >= @max_breadth, do: nil

  defp go_through([content | rest], current_breadth) do
    print_and_navigate(content, dir?(content))
    go_through(rest, current_breadth + 1)
  end

  defp print_and_navigate(_dir, false), do: nil

  defp print_and_navigate(dir, true) do
    IO.puts(dir)
    children_dirs = Enum.sort(File.ls!(dir))
    go_through(expand_dirs(children_dirs, dir), 0)
  end

  defp expand_dirs([], _relative_to), do: []

  defp expand_dirs([dir | dirs], relative_to) do
    expanded_dir = Path.expand(dir, relative_to)
    [expanded_dir | expand_dirs(dirs, relative_to)]
  end

  defp dir?(dir) do
    {:ok, %{type: type}} = File.lstat(dir)
    type == :directory
  end
end
