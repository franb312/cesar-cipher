require_relative 'cesar'  # Assuming your implementation is in a file named cesar.rb

RSpec.describe '#cesar_cypher' do
  it 'encrypts the input text using the Caesar Cipher with the specified shift' do
    expect(cesar_cypher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
  it 'encrypts the input text using the Caesar Cipher with a positive shift' do
    expect(cesar_cypher("Hello", 3)).to eq("Khoor")
  end

  it 'encrypts the input text using the Caesar Cipher with a negative shift' do
    expect(cesar_cypher("Hello", -3)).to eq("Ebiil")
  end

  it 'handles wrapping around the alphabet correctly' do
    expect(cesar_cypher("Zebra", 1)).to eq("Afcsb")
  end

  it 'encrypts text with both lowercase and uppercase letters' do
    expect(cesar_cypher("Hello World!", 5)).to eq("Mjqqt Btwqi!")
  end

  it 'leaves non-alphabetical characters unchanged' do
    expect(cesar_cypher("Hello, World!", 3)).to eq("Khoor, Zruog!")
  end

  it 'handles a shift that exceeds 26' do
    expect(cesar_cypher("Hello", 30)).to eq("Lipps")
  end

  it 'handles a large positive shift' do
    expect(cesar_cypher("Hello", 1000)).to eq("Lipps")
  end

  it 'handles a large negative shift' do
    expect(cesar_cypher("Hello", -1000)).to eq("Lipps")
  end
end