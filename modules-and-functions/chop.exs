defmodule Chop do
  def guess(actual, range = low..high) do
    mid = div(low + high, 2)
    IO.puts "Is it #{mid}"
    _guess(actual, mid, range)
  end

  defp _guess(actual, actual, _), do: IO.puts(actual)

  defp _guess(actual, current, range = low..high) when current < actual, 
    do: guess(actual, current+1..high)

  defp _guess(actual, current, range = low..high) when current > actual, 
    do: guess(actual, low..current-1)
end
