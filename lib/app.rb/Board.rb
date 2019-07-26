#initialisation de la grille avec 9cellules (9 nouveaux BoardCase)


class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :cases


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
    :cases = [A1, A2, A3, B1, B2, B3, C1, C2, C3]

  end


  # def play_turn
  #   #TO DO : une méthode qui :
  #   #1) demande au bon joueur ce qu'il souhaite faire
  #   #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  # end



  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    #verifier les 3 colonnes les 3 lignes et les 2 diagonales
    if check_lines or check_columns or check_diagos
      true

    else
      false

    end
  end



  def check_lines # On vérifie chaque ligne
    
    if @cases[0].content != " " and [@cases[0].content, @cases[1].content, @cases[2].content] == [@cases[0].content, @cases[0].content, @cases[0].content] 
    colorize_win(@cases[0], @cases[1], @cases[2]) # Si c'est bon on color en vert les cases
    return true
    
    elsif @cases[3].content != " " and [@cases[3].content, @cases[4].content, @cases[5].content] == [@cases[3].content, @cases[3].content, @cases[3].content]
    colorize_win(@cases[3], @cases[4], @cases[5])
    return true
    
    elsif @cases[6].content != " " and [@cases[6].content, @cases[7].content, @cases[8].content] == [@cases[6].content, @cases[6].content, @cases[6].content]
    colorize_win(@cases[6], @cases[7], @cases[8])
    return true
    
    else
    return false 

    end

  end



  def check_columns

    if @cases[0].content != " " and [@cases[0].content, @cases[3].content, @cases[6].content] == [@cases[0].content, @cases[0].content, @cases[0].content]
    colorize_win(@cases[0], @cases[3], @cases[6])
    return true
    
    elsif @cases[1].content != " " and [@cases[1].content, @cases[4].content, @cases[7].content] == [@cases[1].content, @cases[1].content, @cases[1].content]
    colorize_win(@cases[1], @cases[4], @cases[7])
    return true

    elsif @cases[2].content != " " and [@cases[2].content, @cases[5].content, @cases[8].content] == [@cases[2].content, @cases[2].content, @cases[2].content]
    colorize_win(@cases[2], @cases[5], @cases[8])
    return true

    else
    return false 
  
    end

  end



  def check_diagos
    
    if @cases[0].content != " " and [@cases[0].content, @cases[4].content, @cases[8].content] == [@cases[0].content, @cases[0].content, @cases[0].content]
    colorize_win(@cases[0], @cases[4], @cases[8])
    return true

    elsif @cases[2].content != " " and [@cases[2].content, @cases[4].content, @cases[6].content] == [@cases[2].content, @cases[2].content, @cases[2].content]
    colorize_win(@cases[2], @cases[4], @cases[6])
    return true
    
    else
    return false 
    
    end

  end

  def colorize_win(cells1, cells2, cells3) # Colore les cases
    cells1.change_color
    cells2.change_color
    cells3.change_color
  end


end

