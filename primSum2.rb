require 'prime'
@result = 0
n=gets.to_i
prims=Prime.each(n).to_a
prims.reverse!
#検索用メソッド
def search(patr,now)  
  patr.each{|i|    
  #枝きり    
  if now%2 != 0 && i==2 then
    return
  end
  t = now-i
  if t == 0 || t==2 || (now%2 == 0 && i==2) then
    @result +=1
  elsif t>=2 then
    #さかのぼり防止,枝きり（重複パターン排除）もっと帰納にできるきがする
    natr=patr.dup
    natr.keep_if{|item| t >= item && i >= item }
    search(natr,t)
  end
}
end
search(prims,n)
p @result
