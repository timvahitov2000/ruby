require_relative '../utils'

def task2_1
  puts('������� ������:')
  word = input_string
  puts('������� �����:')
  num = input_int

  if word.end_with?('cs')
    puts num**word.length
  else
    puts word.reverse
  end
end

def task2_2
  puts('���������� ���������:')
  count = input_int_msg('������� ������������� �����', true)
  pokemons = []
  count.times do |i|
    puts("��� #{i + 1} ��������:")
    name = input_string
    puts("���� #{i + 1} ��������:")
    color = input_string
    pokemons << { "name": name, "color": color }
  end
  puts(pokemons)
end

def lab2
  task2_1
  task2_2
end