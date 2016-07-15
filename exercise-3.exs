fizzbuzz = fn 
   0, 0, _  -> "FizzBuzz."
   0, _, _  -> "Fizz."
   _, 0, _  -> "Buzz."
   _, _, c  -> c
end

fizzer = fn n ->
  IO.puts fizzbuzz.(rem(n, 3), rem(n, 5), n)
end

fizzer.(10)
fizzer.(11)
fizzer.(12)
