puts "請寫一段 Ruby 程式，把 [1, 3, 5, 7, 9] 變成 [2, 4, 6, 8, 10]"
puts [1,3,5,7,9].to_a.map{ |i| i+1}
puts "---------------------------------------"

puts "請印出在 1 到 2000 中，可以被 4 整除，但不能 100 整除，但又要可以被 400 整除的數字。"
puts (1..2000).to_a.select{ |num| num%400==0 or (num%4==0 and num%100!=0)}
puts "---------------------------------------"

puts "請印出在 1 到 100 中所有單數的總和。"
puts (1..100).to_a.select{ |num| num.odd?}.inject(:+)
