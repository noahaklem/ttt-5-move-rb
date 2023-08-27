require_relative "../lib/move.rb"

describe "#input_to_index" do
  it "defines a input_to_index method" do 
    expect(defined?(input_to_index)).to be_truthy
  end

  it "converts user_input to an integer" do 
    user_input = "1"
    converted_input = input_to_index(user_input)

    expect(converted_input).to be_a(Integer)
  end

  it "subtracts 1 from the user_input" do
    user_input = 5
    converted_input = input_to_index(user_input)

    expect(converted_input).to be(4)
  end

  it "returns -1 for strings without integers" do 
    user_input = "invalid"
    converted_input = input_to_index(user_input)

    expect(converted_input).to be(-1)
  end
end

# describe '#input_to_index' do

#   it 'converts a user_input to an integer' do
#     user_input = "1"
#     converted_input = input_to_index(user_input)
    
#     expect(converted_input).to be_a(Integer)
#   end

#   it 'subtracts 1 from the user_input' do
#     user_input = "6"
#     converted_input = input_to_index(user_input)

#     expect(converted_input).to be(5)
#   end

#   it 'returns -1 for strings without integers' do
#     user_input = "invalid"
#     converted_input = input_to_index(user_input)
    
#     expect(converted_input).to be(-1)
#   end

# end
