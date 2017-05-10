class BattleshipGame
  attr_accessor :board, :player

  def initialize(player, board)
    @player = player
    @board = board
  end

  def attack(pos)
    @board[pos] = :x
  end

  def count
    @board.count
  end

  def game_over?
    @board.won?
  end

  def play_turn
    pos = @player.get_play
    attack(pos)
  end

end
