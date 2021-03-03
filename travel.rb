puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）
TEXT

while true do 
  print "プランの番号を選択  >  "
  plan_number = gets.to_i
  case plan_number
  when 1 
    puts "沖縄旅行ですね"
    place = "Okinawa"
    break
  when 2
    puts "北海道旅行ですね"
    place = "Hokkaido"
    break
  when 3
    puts "九州旅行ですね"
    place = "Kyusyu"
    break
  else  
    puts "1~3の番号を入力してください"
    redo
  end
end 

while true do 
  print "何名で予約されますか？\n人数を入力  >  "
  number = gets.to_i
  if number > 0
    puts "#{number}名ですね"
    break
  else
    puts "1以上を入力してください。"
    redo
  end
end

case place 
when "Okinawa"
  total_price = 10000 * number
  if number >= 5
    total_price = (total_price * 0.9).floor
    puts "5名以上なので10%引きとなります"
  end
  puts "合計料金は#{total_price}円になります"
when "Hokkaido"
  total_price = 20000 * number
  if number >= 5
    total_price = (total_price * 0.9).floor
    puts "5名以上なので10%引きとなります"
  end
  puts "合計料金は#{total_price}円になります"
when "Kyusyu"
  total_price = 15000 * number
  if number >= 5
    total_price = (total_price * 0.9).floor
    puts "5名以上なので10%引きとなります"
  end
  puts "合計料金は#{total_price}円になります"
end


