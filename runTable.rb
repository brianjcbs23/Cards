require_relative 'Util'
FILENAMES.each do |game|
    require_relative 'Games/' + game
end

def CardPickup()
    table = CardPickup.new
    puts table
    (0..51).each do
        puts table.next
    end
end

def main()
    puts WELCOME
    game = gets
    send(GAMELISTING["52 Card Pickup"])
end

main
