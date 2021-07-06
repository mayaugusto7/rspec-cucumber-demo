require 'publishable_object'

RSpec.describe "A publishable object" do
  subject { PublishableObject.new }

  describe "#publish" do

    context "when saves the publication" do
      it "save the publication date" do
        subject.publish!

        today = Time.now.strftime("%Y-%m-%d")
        expect(subject.published_on).to eq(today)
      end
    end
  end
end
