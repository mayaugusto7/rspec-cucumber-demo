class Game
  attr_reader :output
  attr_accessor :phase
  attr_accessor :ui

  def initialize(ui)
    @ui = ui
    @output = []
    @phase = :start
  end

  def start
    @output << "Bem-vindo ao jogo da forca!"
  end

  def score
    if @phase == :final
      100
    end
  end

  def player_hits_target
    if @phase == :final
      @output = "Congratulations!"
    end
  end
end