# ループ回数
number = gets.chomp.to_i

# ・赤のカブトムシは、赤色を含む光 (すなわち、赤、黄、マゼンタ、白のいずれか) で照らされた時、ライトのある方向に 1 マス分移動する。
# ・緑のカブトムシは、緑色を含む光 (すなわち、緑、黄、シアン、白のいずれか) で照らされた時、ライトのある方向に 1 マス分移動する。
# ・青のカブトムシは、青色を含む光 (すなわち、青、マゼンタ、シアン、白のいずれか) で照らされた時、ライトのある方向に 1 マス分移動する。
kabuto_r, kabuto_g, kabuto_b = gets.chomp.split(" ").map(&:to_i)
# t_i は "L" または "R"
# c_i は "R", "G", "B", "Y", "M", "C", "W"
#        赤、 緑、  青、 黄、マゼンタ、シアン、白

# set default results
result = "no"

[*0...number].each do |_step_no|
  t_i, c_i = gets.chomp.split(" ")
  move =
    case t_i
    when "R"
      1
    when "L"
      -1
    end

  case c_i
  when "R" # 赤
    kabuto_r += move
  when "G" # 緑
    kabuto_g += move
  when "B" # 青
    kabuto_b += move
  when "Y" # 黄
    kabuto_r += move
    kabuto_g += move
  when "M" # マゼンタ
    kabuto_r += move
    kabuto_b += move
  when "C" # シアン
    kabuto_g += move
    kabuto_b += move
  when "W" # ホワイト
    kabuto_r += move
    kabuto_g += move
    kabuto_b += move
  end

  if (kabuto_r == kabuto_g) && (kabuto_g == kabuto_b) && (kabuto_b == kabuto_g)
    result = kabuto_r
    break
  end
end

puts result
