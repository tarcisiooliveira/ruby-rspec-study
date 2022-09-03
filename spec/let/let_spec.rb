$counter=0

describe 'let' do
  let(:count) { $counter +=1 }

  it 'memoriza o valor' do
    expect(count).to eq(1) # primeira vez
    expect(count).to eq(1) # usa o valor cacheado
    expect(count).to eq(1) # usa o valor cacheado
    expect(count).to eq(1) # usa o valor cacheado
    expect(count).to eq(1) # usa o valor cacheado
  end

  it 'não cachea o valor entre testes' do
    expect(count).to eq(2) # fez nova utilização de count
    expect(count).to eq(2) # daí fez uma nova adição na variavel global
    expect(count).to eq(2) # então o valor foi incrementado e permanece em 2
    expect(count).to eq(2) # até o fim desse teste.
  end
end