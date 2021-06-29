require "bag_of_words"

RSpec.describe BagOfWords do
  it "is possible to put words on it" do
    bag = BagOfWords.new

    bag.put("hello", "world")

    # expect(bag.words.size).to eq(2)
    expected = bag.words.size
    expect(expected).to be_truthy
  end
end