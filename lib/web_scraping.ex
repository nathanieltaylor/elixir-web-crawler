defmodule WebScraping do
  @moduledoc """
  Documentation for `WebScraping`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> WebScraping.hello()
      :world

  """
  def hello do
    Finch.start_link(name: MyFinch)
    Finch.build(:get, "https://hex.pm") |> Finch.request(MyFinch) |> IO.inspect()
  end
end
