puts "**じゃんけんゲーム**"

while true
  puts "あなたが出す手を1,2,3で入力してください。"

  data = { 1 => 'グー', 2 => 'パー', 3 => 'チョキ' }
  puts data.map {|v, l| "#{v} => #{l}" }
  begin
    user_choise = gets.to_i
  rescue Interrupt
    p 'exit.'
    break
  end
  vs_choise = data.keys.sample

  if data.keys.include?(user_choise)
    puts "あなたの手：#{data[user_choise]}"
    puts "相手の手：#{data[vs_choise]}"

    if user_choise == vs_choise
      puts "結果は あいこ です。"
    elsif user_choise == 1 && vs_choise == 3 || user_choise == 2 && vs_choise == 1 || user_choise == 3 && vs_choise == 2
      puts "結果は あなたの勝ち です。"
    else
      puts "結果は あなたの負け です。"
    end

    break
  else
    puts "1 2 3 から入力してください。"
  end
end
