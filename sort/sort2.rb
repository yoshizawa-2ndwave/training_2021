def pivot(array, a, b)
  k = a + 1
  while k <= b && array[a] == array[k] do
    k+=1
  end
  return -1 if k > b
  return a if array[a] >= array[k]
  k
end

def partition(array, a, b, x)
  l = a
  r = b
  while l <= r do
    while l <= b && array[l] < x do
      l+=1
    end

    while r>=a && array[r] >= x do
      r-=1
    end
    break if l > r
    t = array[l]
    array[l] = array[r]
    array[r] = t
    l+=1
    r-=1
  end
  l
end

def quickSort(array, a, b)
  return if a == b

  point = pivot(array, a, b)
  if point != -1
    k = partition(array, a, b, array[point])
    quickSort(array, a, k-1)
    quickSort(array, k, b)
  end
  array
end
num = 10
data = []
num.times { data << rand(100) }
puts "次を昇順にソートします。#{data}"
start_time =  Time.now
sorted_data = quickSort(data, 0, data.size-1)
# puts "ソート結果 #{sorted_data} / 実行時間: #{Time.now - start_time}"
puts "ソート結果 #{sorted_data}"
