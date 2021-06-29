RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    (actual % expected) == 0
  end
end

RSpec.describe 'The be_a_multiple_of custom matcher' do
  context 'when a number of multiple' do
    it 'return multiple true or false' do
      expect(21).to be_a_multiple_of(7)
      expect(21).to be_a_multiple_of(3)
      expect(21).not_to be_a_multiple_of(3)
    end
  end
end