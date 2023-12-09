txt = ARGV.first

file = File.open(txt)

file_data = File.read(txt)

print "#{file_data}"

print """
Що ви бажаєте зробити?
1. Додати завдання
2. Видалити всі завдання
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
    file = File.open(txt, 'w')
    txt.truncate(0)
    file.close()
else
    exit
    file.close()
end
