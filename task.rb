  require 'date'

class Task < Post

  def initialaize
    super

    @due_date = Time.now
  end

  def read_from_console

    puts "Что нужно сделать?"
    @text = STDIN.gets.chomp

    puts "Введите срок окончания в формате ДД.ММ.ГГГГ"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_string
    time_string = "Создано #{@created_at.strftime("%Y-%m-%d_&H-%M-%S.txt")}"

    deadline = "крайняя дата: #{@due_date}"

    return [deadline, @text, time_string]
  end

end