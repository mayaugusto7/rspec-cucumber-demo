RSpec.describe 'an integer' do
  context 'when eql value' do
    it 'is equal to another integer of the same value' do
      expect(5).to eql(5)
    end

    it 'is not equal to another integer of a different value' do
      expect(5).not_to eql(6)
    end

    it 'is not equal to a float of the same value' do
      expect(5).not_to eql(5.0)
    end
  end
end