class Mapper
  def initialize path:
    @path = path
  end

  def parse
    file = File.read(@path)
    lines_list = file.split("\n")
    lines_list.map{|line| line.split(" ") }
  end
end
