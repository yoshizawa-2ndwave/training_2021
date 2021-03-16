num = 10
data = []
num.times { data << rand(100) }
puts "次を昇順にソートします。#{data}"
start_time = Time.now
sorted_data = []

# select sort
(0...data.size).each do
  current_min_index = data.rindex(data.min)
  current_min = data.delete_at(current_min_index)
  sorted_data.push current_min
end

# puts "ソート結果 #{sorted_data} / 実行時間:#{Time.now - start_time}秒"
puts "ソート結果 #{sorted_data}"