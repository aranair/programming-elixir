defmodule MyList do
  def head_span(from, to) when from > to, do: []
  def head_span(from, to), do: [ from | head_span(from + 1, to) ]

  def tail_span(from, to), do: _tail_span(from, to, [])
  defp _tail_span(from, to, value) when from > to, do: value |> :lists.reverse
  defp _tail_span(from, to, value), do: _tail_span(from + 1, to, [ from | value ])
end

IO.inspect MyList.tail_span(5, 10)
