class Mapper
  def initialize path:
    @path = path
  end

  def parse
    file = File.read(@path)
    lines_list = file.split("\n")
    lines_list.map do |line|
      list    = line.split(' ')
      page    = list[0]
      visitor = list[1]
      { page: page, visitor: visitor }
    end
  end
end
