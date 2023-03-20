defmodule Iter do
  def traverse(strings, fun, acc \\ Map.new()) when is_list(strings) and is_function(fun) do
    Enum.reduce(strings, acc, fn string, acc ->
      string
      |> String.graphemes()
      |> Enum.reduce(acc, fun)
    end)
  end

  def to_vector(char, acc) do 
    Map.update(acc, char, 1, fn count -> count + 1 end)
  end
end
