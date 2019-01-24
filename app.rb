require 'bundler'
Bundler.require
$:.unshift File.expand_path('./../lib', __FILE__)

require 'app/rooter.rb'
require 'app/controller.rb'
require 'app/morpion.rb'
require 'views/index.rb'
require 'views/board.rb'

rooter = Rooter.new
rooter.perform
rooter.end_game