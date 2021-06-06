class Atm
  NON_VALID_MSG = 'Введите положительную сумму'.freeze
  FILE_PATH = 'lab3/balance.txt'.freeze
  START_BALANCE = 100.0
  @balance = nil

  def balance
    puts("Ваш баланс: #{@balance}")
  end

  def deposit
    puts 'Введите сумму депозита:'
    sum = input_float(NON_VALID_MSG, true)
    @balance += sum
    puts("Вы внесли на счёт #{sum}.")
    balance
  end

  def withdraw
    puts 'Введите сумму для снятия:'
    sum = input_float(NON_VALID_MSG, true)
    if @balance >= sum
      puts("Вы сняли со счёта #{sum}")
      @balance -= sum
      balance
    else
      puts 'Недостаточно средств'
    end
  end

  def menu
    loop do
      puts "D - депозит\nW - вывод\nB - баланс\nQ - выход"
      x = gets.chomp.upcase

      case x
      when 'D'
        deposit
      when 'W'
        withdraw
      when 'B'
        balance
      when 'Q'
        return
      else
        puts 'Неизвестная команда'
      end

      File.write(FILE_PATH, @balance)
    end
  end

  def initialize
    @balance = (File.exist?(FILE_PATH) ? File.read(FILE_PATH) : START_BALANCE).to_f
    menu
  end
end