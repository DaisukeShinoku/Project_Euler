# 3桁の2数の積で，回文になる最大のものを求めよ．

def palindrome?(result)
  result.to_s.reverse == result.to_s
end

palindromic_numbers =[]
(100..999).each do |n|
  (n..999).each do |i|
    result = n * i
    palindromic_numbers << result if palindrome?(result)
  end
end

puts palindromic_numbers.max