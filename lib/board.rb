class Board

  attr_accessor :grid

  def self.default_grid
    [[nil] * 10] * 10
  end

  def initialize(grid=nil)
    grid.nil? ? @grid = Board.default_grid : @grid = grid
  end

  def grid
    @grid
  end

  def count
    self.grid.flatten.count { |el| el != nil }
  end

  def empty?(pos=nil)
    if pos.nil?
      @grid.flatten.all? { |el| el == nil } ? true : false
    else
      @grid[pos.first][pos.last] == nil ? true : false
    end
  end

  def [](pos)
    @grid[pos.first][pos.last]
  end

  def []=(pos, mark)
    @grid[pos.first][pos.last] = mark
  end

  def full?
    @grid.flatten.count(nil) == 0 ? true : false
  end

  def place_random_ship
    if @grid.flatten.count(nil) == 0
      raise "the board is full"
    else
      @grid[rand(@grid.length)][rand(@grid.length)] = :s
    end
  end

  def won?
    @grid.flatten.all? { |el| el != :s } ? true : false
  end

end
