class Memo < Post

  def read_from_console
    puts "Вводите информацию. Окончание - строка 'end':"

    @text = []
    line = nil

    while line != 'end' do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_string
    time_string = "Создано #{@created_at.strftime("%Y-%m-%d_&H-%M-%S.txt")}"

    return @text.unshift(time_string)
  end

end