#デフォルト値付きの引数
def greeting(country = 'japan')
    if country == 'japan'
        'こんにちは'
    else
        'hello'
    end
end

greeting #=> "こんにちは"
greeting('us') #=> "hello"


# ?で終わるメソッド
#空配列であればtrue, そうでなければfalse
''.empty? #=> true
'abc'.empty? #=> false

#引数の文字列が含まれていればtrue, そうでなければfalse
'watch'.include?('at')  #=> true
'watch'.include?('in') #=> false

#オブジェクトがnilであればtrue, そうでなければfalse
nil.nil? #=> true
'abc'.nil? #=> false
1.nil? #=> false

#3の倍数ならtrue, それ以外はfalse
def multiple_of_three?(n)
    n % 3 == 0
end
multiple_of_three?(4) #=> false
multiple_of_three?(5) #=> false
multiple_of_three?(5) #=> true

#!で終わるメソッド



