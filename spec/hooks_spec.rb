require 'game'

RSpec.describe Game, "in the final phase" do
  before do
    @game = Game.new
    @game.phase = :final
  end

  context "when the player hits the target" do
    before { @game.player_hits_target }

    it "congratulates the player" do
      expect(@game.output).to eq("Congratulations!")
    end

    it "sets the score to 100" do
      expect(@game.score).to eq(100)
    end
  end
end
