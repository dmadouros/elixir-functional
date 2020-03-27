defmodule MyString do
  def capitalize_words(title) do
    words = String.split(title)
    capitalized_words = Enum.map(words, &String.capitalize/1)
    Enum.join(capitalized_words, " ")

    Enum.join(
      Enum.map(
        String.split(title),
        &String.capitalize/1
      ), " "
    )

    title
    |> String.split()
    |> Enum.map(&String.capitalize/1)
    |> Enum.join(" ")

    title
    |> String.split()
    |> capitalize_all
    |> join_with_whitespace
  end

  defp capitalize_all(words) do
    Enum.map(words, &String.capitalize/1)
  end

  defp join_with_whitespace(words) do
    Enum.join(words, " ")
  end
end