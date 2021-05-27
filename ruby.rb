require_relative '../utils'

def task2_1
  puts('Введите строку:')
  word = input_string
  puts('Введите число:')
  num = input_int

  if word.end_with?('cs')
    puts num**word.length
  else
    puts word.reverse
  end
end

def task2_2
  puts('Количество покемонов:')
  count = input_int_msg('Введите положительное число', true)
  pokemons = []
  count.times do |i|
    puts("Имя #{i + 1} покемона:")
    name = input_string
    puts("Цвет #{i + 1} покемона:")
    color = input_string
    pokemons << { "name": name, "color": color }
  end
  puts(pokemons)
end

def lab2
  task2_1
  task2_2
end