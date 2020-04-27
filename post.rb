class Post

  def self.post_types
    [Memo, Link, Task]
  end

  def self.create(type_index)
    return post_types[type_index].new
  end

  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
    # todo

  end

  def to_string
    # todo
  end

  def file_path
    current_path = File.dirname(__FILE__)

    file_time = @created_at.strftime("%Y-%m-%d_%H-%M-%S")

    return "#{current_path}/#{self.class.name}_#{file_time}.txt"
  end

  def save
  file = File.new(file_path, "w:UTF-8")

    for string in to_string do
      file.puts(string)
    end

    file.close
  end

end