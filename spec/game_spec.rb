require 'game'
require 'twitter_ui'

RSpec.describe Game, "in the final phase" do
  subject(:game) { Game.new(ui) }
  let(:ui) { TwitterUi.new("sandbox_username", "sandbox_password")}

  context "when the player hits the target" do
    it "congratulates the player" do
      # game = Game.new
      game.phase = :final

      game.player_hits_target

      expect(game.output).to eq("Congratulations!")
    end

    it "sets the score to 100" do
      # game = Game.new
      game.phase = :final

      game.player_hits_target

      expect(game.score).to eq(100)
    end

    it "congratulates the player" \
       "when the player hits the target" do
      game.player_hits_target

      expect(game.output).to include("Congratulations!")
    end
  end
end
