class Post

  def initialaize
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
    current_path = File.dirnaeme(__FILE__)

    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_&H-%M-%S.txt")

    return current_path + "/" + file_name
  end

  def save
  file = File.new(file_path, "w:UTF-8")

    for i in to_strings do
      puts file(i)
    end
  end
    file.close
end