require 'rspec'
require './models/stack'

RSpec.describe Stack, type: :model do
  describe "#push" do
    it "puts an element at the top of the stack" do
      stack = Stack.new

      stack.push(1)
      stack.push(2)

      expect(stack.top).to eq(2)
    end
  end

  describe "#pop" do
    it "pop an element at the top of the stack" do
      stack = Stack.new

      stack.push(2)
      stack.push(5)
      stack.push(1)

      stack.pop
      # stack.pop

      expect(stack.top).to eq(5)
      # expect(stack.top).to eq(2)
    end
  end
end
