require 'my_file'
require 'storage'

begin
  puts 'Enter the path'
  path = gets.rstrip!
  storage = Storage.new
  Dir.open(path).each do |file_name|
    if file_name != '.' && file_name != '..'
      storage.push MyFile.new(file_name, File.size(path + '/' + file_name))
    end
  end
rescue StandardError
  puts 'incorrect path'
  retry
end

i = 1
storage.each do |elem|
  puts i.to_s + ') ' + elem.name + ' =====> ' + elem.size.to_s + ' bytes'
  i += 1
end
