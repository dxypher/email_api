require 'rubygems'
require 'bundler'
require 'json'

Bundler.require

require './email_api'
run Sinatra::Application