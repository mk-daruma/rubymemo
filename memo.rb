require "csv"

puts "1（新規でメモを作成）2（既存のメモを編集する）"

memo_type = gets.chomp


if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください"
  memo_type = gets.chomp
  if memo_type == "test"
    CSV.open('test.csv',"w")
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dを押します"
    STDIN.read
  else
    puts "#{memo_type}という名前のファイルが存在しません"
  end
  
elsif memo_type == "2"
  puts "拡張子を除いたファイルを入力してください"
  memo_type = gets.chomp
  if memo_type == "test"
    CSV.open('test.csv',"a")
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dを押します"
    STDIN.read
  else
    puts "#{memo_type}という名前のファイルが存在しません"
  end
  
else
  puts "#{memo_type}ではなく、1か2を選択してください"
end

# わからないこと
# ・終了を押さない限り終わらせる方法(ifに戻る)
# ・ファイル名を自由に選べるコード
# ・csvオープンは反応しているから、ちゃんと保存ができている証拠⇨保存をするコードを書けばOK