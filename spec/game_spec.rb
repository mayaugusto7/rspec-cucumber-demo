require 'game'

RSpec.describe Game, "in the final phase" do
  context "when the player hits the target" do
    it "congratulates the player" do
      game = Game.new
      game.phase = :final

      game.player_hits_target

      expect(game.output).to eq("Congratulations!")
    end

    it "sets the score to 100" do
      game = Game.new
      game.phase = :final

      game.player_hits_target

      expect(game.score).to eq(100)
    end
  end
end
