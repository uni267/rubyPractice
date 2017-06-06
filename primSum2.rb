require 'prime'
result = 0
n=gets.to_i
prims=Prime.each(n).to_a
prims.reverse!
@resuthash = {}
#検索用メソッド
def search(patr,now)
  sum = 0
  patr.each{|i|
    if now%2 != 0 && i==2 then
    elsif
      t = now-i
      if t == 0 || t==2 || (now%2 == 0 && i==2) || t==3 then
        sum += 1
      elsif t>=2 then
        #さかのぼり防止（重複パターン排除）
        natr=patr.dup
        natr.keep_if{|item| t >= item && i >= item }
        key = "#{t}x#{natr}"
        if @resuthash.has_key?(key) then
          res = @resuthash[key]
          sum += res
        else
          res = search(natr,t)
          @resuthash[key] = res
          sum += res
        end
      end
    end
   }
 return sum
end
result = search(prims,n)
p result
      
