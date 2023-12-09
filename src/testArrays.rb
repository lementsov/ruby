txt = ARGV.first

file = File.open(txt)

file_data = File.readlines(txt)

fileSize = File.readlines(txt).length()

print "size of array is: #{fileSize}\n\n"

print "Список ваших завдань:\n #{file_data[1]} \n"

arraytoEdit = []
SizeEdit = fileSize - 1

(0..SizeEdit).each do |i|
    arraytoEdit.push(file_data[i])
  end

arraytoEdit[2] = "Moo\n"

file = File.open(txt, 'w')
(0..SizeEdit).each do |j|
    file.write(arraytoEdit[j])
end


# for i in fileSize
#     file = File.open(txt, 'w')
#     file.write("#{file_data[i]}\n")
#     file_data[2] = "Wow"
#     file.close()
# end
# print """
# Що ви бажаєте зробити?
# 1. Додати завдання
# 2. Редагувати завдання
# 3. Видалити завдання
# """

# act = $stdin.gets.chomp

# if act == "1"
#     print "Нове завдання: \n"
#     textAdd = $stdin.gets.chomp
#     file = File.open(txt, 'w')
#     file.write("#{file_data}\n")
#     file.write(textAdd)
#     file.close()
# elsif act == "2"
#     print "Яке завдання ви хочете редагувати?"
#     numberToEdit = $stdin.gets.chomp
#     print "На яке завдання ви хочете замінити #{numberToEdit} вправу"
#     tastToEdit = $stdin.gets.chomp
#     File.readlines(txt)[numberToEdit.to_i] = tastToEdit
#     print "#{File.read(txt)}"
#     file.close()
# else
#     exit
#     file.close()
# end

# file.close()

# file = File.open(txt, 'w')
# txt.truncate(0)
# file.close()

#Помити посуд
#Помити духовку
#Прибратись
#Помити вікно
#Почистити зуби
