#to_sメソッド オブジェクトの内容を文字列化するメソッド

#文字列
'1'.to_s #=> "1"

#数値
1.to_s #=> "1"

#nil
nil.to_s  #=> ""

#true
true.to_s #=> "true"

#false
false.to_s #=> "false"

#数値の1を文字列に変換
1.to_s #=> "1"

#変数に整数が入っている場合は、to_fメソッドを呼ぶことで整数から少数に変更できる
n = 1
n.to_f #>= 1.0

#バックスラッシュを使って10.to_s 16を改行して書き、文が続くことを明示的に示す
10.to_s \
16 #=> "a-"

#rubyの真偽値 
#falseまたはnilであれば偽、それ以外は真

data = find_data
    if data != nil
        'データがあります'
    else
        'データがありません'
    end
        
#シンプルにかくと
data = find_data
    if data 
        'データがあります'
    else
        'データがありません'
    end   

#if文
country = "italy"
if country == "japan"
    puts "こんにちは"
elsif country == "us"
    puts "Hello"
elsif country = "italy"
    puts "ciao"
begin
    pust "???"
end
#>= ciao

#毎月１日だけポイントを５倍にしたい場合
point = 7
day = 1
#１日であればポイント５倍
if day == 1
    point *= 5
end
point #>= 35
    
else
    
end
end