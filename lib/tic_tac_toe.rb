class TicTacToe

    game = TicTacToe.new

     WIN_COMBINATIONS = [
        [0, 1, 2], 
        [3, 4, 5], 
        [6, 7, 8],
        [0, 3, 6], 
        [1, 4, 7], 
        [2, 5, 8],
        [0, 4, 8], 
        [2, 4, 6]
      ]

      def initialize
        @board = Array.new(9, " ")
      end 

        def display_board
            puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
            puts "-----------"
            puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
            puts "-----------"
            puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
          end

          def input_to_index(input)
            input.to_i-1
          end 

        def move(index, token = "X")
            @board[index] = token
        end

        def position_taken?(index)
            @board[index] != " "

        end

        def valid_move?(index)
            !(position_taken?(index)) && index.between?(0,8)
        end

        def turn_count
            @board.count do |place|
                place != " "
            end
        end

        def current_player
            if turn_count.even? 
                "X"
            else 
                "O"

            end
        end

        def turn
puts "Please enter number"
user_input = gets.strip
index = input_to_index(user_input)
if valid_move?(index)
    token = current_player
    move(index, token)
else 
    turn

        end
        display_board
    end 

    def won?
        WIN_COMBINATIONS.any? do |combo|
            if position_taken?(combo[0]) && 
                @board[combo[0]] == @board[combo[1]] &&
                @board[combo[1]] == @board[combo[2]]
                return combo 
            end 
        end
    end

    def full?
          turn_count == 9
          end

          def draw?
            full? && !won?


          end

          def over?
            won? || draw?
          end

          def winner
            if won?
                if turn_count.odd?
                    "X"
                else
                    "O"
                end

            end
          end

          def play 
            until over?
                turn
            end 
            if won?
            victor = winner
            puts "Congratulations #{victor}!"
            elsif draw?
                puts "Cat's Game!"
          end
        end 
        
    

   

end 

TicTacToe.new


# initialize
#       assigns an instance variable @board to an array with 9 blank spaces " " (FAILED - 1)
#     WIN_COMBINATIONS
#       defines a constant WIN_COMBINATIONS with arrays for each win combination
#     #display_board
#       prints arbitrary arrangements of the board (FAILED - 2)
#     #input_to_index
#       accepts the user's input (a string) as an argument (FAILED - 3)
#       converts the user's input (a string) into an integer (FAILED - 4)
#       converts the user's input from the user-friendly format (on a 1-9 scale) to the array-friendly format (where the first index starts at 0) (FAILED - 5)
#     #move
#       allows "X" player in the top left and "O" in the middle (FAILED - 6)
#     #position_taken?
#       returns true/false based on whether the position on the board is already occupied (FAILED - 7)
#     #valid_move?
#       returns true/false based on whether the position is already occupied (FAILED - 8)
#       checks that the attempted move is within the bounds of the game board (FAILED - 9)
#     #turn_count
#       counts occupied positions (FAILED - 10)
#     #current_player
#       returns the correct player, X, for the third move (FAILED - 11)
#       returns the correct player, O, for the fourth move (FAILED - 12)
#     #turn
#       receives user input via the gets method (FAILED - 13)
#       calls #input_to_index, #valid_move?, and #current_player (FAILED - 14)
#       makes valid moves and displays the board (FAILED - 15)
#       asks for input again after a failed validation (FAILED - 16)
#     #won?
#       returns false for a draw (FAILED - 17)
#       returns the wi