require_relative '../utils'
require_relative 'Atm'

INPUT_PATH = 'lab3/data.txt'.freeze
OUTPUT_PATH = 'lab3/results.txt'.freeze

def task3_1
  unless File.exist?(INPUT_PATH)
    puts 'Отсутствует файл входных данных'
    return
  end

  output_data = File.exist?(OUTPUT_PATH) ? File.open(OUTPUT_PATH, 'a+') : File.new(OUTPUT_PATH, 'w+')
  input_data = File.open(INPUT_PATH)

  data = input_data.read.split("\n")
  loop do
    puts('Введите возраст или -1 для выхода:')
    user_input = input_int
    break if user_input == -1

    data.length.times do |i|
      output_data.puts("#{data[i]}\n") if data[i].end_with?(user_input.to_s)
    end

    data.delete_if { |res| output_data.read.split("\n").include? res }
    break if data.empty?
  end

  puts(output_data.read)
  input_data.close
  output_data.close
end

def task3_2
  Atm.new
end

def lab3
  task3_1
  task3_2
end