require Iter

defmodule StringSimilarity do
  # Calcualte the 
  #  https://en.wikipedia.org/wiki/Cosine_similarity Cosine
  #  of two strings.

  def cosine(string_1, string_2) when string_1 == string_2 do 
    1.0
  end

  def cosine(string_1, string_2) when string_1 == "" or string_2 == "" do 
    0.0
  end

  def cosine(string_1, string_2) do
    vector_1 = Iter.traverse(String.split(string_1), &Iter.to_vector/2)
    vector_2 = Iter.traverse(String.split(string_2), &Iter.to_vector/2)

    dot_result = get_dot(vector_1, vector_2)

  end
end
