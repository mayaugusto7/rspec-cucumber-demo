RSpec.describe Array, "with some elements" do
  subject(:array) { [1, 2, 3] } # system under test SUT, mais indicado do que o before hook

  it "has the prescribed elements" do
    expect(array).to eq([1, 2, 3])
  end
end