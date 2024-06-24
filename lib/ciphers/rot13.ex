defmodule Algorithms.Ciphers.Rot13 do
  @moduledoc """
    subtition cipher for alphabets by rotating about the alphabet list  13 places (https://en.wikipedia.org/wiki/ROT13)

    ## Parameters

    - text: Input number to insert the a new bit.

    ## Examples

        iex> Rot13.encode("hello")
        14
  """

  def encode(string)

  def encode(<<char>> <> tail) do
    <<rotate(char)>> <> encode(tail)
  end

  def encode(_), do: ""

  def rotate(char) when char >= ?a and char <= ?z do
    ?a + rem(char - ?a + 13, 26)
  end

  def rotate(char) when char >= ?A and char <= ?Z do
    ?A + rem(char - ?A + 13, 26)
  end

  def rotate(char), do: char

  def decode(string) do
    encode(string)
  end
end
