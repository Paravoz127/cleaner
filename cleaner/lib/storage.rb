# class to store the 10 largest items
class Storage
  include Enumerable

  # init array of elems
  # init max size of storage
  def initialize(max_size = 10)
    @elems = []
    @max_size = max_size
  end

  # method to add new elem
  def push(my_file)
    if @elems.length < @max_size
      @elems.push(my_file)
    elsif my_file > @elems[@max_size - 1]
      @elems[@max_size - 1] = my_file
    end
    @elems = @elems.sort do |file1, file2|
      file2 <=> file1
    end
  end

  def each
    index = 0
    while index < @elems.length
      yield(@elems[index])
      index += 1
    end
  end
end
