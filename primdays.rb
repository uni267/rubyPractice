require 'date'
require 'prime'
items = []
#入力
n=gets.to_i
n = n+1
#日付素数列生成
daypoint = Date.new(1970,1,1)
lastday = Date.new(2020,1,1)
while daypoint < lastday do
  today = daypoint.strftime('%Y%m%d')
  if (Prime.prime?(today.to_i)) then
    items.push(daypoint)
  end
  daypoint = daypoint +1
end

i=0
max=0
while i+n < items.length do
  days = items[i+n] - items[i]
  if (days > max) then
    max=days
  end
  i = i+1
end
p max.to_i - 1
