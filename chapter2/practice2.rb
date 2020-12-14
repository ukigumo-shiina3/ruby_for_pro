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