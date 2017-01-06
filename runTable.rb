require_relative 'Table'

table = Table.new
(0..51).each do |i|
    puts table.next
end