require 'bundler'
require 'colorize'

Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/Game'
require 'app/Board'
require 'app/Player'
require 'app/BoardCase'
require 'app/Application'
require 'views/Show'

app = Application.new.perform

app.play_app



  # def perform
  #   # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
  #   # 

  # end