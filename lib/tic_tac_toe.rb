require 'pry'

class TicTacToe

    attr_accessor :board

   WIN_COMBINATIONS = [
     [0,1,2],
     [3,4,5],
     [6,7,8],
     [0,3,6],
     [1,4,7],
     [2,5,8],
     [2,4,6],
     [0,4,8]
   ]

  def initialize
    @board = [" "," "," "," "," "," "," "," "," "]
  end

  def display_board
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def input_to_index(string)
    if string == nil
      raise ArgumentError
    else
      string.to_i - 1
    end
  end

  def move(index, input)
    index = index.to_i
    board[index] = input
  end

  def position_taken?(index)
    if board[index] == "X" || board[index] == "O"
      true
    else
      false
    end
  end

  def valid_move?(index)
    index = index.to_i
    if index < 0 || index > 8
      false
    else
      !position_taken?(index)
    end
  end

  def turn_count
    count = 0
    @board.each do |position|
      if position == "X" || position == "O"
        count += 1
      end
    end
    count
  end

  def current_player
    if turn_count.even?
      "X"
    else
      "O"
    end
  end

  def turn
    input = gets
    index = input_to_index(input)
    if valid_move?(index) == true
      move(index, current_player)
      display_board
    else
      input = gets
    end
  end

  def won?
    if full? == true
      false
    else
      WIN_COMBINATIONS.each do |combo|
        if board[combo[0]] != current_player || board[combo[1]] != current_player || board[combo[2]] != current_player
          false
        else
          combo
          break
        end
      end
    end
  end

  def full?
    !board.include?(" ")
  end

  def draw?
    if full? == true && won? == false
      true
    else
      false
    end
  end

  def over?
    if full? == false || won? == false
      false
    else
      true
    end
  end

  def winner

  end

end
