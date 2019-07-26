class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :players, :board, :current_player, :other_player


  def initialize(players, board)
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @board = Board.new #nouvelle grille de jeu
    @players = players
    @current_player, @other_player = players.array #ou .shuffle ?
  end


  def turn
    #TO DO : méthode faisant appel aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    @current_player, @other_player = @other_player, @current_player
  end


  def new_round < initialize
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    @board = Board.new
    @players = players
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    if victory? == true 
      puts "Victoire !"

    else
      puts "Game over"    
  end    

end