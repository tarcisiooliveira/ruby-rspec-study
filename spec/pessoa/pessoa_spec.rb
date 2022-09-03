require 'pessoa'
# https://gist.github.com/JunichiIto/f603d3fbfcf99b914f86
RSpec.describe Pessoa do
  before(:each)do
    puts "--->>>> Antes de cada Teste em si, bloco IT <<<<---"
    @pessoa =  Pessoa.new()
  end

  after(:each)do
    @pessoa.nome='Sem nome!'
    puts "Pessoa Nome ->>> #{@pessoa.nome}"
    puts "--->>>> Depois de cada Teste em si, bloco IT <<<<---"
  end

  it 'have_attributes specific' do

    @pessoa.nome = 'Tarcisio'
    @pessoa.idade = 30
    expect(@pessoa).to have_attributes(:nome => 'Tarcisio')
    expect(@pessoa).to have_attributes(:idade => 30)

  end
  it 'have_attributes specific' do

    @pessoa.nome = 'Tartaruga'
    @pessoa.idade = 30
    expect(@pessoa).to have_attributes(nome: eql('Tartaruga'))
    expect(@pessoa).to have_attributes(idade: a_value >=30)

  end
end