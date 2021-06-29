require 'game'

Quando("começo um novo jogo") do
  @game = Game.new
  @game.start
end

Então("vejo a seguinte mensagem na tela:") do |text|
  expect(@game.output).to include(text)
end