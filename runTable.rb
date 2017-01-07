require_relative 'Util'
FILENAMES.each do |game|
    require_relative 'Games/' + game
end

def cardPickup()
    table = CardPickup.new
    puts table
    (0..51).each do
        puts table.next
    end
end

def help()
    puts '_'*15
    COMMANDS.each {|command| puts command}
end

def listGames()
    puts HELP_MESSAGE
    puts '_'*15
    GAMES.each {|game| puts game}
end

def main()
    puts WELCOME
    while true do
        print ">> "
        game = gets
        game = game.strip
        game = game.downcase
        game = game.gsub ' ', ''
        return 0 if EXIT_COMMAND.include? game
        (METHODS.has_key? game) ? (send(METHODS[game])) : (puts NO_GAME_WITH_THAT_NAME)
    end
end

main
