# Ruby
## In this repository I'd show my way to get knowledge of Ruby and RubyOnRails

### Sooo, I started to learn it in 19:34🕥 from basic syntax like variables and operators. Now it looks intresting and easy. 

---

### І так, за 2.5 години, не враховуючи смачну вечерю, це мій перший невеликий проект ToDoList, де, насправді, можна тільки додати завдання або видалити одразу все. Назвімо це альфою, тому, що поки я не придумав, як можна обирати кожну лінію. Звісно, я бачив, що коли Ruby читає файл, воно передається в масиві, і по ідеї, можна легко обрати кожен елемент цього масива, проте, я ще точно до цього не дійшов у синтаксисі та методах. Саме з даною частинкою коду проблем майже не виникло, а перед цим також був написаний найпростіший калькулятор за допомогою if/elsif. А щодо ToDoList'а, я ще точно до нього повернусь, також спробую відтворити його на сайті вже за допомогою RubyOnRails.

```txt = ARGV.first

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
```

### 1:30 ночі, я завершив ToDoList на чистому Ruby до кінця :)) Радість так і розпирає, а код вже запушен в репозиторій😉 Зранку після усвідомлення хто я такий і що робив вночі, відпочину, поїм, таке сяке пам пам і продовжу вивчати цю мову програмування.. Вивчаю, до речі, по одному сайту англомовному, і на якесь диво засвоюється матеріал доволі непогано. 
