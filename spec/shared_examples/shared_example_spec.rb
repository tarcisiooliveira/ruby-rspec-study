require 'pessoa'

shared_examples 'status' do |sentimento|
  it "#{sentimento}" do
    pessoa.send("#{sentimento}!")
    expect(pessoa.status).to eq("Sentindo-se #{sentimento.capitalize}!")
  end
end

describe 'Pessoa' do
  subject(:pessoa) { Pessoa.new }

  #O include não lança a mensagem informativa que o behaves e should_behave lançam
  include_examples 'status', :feliz

  # behaves like status
  it_behaves_like 'status', :triste
  # it should behave like status
  it_should_behave_like 'status', :contente

  #Cada um desses acima executa os testes compartilhados

  # it 'feliz!' do
  #   pessoa.feliz!
  #   expect(pessoa.status).to eq("Sentindo-se feliz!")
  # end

  # it 'triste!' do
  #   pessoa.triste!
  #   expect(pessoa.status).to eq("Sentindo-se triste!")
  # end

  # it 'contente!' do
  #   pessoa.contente!
  #   expect(pessoa.status).to eq("Sentindo-se contente!")
  # end
end