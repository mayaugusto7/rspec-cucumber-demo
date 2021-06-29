RSpec.describe 'a string' do
  context 'when is equal to itself' do
    it 'is equal to itself' do
      string = 'this string'
      expect(string).to be(string)
    end

    it "is not equal to another string of the same value" do
      expect("this string").not_to be("this string")
    end

    it "is not equal to another string of a different value" do
      expect("this string").not_to be("a different string")
    end
  end
end
