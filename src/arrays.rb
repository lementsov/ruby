def arrayWhilePop
    fruits = "Apples Bananas ApplesMore Ogirok Kartoplya Bulba" 

    stuff = fruits.split(' ') # розколює, так б мовити текст, перетворюючи його у список за допомогою аргументів, які можна вставити в дужки (наприклад, //, \s і так далі)
    moreStuff = ['building', 'sea', 'christmas', 'friend', 'bulba']

    while stuff.length < 10
        next_one = moreStuff.pop # .pop - останній елемент зі списку (array'я)
        stuff.push(next_one) # тут воно "пушить" - запхає останній елемент зі списку moreStuff у список stuff
    end
    
    puts "there we go #{stuff}"
end

# ---------------------

def HashArray

    #stuff = {'name' => 'Zed', 'age' => 39, 'height' => 6 * 12 + 2}
    #stuff['city'] = "NY"
    #print "#{stuff}\n"
    #stuff.delete('city')
    #print stuff 

    # тут просто розібрався, як це працює



    auto = {
        'Kyiv' => 'AA',
        'Ivano-Frankivsk' => 'AT',
        'Lviv' => 'BC'
    }

    abbrev = {
        'AA' => 'Kyivska Oblast`',
        'AT' => 'Ivano-Frankivska Oblast`',
        'BC' => 'Lvivska Oblast`'
    }

    abbrev['AR'] = 'Zaporizka Oblast`'
    abbrev['BO'] = 'Ternopilska Oblast`'

    auto['Zaporizhzhia'] = 'AP'
    auto['Ternopil`'] = 'BC'

    # puts auto.keys

    puts '=' * 15
    puts "Номерний знак #{abbrev['AA']} -#{auto['Kyiv']}"

    auto.each do |key, value|
        abbr = abbrev[value]
        puts "У місті #{key} автомобільний знак має номер: #{value}, а їхня область - #{abbr}"
    end

    #auto.each do |abbrev, znak, cities|
    #    puts "У #{abbrev} автомобільний знак має номер: #{znak}, а їх центр - #{auto.keys[cities.to_i]}"
    # end

end

HashArray()