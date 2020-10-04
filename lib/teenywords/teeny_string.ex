defmodule Teenywords.TeenyString do
  def random(len) do
    alphabet = Enum.to_list(?A..?Z)
    Enum.take_random(alphabet, len)
  end
end
