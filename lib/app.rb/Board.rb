#initialisation de la grille avec 9cellules (9 nouveaux BoardCase)


class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :grille


  def initialize
    #TO DO :

    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    A1 = BoardCase.new(1)
    A2 = BoardCase.new(2)
    A3 = BoardCase.new(3)
    B1 = Boardcase.new(4)
    B2 = BoardCase.new(5)
    B3 = BoardCase.new(6)
    C1 = BoardCase.new(7)
    C2 = BoardCase.new(8)
    C3 = BoardCase.new(9)

    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    :grille = [A1, A2, A3, B1, B2, B3, C1, C2, C3]

  end


  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    #verifier les 3 colonnes les 3 lignes et le 2 diagonales



    
  end