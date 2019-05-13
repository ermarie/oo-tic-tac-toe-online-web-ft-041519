class TicTacToe

  WIN_COMBINATIONS = [
    [@board[0] = "X" && @board[1] = "X" && @board[2] = "X"],
    []
  ]

  attr_accessor :board

  def initialize
    @board = [" "," "," "," "," "," "," "," "," "]
  end


end
