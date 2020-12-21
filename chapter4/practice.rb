#配列の要素を取得
a=[1,2,3]
#1つ目の要素を取得
a[0] #=> 1

#size, lengthメソッドで配列の長さ(要素の個数を取得)
a=[1,2,3]
a.size    #=> 3
a.length  #=> 3

#sumメソッド
#配列を作成
arr = [1, 2, 3, 4 ,5]
# 配列の合計
puts arr.sum #=> 15
# 引数に初期数値を指定すると、初期数値をもとに合計を算出
puts arr.sum(10) #=> 25
# 配列の合計を配列のサイズで割ることで「平均」を計算
puts (arr.sum / arr.size) # (15 / 5) => 3
# 引数の指定によっては数値以外を「合計（連結）」
puts ["h", "e", "l", "l", "o"].sum("") #=> hello
# しかし、実行速度は flatten や join のほうが高速
puts ["h", "e", "l", "l", "o"].join #=> hello
# ブロックを渡すこともできる
# ブロック内の式を計算後に加算
puts arr.sum {|i| i / i } #=> 5
# ハッシュも sum メソッドが使えるが、ブロック内で加算する値を一つに絞る必要がある
hs = {1 => 10, 2 => 20}
puts hs.sum {|k,v| k } #=> 3
puts hs.sum {|k,v| v } #=> 30
puts hs.sum {|k,v| k + v } #=> 33
# 範囲でも sum メソッドが使える
puts (1..5).sum #=> 15

#do ... end の代わりに{}でブロックを作る
numbers = [1,2,3,4]
sum = 0
numbers.each { |n| sum += n} #=>10

#map/collectメソッド
numbers = [1,2,3,4,5]
new_numbers = numbers.map { |n| n * 10}
new_numbers #=> [10,20,30,40,50]

#範囲オブジェクト(range)
#..を使うと5が範囲に含まれる
range = 1..5
range.include?(1) #=> true
range.include?(5) #=> true
range.include?(6) #=> false

#...を使うと5が範囲に含まれない(1以上5未満)
range = 1...5
range.include?(1) #=> true
range.include?(5) #=> false

#includeメソッド
(1..5).include(1)? #=> true   1..5は()で囲む

#不等号を使う場合
def liquid?(temprature)
    #0以上100度未満であれば液体、と判断したい
    0 <= temprature && temprature < 100
end

#case文
def charge(age)
    case age
    when 0..5
        0
    when 6..12
        300
    when 13..18
        600
    else
        1000  
    end
end

charge(3)  #=> 0
charge(12) #=> 300
charge(15) #=> 600
charge(25) #=> 1000