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