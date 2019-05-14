defmodule ElixirTutorialChapterSeven do
  @moduledoc """
  Documentation for ElixirTutorial.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirTutorial.hello()
      :world

  """
  def hello do
    :world
  end

  def creatMapping do
    list = [{:a, 1}, {:b, 2}]
    IO.puts("create list-> #{list[:a]}")
    list
  end

  def readList(list) do
    #    list = creatMapping()
    IO.puts("use list in another method :a -> #{list[:a]}")
  end

  def appendToList(list) do
    list = list ++ [{:c, 3}]
    IO.puts("list equal to original -> #{list == [a: 1, b: 2]}")
    IO.puts("append :c to list, new list size -> #{length(list)}")
    list = list ++ [{:d, 4}]
    IO.puts("append :d to list, new list size -> #{length(list)}")
    IO.puts("value d is -> #{list[:c]}")
  end

  def replaceValue(list) do
    list = list ++ [{:d, 5}]
    IO.puts("replace value of d from 4 to -> #{list[:d]}")

  end

  def map() do
    m = %{:a => 1, 2 => :b}
    IO.puts("create map with [key,value] :a -> #{m[:a]}")
  end

  def anonymousMap do
    %{} = %{:a => 1, 2 => :b}
    IO.puts("create anonymous map with [key,value] :a -> #{:a}")
  end

  def mapPatternMatch do
    %{:a => a} = %{:a => 1, 2 => :b}
    IO.puts("assign value to a use patten match a -> #{a}")
  end

  def getAndPut do
    m = %{:a => 1, :b => 2}
    IO.puts("get :a from map -> #{Map.get(m, :a)}")
    IO.puts("put :c to map, has to use map=Map.put() otherwise won't add to object. this is not like java")
    m = Map.put(m, :c, 3)
    IO.puts("get :c from map -> #{Map.get(m, :c)}")
  end

  def updateExist do
    m = %{:a => 1, :b => 2}
    IO.puts("update exist key otherwise throw exception")
    m = %{m | :b => 3}
    IO.puts("update key with value -> #{Map.get(m, :b)}}")
    IO.puts("access map key value with shortcut-> #{m.b}}")
  end

  def nestedObject do
    users = [
      john: %{
        name: "John",
        age: 27,
        languages: ["Erlang", "Ruby", "Elixir"]
      },
      mary: %{
        name: "Mary",
        age: 29,
        languages: ["Elixir", "F#", "Clojure"]
      }
    ]
    IO.puts(" john age #{users[:john].age}}")
    users = put_in users[:john].age, 31
    IO.puts("update john age to -> #{users[:john].age}}")

    users = update_in users[:mary].languages, fn languages -> List.delete(languages, "Clojure") end
    IO.puts("use update in method delete language by pass a function result -> #{users[:mary].languages}}")
  end

  def run() do
    IO.puts("=============Chapter 7 test case========================")
    list = creatMapping()
    readList(list)
    appendToList(list)
    replaceValue(list)
    map()
    mapPatternMatch()
    getAndPut()
    updateExist()
    nestedObject()
  end
end
