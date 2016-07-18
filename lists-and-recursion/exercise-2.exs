defmodule MyList do
  def max([]), do: -1
  def max([ head | tail ]), do: Kernel.max(head, max(tail))
end

IO.puts MyList.max [1,2,3,4,10,20,9]
