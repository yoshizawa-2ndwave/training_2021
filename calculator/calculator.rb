def operator?(str)
  %w[+ - * /].include?(str)
end

def is_number?(str)
  /^[-+]?[0-9]+$/.match?(str)
end

puts "2つの数値と演算子から結果を返します。"
puts "使える演算子は + - * / のみです。"
puts "[数値 演算子 数値]の順で入力してください。"

while true
  puts "1つ目の数値 [* ? ?]"
  first_num = gets.chomp
  if is_number?(first_num)
    break
  else
    puts "数値を入力してください"
  end
end

while true
  puts "演算子 [#{first_num} * ?]"
  operator = gets.chomp
  puts operator?(operator)
  if operator?(operator)
    break
  else
    puts "+ - * / で演算子入力してください"
  end
end

while true
  puts "2つ目の数値 [#{first_num} #{operator} *]"
  second_num = gets.chomp
  if is_number?(second_num)
    break
  else
    puts "数値を入力してください"
  end
end

if operator == '/'
  second_num = second_num.to_f
end
result = eval("#{first_num}#{operator}#{second_num}")
puts "#{first_num} #{operator} #{second_num} = #{result}"
