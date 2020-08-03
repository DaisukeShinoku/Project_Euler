# フィボナッチ数列の項は前の2つの項の和である. 最初の2項を 1, 2 とすれば, 最初の10項は以下の通りである.
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 数列の項の値が400万以下の, 偶数値の項の総和を求めよ.

fibonacci_sequence = [1, 2]

loop do
  n = fibonacci_sequence[-2, 2].inject(:+)
  break if n > 4000000
  fibonacci_sequence << n
end

puts fibonacci_sequence.select{ |n| n % 2 == 0 }.inject(:+)

