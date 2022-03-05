require "csv"

def choice(mode)
  puts "拡張子を除いたファイルを入力してください"
  title = gets.chomp
  CSV.open(title + '.csv',"#{mode}") do |csv|
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dを押します"
  memo = gets.chomp
  csv << [memo]
  STDIN.read
  end
end

# 1を選択した時の関数
# def choice_one()
#   puts "拡張子を除いたファイルを入力してください"
#   title = gets.chomp
#   CSV.open(title + '.csv',"w") do |csv|
#   puts "メモしたい内容を記入してください"
#   puts "完了したらCtrl + Dを押します"
#   memo = gets.chomp
#   csv << [memo]
#   STDIN.read
#   end
# end
# # ２を選択した時の関数
# def choice_two()
#   puts "拡張子を除いたファイルを入力してください"
#   title = gets.chomp
#   CSV.open(title + '.csv',"a") do |csv|
#   puts "メモしたい内容を記入してください"
#   puts "完了したらCtrl + Dを押します"
#   memo = gets.chomp
#   csv << [memo]
#   STDIN.read
#   end
# end

# 実際に動く関数
puts "1（新規でメモを作成）2（既存のメモを編集する）"
memo_type = gets.chomp

if memo_type == "1"
  choice("w")
elsif memo_type == "2"
  choice("a")
else
  puts "#{memo_type}ではなく、1か2を選択してください"
end