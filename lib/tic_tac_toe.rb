class TicTacToe

    attr_accessor :board

  # WIN_COMBINATIONS = [
  #   [@board[0] == "X" && @board[1] == "X" && @board[2] == "X"],
  #   [@board[0] == "X" && @board[1] == "X" && @board[2] == "X"],
  #   [@board[0] == "X" && @board[1] == "X" && @board[2] == "X"],
  #   [@board[0] == "X" && @board[1] == "X" && @board[2] == "X"],
  #   [@board[0] == "X" && @board[1] == "X" && @board[2] == "X"],
  #   [@board[0] == "X" && @board[1] == "X" && @board[2] == "X"],
  #   [@board[0] == "X" && @board[1] == "X" && @board[2] == "X"],
  #   [@board[0] == "X" && @board[1] == "X" && @board[2] == "X"]
  # ]

  def initialize
    @board = [" "," "," "," "," "," "," "," "," "]
  end

  def display_board
    entries = [" ", "X", "Y"]
    @board = [entries[rand(3)], entries[rand(3)], entries[rand(3)], entries[rand(3)], entries[rand(3)], entries[rand(3)], entries[rand(3)], entries[rand(3)], entries[rand(3)]]
  end

end
