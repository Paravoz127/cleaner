# class for working with information: file / size
class MyFile
  include Comparable
  # name: String name of file
  # size: int size of file in bytes
  attr_reader :name, :size

  # init of name and size
  def initialize(name, size)
    @name = name
    @size = size
  end

  # to compare files using size
  def <=>(other)
    size <=> other.size
  end
end
