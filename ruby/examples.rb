#!/usr/bin/ruby2.7
 
$stoi0=0 ; $stoi1=0

# $kol0 = 5  ; $s = "1      СЛУШАЛКИ          30.72" ; $stoi0 = 0 ; $stoi1 = 0
#  puts ($s[25,5].to_f)
#          puts ($kol0.to_i * 15.10).round(3)   
#          puts ($kol0.to_i * $s[25,5].to_f).round(2) 
#          $stoi0 = (($kol0.to_i * $s[25,5].to_f).round(2)).to_s 
#          puts $stoi0 
#          $stoi1 = $stoi1 + (($kol0.to_i * $s[25,5].to_f).round(2))
#           puts $stoi1
#            puts "AAAAAAA  " + $stoi1.to_s 
# 
#  puts "                 " + $stoi1.to_s 
# 
# obj = Object.new
# def obj.talk
# puts "I am an object."
# # puts "(Do you object?)"
# end
#  obj.talk
# 
# far = Object.new
# def far.izch(c)
#     c * 9.0 / 5 + 32
# end
# puts far.izch(100)
# 
# func1 = Object.new
# def  func1.aaa
#    "AAAAAAAAAA"
# end
#def func1.bbb
#"BBBBBBBB"
#end
# def  func1.ccc
#   5.50
# end
#  def func1.ddd? 
# "True"
# end
#  puts func1.bbb
# puts "#{func1.ccc*3}"    
# puts "QQQQ" + "#{func1.aaa}"
#  puts (func1.ddd?)
# if func1.ddd?
#   puts  "True-1"
# else
#   puts  "False-1"
# end
# puts "Pause 01" ; sleep 3
# 
#class C  # -Vinagi glawna
#    def a
#         puts "First definition of method m"
#     end
#   
#     def b
#       puts "Second definition of method m"
#   end
#  end
# C.new.a
# C.new.b
# 
# puts Time.new.strftime("%m-%d-%y")
# 
# class Silly
#     def price=(x)
#          puts "The current time is #{Time.now}"
#     end
#  end
#s = Silly.new
#s.price = 111.22
#
# class Temperature
#   def Temperature.c2f(celsius)
#     celsius * 9.0 / 5 + 32
#   end
#   def Temperature.f2c(fahrenheit)
#     (fahrenheit - 32) * 5 / 9.0
#   end
# end
# puts Temperature.c2f(100) 
# 
# class Ticket
#   VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]   
# end
#  puts Ticket::VENUES
#  puts "#{Ticket::VENUES}"
# venues = Ticket::VENUES
# venues << "High School Gym"
# puts venues  
# 
# module InterestBearing
#   def calculate_interest
#     puts "Placeholder! We're in module InterestBearing."
#   end
# end
# puts InterestBearing.calculate_interest
#
#module MyModule
# GOODMOOD = "happy"
# BADMOOD = "grumpy"
# def MyModule.greet
#  return "I'm #{GOODMOOD}. 1How are you?"
# end
# def MyModule.baad
#  return "I'm #{BADMOOD}. 2How are you?"
# end
#end
#puts(MyModule::GOODMOOD)
#puts( MyModule.greet )
#puts( MyModule.baad )
#puts(MyModule::BADMOOD)
#
# class BankAccount
#  # include InterestBearing
#   def calculate_interest
#     puts "Placeholder! We're in class BankAccount."
#     puts "And we're overriding the calculate_interest method..."
#     puts "which was defined in the InterestBearing module."
#   end
# end
# account = BankAccount.new
# account.calculate_interest
# 
# module M
#   def report                             
#     puts "'report' method in module M"
#   end
# end
# class C
#   include M
#   def report                                         
#     puts "'report' method in class C"
#     puts "About to trigger the next higher-up report method..."
#     super                                                    
#     puts "Back from the 'super' call."
#   end
# end
# c = C.new
# c.report
# 
#x = 1
#if not (x == 1) # if !(x == 1) ;  if !x == 1 ; if (!x) == 1 ; if not x == 1
#  puts "Is not equal to 1"
#else
#  puts "Is equal to 1"
#end
#
# x=1 
# puts "Big number!" unless x <= 100
# name = "David A. Black"
# if m = /la/.match(name)                        
#   puts "Found a match!"
#   print "Here's the unmatched start of the string: "
#   puts m.pre_match
#   print "Here's the unmatched end of the string: "
#   puts m.post_match
# else
#   puts "No match"
# end
# 
# name = "David A. Black" ; m = /la/.match(name)
#if m
#   # etc.
#   system "clear"
#   print "Exit the program? (yes or no): "
#    answer = gets.chomp
#   case answer
#     when "yes"
#       puts "Good-bye!"
#         exit
#      when "no"
#           puts "OK, we'll continue"
#      else
#           puts "That's an unknown answer -- assuming you meant 'no'"
#  end
#end
# 
# loop do
# puts "Looping forever!"
# sleep 1
# end
#
# n = 0
# loop do
#   n = n + 1
#   puts "#{n}" ; sleep 1
#   break if n > 9
# end
# 
# n = 0
# loop do
#   n = n + 1
#     puts "#{n}" ; sleep 1
#   next unless n == 5
#   break
# end
# 
# n = 0
# while n < 5
#     n = n + 1
#    puts "#{n}" ; sleep 1
# end
# 
# n = 0
# begin
#   n = n + 1
#   puts "#{n}" ; sleep 1
# end while n < 5
# puts "Done!"
# 
#system "clear"
# 
# class Temperature
#   def Temperature.c2f(celsius)
#       celsius * 9.0 / 5 + 32
#   end
#   def Temperature.f2c(fahrenheit)
#       (fahrenheit - 32) * 5 / 9.0
#   end
# end
# # breck
# celsius = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
# puts "Celsius\tFahrenheit"
# for c in celsius
# puts "#{c}\t#{Temperature.c2f(c)}"
# puts '11111111111111111111' ;  sleep 1
# end
# 
#     array = [1,2,3]
#     puts  array.map {|n| n * 10 }
#     5.times { puts "Writing this 5 times!" }   
# 
# class Array
#     def my_map
#         c = 0
#         acc = []
#         until c == size
#           acc << yield(self[c])
#           c += 1
#          end
#       acc
#     end
# end
#   names = ["David", "Alan", "Black"]
#   puts names.my_map {|name| name.upcase }
# 
#    puts "123abc"
#    puts "123abc".to_i
#    puts "123abc".to_s
#    puts "123abc".to_f
#    puts "123abc".to_c
#    puts "123abc".to_r
# 

# a = Object.new
# #<Object:0x00000101258af8>
# b = Object.new
# #<Object:0x00000101251d70>
# p (a == a)
# p (a == b)
# p (a != b)
# p (a.eql?(a))
# p (a.eql?(b))
# p (a.equal?(a))
# p (a.equal?(b))
#
# Четене на променлива
# str = "Hi "
# puts "#{str} there."
# # Сбор на стрингове
# "a" + "b"
# # Проверка на низ в низ 
# string = "Ruby is a cool language."
# puts string.include?("Ruby")
# # Дължина 
# puts string.size
# # Празен
# puts string.empty?
# # Брои в скоби
# puts string.count("aa")
# 
# Ansi code
#  puts "a".ord
#  puts "b".ord
#  puts "A".ord
#  puts "B".ord
#  puts 97.chr
# 
# Проверка по Ansi
#  puts "a" <=> "b"
#   # връюа -1  
#  puts "b" <=> "a"
#  # връща 1
#  puts "а" <=> "a"
#  #  връща нула 
#  
#   string = "David A. Black"
#   #  Големи и малки букви
#   puts string.upcase
#   puts string.downcase
#   "abc".send(:upcase)
#   # Добавя симмвол repl
#   puts string.rjust(25,'.')
#   puts string.ljust(25,'.')
#   puts string.center(20, "*")
#   # Премахва интервали 
#   puts string = "      David A. Black    "
#   puts string.strip
#   puts string.lstrip
#   puts string.rstrip
#   # Изтрива низ
#   puts string.clear
# 
#    string = "David A. Black"
#      #  Истрива символите в низа 
#    puts string.delete("abc")
#      #  Итрива без символите в низа 
#    puts string.delete("^abc")
#   
#     puts __ENCODING__
# 
#   Окръглява
#     n = 99.6
#     m = n.round
#     puts m
# 
#   Дата и час 
#   t = Time.now
#   puts t
#   puts t.hour
#   # puts t.minute
#   puts t.sec
#   puts t.year
#   puts t.month
#   puts t.day
#   puts t.strftime("%d-%m-%Y")
#   puts t.monday?
#   puts t.sunday?
#   puts t.strftime("Today is %x")
#   puts t.strftime("Today is %d-%b-%Y")
#   puts t.strftime("Today is %d-%B-%Y")
# 
#  Масив присвояване в промнлива 
# array = ["ruby", "diamond", "emerald"]
# hash = { 0 => "ruby", 1 => "diamond", 2 => "emerald" }
# puts array[0]    # ruby
# puts hash[0]     # ruby
#
# hash = { "red" => "ruby", "white" => "diamond", "green" => "emerald" }
# hash.each.with_index {|(key,value),i|
#   puts "Pair #{i} is: #{key}/#{value}"
#         }
#
# array = ["ruby", "diamond", "emerald"]
# array.each { |element|
#   puts element
#            }
#
#a = [1,2,3,4]
# p (a)
# a << 5
# p (a)
# a.replace([4,5,6]) 
# p (a)
# a = [1,2,3,4].reverse
# p (a)
# a = ["abc", "def", 123].join
# p (a)
# 
# Създава масив
# e = Enumerator.new do |y|
#   puts "Starting up the block!"
#   (1..3).each {|i| y << i }
#   puts "Exiting the block!"
# end
# p e.to_a
# p e.select {|x| x > 2 }
# 
# Чете масив
#names = %w{ David Black Yukihiro Matsumoto }
#e = names.enum_for(:select)
# p(e)
# p(e.each { |n| p n.include?('a') })
#  # search a in elemnt masiv 
# e = names.enum_for(:inject, "Names: ")
# p (e)
#
# Слагане на кавички на елементите на масива 
# без изчисляване на стойност
# p (%W{ David is #{2014 - 1959} years old. } )
#
#   Търсене в масив
#  state_hash = { "Connecticut" => "CT",
#                "Delaware"    => "DE",
#                "New Jersey"  => "NJ",
#                "Virginia"    => "VA" }
# print "Enter the name of a state: "
# state = gets.chomp
# abbr = state_hash[state]
# puts "The abbreviation is #{abbr}."
#
# puts state_hash.min 
# puts state_hash.max
# puts state_hash.minmax
#
# Търсене в стринг
#puts "STEF" if /stef/.match("The alphabet starts with stef.")
#puts "Alen" if "The alphabet starts with abc.".match(/abc/)
# # or
# puts "STEF" if /stef/ =~ "The alphabet starts with stef."
# puts "Alen" if "The alphabet starts with abc." =~ /abc/
# p /abc/.match("The alphabet starts with abc.")
# 
#   Част от стринг ВАЖНО!!!
#   string = "abc!def!ghi!"
#   match = /..../.match(string)
#   puts match[0]
# 
# Позиция в  стринга
# p "The alphabet starts with abc" =~ /abc/
# 
# Индекс
# state_hash.each_with_index do |pres, i|
# puts "#{i+1}. #{pres}"    
# end
# Сотрира 
# p ([3,2,5,4,1].sort)
# p %w[pa5, pa2, pa1, pa4, pa3].sort
# Намира при зададено условие
# p [1,2,3,4,5,6,7,8,9,10].find {|n| n > 5 }
#  
# Подержда в колона елементите
#  str = "This string\nhas three\nlines"
#  str.each_line {|l| puts "Next line: #{l}" }
# 
# Проверка за елемнт
#  states = ['West coast', 'Louisiana', 'New York']
#  p states.include?("Louisiana")
#  p states.all? {|state| state =~ / / }
#Опратори and or not
#  ((A && B) && !C) || ((A && C) && !B) 
# 
# Присвояване на елементие отеди в друг масив
# h1 = {"Smith" => "John",
#       "Jones" => "Jane" }
# h2 = {"Smith" => "Jim" }
# h1.update(h2)
# puts h1["Smith"] 
#
#  Обединение
# h1 = {"Smith" => "John",
#       "Jones" => "Jane" }
# h2 = {"Smith" => "Jim" }
# h3 = h1.merge(h2)
# p h1["Smith"] 
# p h3
#  Заместване 
# a =  { 1 => "one", 2 => "two" }
# p (a)
# a.replace({ 10 => "ten", 20 => "twenty"})
# p (a)
#
#  Обхват на масива
# p ( Range.new(1,100))
# 
# Нацепване на стринг 
# a = "a,b,c,d,e"
# p (a)
# b = a.split(/,/,3)
# p(b)
# 
# Меню
# print "Continue? (y/n) "
# answer = gets
# case answer
# when /^y/i
#   puts "Great!"
# when /^n/i
#   puts "Bye!"
#   exit
# else
#   puts "Huh?"
# end
#    Четене на файл
#  f = File.new("a2.rb")
#  x = f.rewind
#  puts x
#  y = f.gets  
#  puts y
#
#  Писне в файл
#   f = File.new("a3.rb", "w")
#   x = 111.222
#   f.puts x
#   f.close
#   f = File.new("a3.rb")
#   f.rewind
#    x = f.gets
#    y  = x.to_f
#    puts y
#
#  Проверака за файл
#  puts FileTest.exist?("a3.rb")
# puts FileTest.exist?("/home/inter/work/ruby/a1.rb") 
# puts Dir["/home/inter/work/ruby/*.*"]
#  puts Dir.entries("/home/kosy/work/linux/ruby")
#
#  Проверка синт грешка 
#  ruby -cw /home/inter/work/ruby/a1.rb