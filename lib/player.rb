class HumanPlayer

  def initialize(name)
    @name = name
  end

  def get_play
    print "Where do you want do attack? : "
    command = gets.chomp
    pos = command.split(",")
    if is_valid?(pos)
      pos
    else
      invalid_operation until is_valid?(pos)
    end
  end


  def is_valid?(pos)
    attack_option = []
    (0..10).each do |i|
      (0..10).each do |j|
        if @board[i][j] == :s
          attack_option << [i,j]
        end
      end
    end
    attack_option.include?(pos)
  end

  def invalid_operation
    print "Invalid location.\n"
    print "Where do you want do attack? : "
    command = gets.chomp
    pos = command.split(",")
  end

end
