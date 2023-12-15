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

    puts '=' * 15
    puts "Номерний знак #{abbrev['AA']} -#{auto['Kyiv']}"

    auto.each do |city, znak|
        puts "У місті #{city} автомобільний знак має номер: #{znak}"
    end

end

HashArray()