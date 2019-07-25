#la valeur par défaut de la cellule est vide
#cette classe sert à garder en mémoire la valeur de la cellule durant le jeu

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :value
  
  def initialize(value = "")
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @value = value
  end

end
  