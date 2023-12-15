# def add(num1,num2)
#     return num1 + num2
# end

while true
    module MyFridge
        @listProducts = ["макарони", "капуста квашена"]

        def MyFridge.GiveInfo()
            puts "This is list of my products in fridge: \n"
            @listProducts.each_with_index do |(key), index|
                puts "#{index + 1}. #{key}"
            end
        end 

        # замість назви класу можна використовувати також self.
        def self.addProduct(product)
            @listProducts.push(product)
        end

        def self.deleteProduct(product)
            @listProducts.delete(product)
        end

        def self.dropProducts()
            @listProducts = []
        end

    end

    puts """\n Що ви хочете?
1. Переглянути список продуктів
2. Додати продукт
3. Видалити продукт
4. Видалити всі продукти (приїхала теща..)"""

        act = $stdin.gets.chomp
        case act
        when "1"
            MyFridge.GiveInfo()
        when "2"
            "Напишіть, будь ласка, наявний продукт та його кількість через клавішу space."
            product = $stdin.gets.chomp
            MyFridge.addProduct(product)
        when "3"
            "Напишіть, будь ласка, продукт, який хочете видалити"
            MyFridge.deleteProduct()
        when "4"
            "Дай Боже сил Вам, дякую, що скористались моїми послугами."
            MyFridge.dropProducts()
        end

end