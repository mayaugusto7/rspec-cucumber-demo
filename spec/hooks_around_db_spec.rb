require 'database'

RSpec.describe "around hook" do
  around(:each) do |example|
    Database.transaction(&example)
  end

  it "runs the example as a proc" do
    puts "saving a lot of data in the database"
  end
end
