puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）
TEXT

while true do 
  print "プランの番号を選択  >  "
  selected_plan_num = gets.to_i
  break if (1..3).include?(selected_plan_num)
  puts "1~3の番号を入力してください"
end 

case selected_plan_num
when 1 
  place = "沖縄"
  price = 10000
when 2
  place = "北海道"
  price = 20000
when 3
  place = "九州"
  price = 15000
end

puts "#{place}旅行ですね"

while true do 
  print "何名で予約されますか？\n人数を入力  >  "
  people_num = gets.to_i
  break if people_num > 0
  puts "1以上の数値を入力してください"
end

total_price = price * people_num

if people_num >= 5
  total_price = (total_price * 0.9).floor
  puts "5人以上なので10%割引になります"
end

puts "合計金額は#{total_price}円になります"


