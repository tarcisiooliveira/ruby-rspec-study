describe 'Predicados' do
  # Ele usa os metodos do proprio ruby como auxiliares
  # retira o predicado que seria usado junto a instancia
  # e coloca o be na frente 1.odd? vira be_odd
  it 'odd' do
    expect(1.odd?).to be_truthy

    expect(1).to be_odd
    expect(1).to be_eql(1)
    expect(1).not_to be_eql(2)
  end
  it 'even' do
    expect(2.even?).to be_truthy
    expect(2).to be_even
    expect(2).to be_eql(2)
    expect(2).not_to be_eql(1)
  end
end