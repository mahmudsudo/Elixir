defmodule Algorithms.Ciphers.Rot13Test do
  alias Algorithms.Ciphers.Rot13

  use ExUnit.Case

  test "encode and decode" do
    assert Rot13.encode("Hello, World!") == "Uryyb, Jbeyq!"
    assert Rot13.decode("Uryyb, Jbeyq!") == "Hello, World!"
  end

  test "encode and decode with uppercase letters" do
    assert Rot13.encode("HELLO, WORLD!") == "URYYB, JBEYQ!"
    assert Rot13.decode("URYYB, JBEYQ!") == "HELLO, WORLD!"
  end

  test "encode and decode with special characters" do
    assert Rot13.encode("Hello, World! @#$%^&*()") == "Uryyb, Jbeyq! @#$%^&*()"
    assert Rot13.decode("Uryyb, Jbeyq! @#$%^&*()") == "Hello, World! @#$%^&*()"
  end

  describe "Rot13.encode/1" do
    test "encodes a string" do
      assert Rot13.encode("Hello, World!") == "Uryyb, Jbeyq!"
    end

    test "encodes a string with uppercase letters" do
      assert Rot13.encode("HELLO, WORLD!") == "URYYB, JBEYQ!"
    end

    test "encodes a string with special characters" do
      assert Rot13.encode("Hello, World! @#$%^&*()") == "Uryyb, Jbeyq! @#$%^&*()"
    end
  end
end
