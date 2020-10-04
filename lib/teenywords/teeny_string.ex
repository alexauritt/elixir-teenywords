defmodule Teenywords.TeenyString do
  def random(len) do
    alphabet = Enum.to_list(?A..?Z)
    to_string Enum.take_random(alphabet, len)
  end

  def is_word(teeny_string) do
    Enum.member?(Map.keys(Teenywords.Constants.two_letter_words()), String.to_atom(teeny_string))
  end
end
