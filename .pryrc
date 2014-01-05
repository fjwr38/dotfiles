begin
  p 'welcome to pry...'

  #enable visual for pry
  require "awesome_print"
  AwesomePrint.pry!

  #enable model visual
  require 'hirb'
rescue LoadError
end
