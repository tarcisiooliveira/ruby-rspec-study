require 'pessoa'
# https://gist.github.com/JunichiIto/f603d3fbfcf99b914f86
RSpec.describe Pessoa do

  it 'have_attributes specific' do
    pessoa =  Pessoa.new()
    pessoa.nome = 'Tarcisio'
    pessoa.idade = 30
    expect(pessoa).to have_attributes(:nome => 'Tarcisio')
    expect(pessoa).to have_attributes(:idade => 30)

  end
end