#config.ru

require 'sinatra'
require './app'

run Sinatra::Application

$stdout.sync = true
