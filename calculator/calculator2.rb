puts "2つの数値と演算子から結果を返します。"
puts "数式を入力してください。 e.g.) 1 + 2 - 3 / 4)"

raw = gets.chomp
result = eval(raw)

puts "#{raw} = #{result}"
