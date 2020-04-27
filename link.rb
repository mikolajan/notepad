class Link < Post

  def initialaize
    super

    @url = ''
  end

  def read_from_console
    puts "Введите адрес ссылки"
    @url = STDIN.gets.chomp

    puts "Что за ссылка?"
    @text = STDIN.gets.chomp
  end

  def to_string
    time_string = "Создано #{@created_at.strftime("%Y-%m-%d_&H-%M-%S.txt")}"

    return [@url, @text, time_string]
  end

end