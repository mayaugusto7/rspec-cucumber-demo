RSpec.describe "An around hook example" do
  around do |example|
    puts "Before the example"
    example.run
    puts "After the example"
  end

  it do
    puts "Inside the example"
  end
end
