# class Show

#   def show_board(board)
#     #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
#   end

# end




class Show
	
	def initialize(game)
		@game = game
	end

	def show_board
		rows_morp = [
			["A".colorize(:light_red), @game.board.cases[0].content, @game.board.cases[1].content, @game.board.cases[2].content],
			["B".colorize(:light_red), @game.board.cases[3].content, @game.board.cases[4].content, @game.board.cases[5].content],
			["C".colorize(:light_red), @game.board.cases[6].content, @game.board.cases[7].content, @game.board.cases[8].content]
		]

	Terminal::Table.new :headings => ['','1'.colorize(:light_red),'2'.colorize(:light_red),'3'.colorize(:light_red)],:rows => rows_morp, :style => {:border_x => "-".colorize(:white),:border_y => "|".colorize(:white),:border_i => "+".colorize(:white), :all_separators => true}
  end