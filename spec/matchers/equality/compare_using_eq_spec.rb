RSpec.describe "a string" do
  it "is equal to another string of the same value" do
    expect("this string").to eq("this string")
  end

  it "is not equal to another string of a different value" do
    expect("this string").to eq("a different string")
  end
end

RSpec.describe "an integer" do
  it "is equal to a float of the same value" do
    expect(5).to eq(5.0)
  end
end