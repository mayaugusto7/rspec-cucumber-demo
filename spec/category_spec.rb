require 'category'
require 'subcategory'

RSpec.describe Category do
  context 'when contains all products of its subcategories' do
    it 'return true' do
      electronics = Category.new('electronics')
      computers = Subcategory.new('computers')
      cell_phones = Subcategory.new('cell phones')
      computers.add_product('MacBook')
      cell_phones.add_product('iPhone')

      electronics.add_subcategories(computers, cell_phones)
      electronics_products = electronics.subcategories.flat_map(&:products)

      expect(electronics_products).to include('MacBook', 'iPhone')
    end
  end
end