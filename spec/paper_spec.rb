require 'paper'

RSpec.describe Paper do
  describe "#publish" do

    context "when save paper publication" do
      it "saves the publication date" do
        paper = Paper.new

        paper.publish!

        today = Time.now.strftime("%Y-%m-%d")
        expect(paper.published_on).to eq(today)
      end
    end
  end
end
