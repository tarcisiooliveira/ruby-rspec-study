$counter_let_bang = 0

describe 'let!' do
  ordem_invocacao = []
  let!(:count) do
    ordem_invocacao << :let!
    $counter_let_bang += 1
  end

  it 'chama o método helper antes do teste' do
    ordem_invocacao << :exemplo

    expect(ordem_invocacao).to eq([:let!, :exemplo]) # usa o valor cacheado
    expect(count).to eq(1) # usa o valor cacheado
  end
end