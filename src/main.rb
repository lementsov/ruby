txt = ARGV.first

file = File.open(txt)

file_data = File.read(txt)

file_dataLine = File.readlines(txt)

fileSize = file_dataLine.length()

print "сайз: #{fileSize}\n"

SizeEdit = fileSize - 1

# print "#{file_data}"

(0..SizeEdit).each do |i|
    print "#{i+1}. #{file_dataLine[i]}"
end

print """
Що ви бажаєте зробити?
1. Додати завдання
2. Редагувати завдання
3. Видалити завдання
"""

act = $stdin.gets.chomp

if act == "1"
    print "Нове завдання: \n"
    textAdd = $stdin.gets.chomp
    file = File.open(txt, 'w')
    file.write("#{file_data}\n")
    file.write(textAdd)
    file.close()
elsif act == "2"
    arraytoEdit = []

    (0..SizeEdit).each do |i|
        arraytoEdit.push(file_dataLine[i])
    end

    print "Номер завдання для заміни"
    numberToEdit = $stdin.gets.chomp.to_i
    print "Текст завдання для заміни"
    TaskEdit = $stdin.gets.chomp
    arraytoEdit[numberToEdit] = "#{TaskEdit}\n"

    file = File.open(txt, 'w')
    (0..SizeEdit).each do |j|
        file.write(arraytoEdit[j])
    end
elsif act == "3"
    arraytoEdit = []

    (0..SizeEdit).each do |i|
        arraytoEdit.push(file_dataLine[i])
    end

    print "Номер завдання для видалення"
    numberToEdit = $stdin.gets.chomp.to_i
    arraytoEdit.delete(numberToEdit)

    file = File.open(txt, 'w')
    (0..SizeEdit-1).each do |j|
        file.write(arraytoEdit[j])
    end
else
    exit
    file.close()
end
