class Category
  attr_reader :name, :subcategories

  def initialize(name)
    @name = name
    @subcategories = []
  end

  def add_subcategories(*subcategories)
    # TODO
  end
end