class Stack
  def initialize
    @elements = []
    # @last_element_index = -1
  end

  def push(element)
    @elements << element
  end

  def top
    @elements.last
  end

  def pop
    @elements.pop
  end
end