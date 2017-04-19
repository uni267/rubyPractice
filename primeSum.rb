require 'prime'
line = ""
#入力
m , n = gets.split(" ")
#素数列生成
items = Prime.each(n.to_i)
items.each do |item|
    if item >= m.to_i then
        line += item.to_s
    end
end
max = 0
#数値計算
for num in 0..9 do
  sum = 0
  #パターン抜き出し
  line.scan(/#{num}.{0,138}#{num}/).each do |item|
    #パターン内総和
    item.split("").each do |itemnum|
      sum += itemnum.to_i
    end
  end
    if max < sum then
        max = sum
    end
end
#結果出力
print(max)
