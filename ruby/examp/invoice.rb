# coding: utf-8
 
   $part0, $name0, $cena0, $stoi0, $stoi1, $kol0, $bul0, $s, ss, $c, cc, $ca, $i, $ii, $t,
  
   $fs = "stock.txt"  ;  $fc = "custom.txt"  ; $fi = "invoice.txt" ;  $fs = "stock.txt" 

    name0 = "  1      СЛУШАЛКИ        30.72"
    ss = File.new($fs , "w") ; ss.puts name0
    ss.puts "  2      МИКРОФОН        15.55" ; ss.puts "  3      CD ДИСК         33.65"
    ss.puts "  4      МИШКА           13.88" ; ss.puts "000" ; ss.close
   
    cust0 = "102858422 АРЦЕНТЪР ЕООД         СИЛИТРА УЛ. БЯЛА ТОПОЛА 43   КРАСИМИР МИХАЙЛОВ ТОДОРВ"
    cc = File.new($fc, "w") ; cc.puts cust0
    cc.puts  "102198098 ЕЛЕНИ ХОТЕЛС АД       СОФИЯ УЛ. ХРИСТО БОТЕВ 126   ИВАН ДЮЛГЕРОВ ПОПТОДОРОВ"
    cc.puts  "202243774 КОРАЛ АПАРТМЪНТС ЕООД ПЛОВДИВ УЛ. ИВАН ВАЗОВ 13    ГЕОРГИ ИЛИЕВ ПВТРОВ     "
    cc.puts  "99999" ;  cc.close

 class Invoice
    def custom 
     puts  
     puts "ТАБЛИЦА СЪС СПИСЪК НА КУПУВАЧИ".rjust(55," ")
     puts (" ".rjust(25," ")).ljust(55,"-")
     puts "Булстат   Наименование" .rjust(47," ")
     puts (" ".rjust(25," ")).ljust(55,"-")
     cc = File.open($fc)
                while #1
                      $c = cc.gets
                  #  if $c.to_i == y.to_i
                     if $c.include?("99999") ; break ; else ; puts "".rjust(25," ") + $c[0, 31]  ; end 
   end # while #1
        puts ; print " Изберете булстат от таблицата /0 за изход/       : ".rjust(58," ")
                 loop do
                    $bul0 = gets
           if  "102858422".to_c == $bul0.to_c or "102198098".to_c == $bul0.to_c or "202243774".to_c == $bul0.to_c or "0".to_c == $bul0.to_c
                 break; else ; print "Въвзможни варианти 102858422 102198098 202243774 : ".rjust(58," ") ; end   
                   end
                            if  "102858422".to_c == $bul0.to_c or "102198098".to_c == $bul0.to_c or "202243774".to_c == $bul0.to_c
             puts ; puts "Избор на купувача :  ".rjust(28," ") 
             $ii = File.new($fi , "w") ; $ii.close ; cc = File.open($fc)
             cc.rewind
            while #2
               $c = cc.gets
                if $c.include?("99999")

                  $c = File.read( $fc )
                   puts $i
                   # $c.close  # ne go puskai!!!!!!!
                  break
                else
                   if $c[0, 9].to_c == $bul0.to_c
                    $ca = $c[10, 21].rjust(29," ") ;  puts $ca.rjust(49," ") ; invo
                    $ca = $c[32, 29].rjust(37," ") ;  puts $ca.rjust(57," ") ; invo
                    $ca = ("Булстат " + $c[0, 9]).rjust(25," ") ; puts $ca.rjust(46," ") ; invo
                    $ca = ("ИН по ДДС " + $c[0, 9]).rjust(27," ") ; puts $ca.rjust(47," ") ; invo 
                    $ca = ("МОЛ " + $c[61,24]).rjust(36," ") ; puts $ca.rjust(56," ") ; invo ; end 
                end # $c.include?("99999")
            end  # while #2
     Invoice.new.sell
                            end # "102858422".to_c == $bul0.to_c or "102198098".to_c == $bul0.to_c or "202243774".to_c == $bul0.to_c
    end # def custom
 
    def invo
         $i = File.read( $fi ) ; ii = File.open($fi, 'w' ) ; ii.puts $i
        case  #2
             when $ca == $c[10, 21].rjust(29," ")
              ii.puts "ОРИГИНАЛ".rjust(43," ") ; ii.puts ; ii.puts
              ii.puts $ca + 'КОСИ 61 ЕООД'.rjust(40," ")
            when $ca == $c[32, 29].rjust(37," ")
              ii.puts $ca + 'БУРГАС, УЛ. ОБОРИЩЕ 95 '.rjust(33," ")
            when $ca == ("Булстат " + $c[0, 9]).rjust(25," ")
              ii.puts $ca + 'Булстат 102804684'.rjust(44," ")
            when $ca ==  ("ИН по ДДС " + $c[0, 9]).rjust(27," ")
              ii.puts $ca +  'ИН по ДДС 102804684'.rjust(42," ")
            when $ca == ("МОЛ " + $c[61,24]).rjust(36," ")
              ii.puts $ca + " МОЛ СТЕФАНА ИВАНОВ МИРЧЕВ".rjust(33," ")
              ii.puts ; ii.puts 
              $t = Time.now
              ii.puts "Ф А К Т У Р А".rjust(46," ")
              ii.puts "0000010021 #{$t.strftime("%d/%m/%Y")}".rjust(49," ")
              ii.puts (" ".rjust(10," ")).ljust(67,"-")
              ii.puts "ПAРТИДА   НАИМЕНОВАНИЕ   М-КА   К-ВО   ЕД.ЦЕНА   СТОЙНОСТ".rjust(67," ")
              ii.puts (" ".rjust(10," ")).ljust(67,"-")
              end  #case  #2
      ii.close  # MNOGO E VAGNO 
     end   # def invo
       def sell   
     puts  
     puts "ТАБЛИЦА СЪС СТОКТА".rjust(48," ")
     puts (" ".rjust(24," ")).ljust(55,"-")
     puts "Партида  Наименование  Ед. цена " .rjust(56," ")
     puts (" ".rjust(24," ")).ljust(55,"-")
     ss = File.open($fs)
     ss.rewind
             while #3
                  $s = ss.gets
                   puts ($s) ; sleep 6
                    if $s.include?("000") ; break ; else ; 
                      puts "".rjust(25," ") + $s[0, 31]           
                    end  # if $s.include?("000")
             end # while #3
             $stoi1 = 0
        while #4
             ss = File.open($fs) ; ss.rewind ; $s = ss.gets ; $part0 = 0 ; puts
             print "Изберете № на партида от таблицата /0 за изход/: ".rjust(65," ")
           #  $part0 = "2".to_c
                 loop do
                   $part0 = gets
                   if 0 <= $part0.to_i and $part0.to_i < 5 ;break ; else ; print "Въвзможни варианти 0...4 : ".rjust(65," ") ; end   
                 end
                           if $part0.to_c == "000".to_c ; invo_1 ; break  ; else
          ss = File.open($fs) ; ss.rewind
          while #5
                $kol0 = 0 ; $s = ss.gets
            if $part0.to_c == $s[0, 3].to_c
               print "Въведете продадените бройки на ".rjust(47," ")  + $s[0,5] + $s[9,9] + "  : "
               
                 loop do
                    $kol0 = gets.chomp
                   if  1 <= $kol0.to_i and $kol0.to_i < 10 ; break ; else ; print "Въвзможни варианти 1...9 : ".rjust(65," ") ; end   
                 end
                 $stoi0 = ($kol0.to_f * $s[25,5].to_f).round(2).to_s
                 $stoi1 = ($stoi1 + ($kol0.to_i * $s[25,5].to_f)).round(2)
                 invo_1
               break  
           end  # if $part0.to_c == $s[0, 3].to_c
           end # while #5
                           end  #if $part0 = "0"
        end # while #4
         ss.close 
     end # def sell
                    def invo_1
                    $i = File.read( $fi ) ; ii = File.open($fi, 'w' ) ; ii.puts $i
                   if $part0.to_c == "0".to_c 
                      if 0 < $stoi1 
                          ii.puts (" ".rjust(33," ")).ljust(67,"-")  
                          ii.puts "Стойност на сделката       #{$stoi1}".rjust(67," ") 
                          ii.puts (" ".rjust(33," ")).ljust(67,"-")
                          ii.puts "ДДС 20%             #{(($stoi1*0.2).round(2)).to_s}".rjust(67," ") 
                          ii.puts (" ".rjust(33," ")).ljust(67,"-")
                          ii.puts "Всичко            #{(($stoi1 + $stoi1*0.2).round(2)).to_s}".rjust(67," ")  
                          ii.puts (" ".rjust(10," ")).ljust(67,"-")
                          ii.puts ; ii.puts "Дата на данъчното събитие: #{$t.strftime("%d/%m/%Y")}".rjust(46," ")
                          ii.puts ; ii.puts "Стоката поличена от: #{$c[61,24]}" .rjust(54," ")
                          ii.puts ; ii.puts ; ii.puts ; ii.puts ; ii.puts 
                          ii.puts "Получател:..............        Съставител:..............." .rjust(67," ")
                          ii.puts "#{$c[61,24]}             СТЕФАНА ИВАНОВ МИРЧЕВ" .rjust(67," ") ; ii.puts ; ii.puts ; ii.close 
                          system "clear" ; $i = File.read("invoice.txt") ; puts $i ; 
                          puts " Фактурата е във файл invoice.txt, натиснете кой да е клавиш за да продължите..."  
                          f = gets 
                      end
                  else
                      ii. puts "            " + $s[0,4]+ "    " + $s[9,10] + "      бр.    " + $kol0 + "      " + $s[25,5] + "      " + $stoi0 ;  end
                      ii.close  
                   end # def invo_1
 end  # class Invoice

 
       ans = ''
       until ans == '0' do
            system "clear"
            puts ; puts ; puts ; puts "Главно меню".rjust(44," ") ;  puts ;
            puts "1. Фактура".rjust(39," ")
            puts "0. Изход от програмата".rjust(51," ")
            puts  
            print "Вашият избор: ".rjust(46," ") 
            ans = gets[0]
            system "clear"
           case ans 
	          when '1' then  
              Invoice.new.custom
              end #  case ans 
       end # ans == '0' d










