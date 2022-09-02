require_relative 'helpers/futebol'
# O require_relativo não é necessário se ele for carregado
# dentro da configuração padrão do Rspec


# RSpec.configure do |conf|
#   conf.include Helper
# end
# Forma Verbosa, polui o teste.
# Muito melhor inserir direto na configuração do Rspec


RSpec.describe 'Ruby on Rails' do
  it { is_expected.to start_with("Ruby").and end_with("Rails") }
  it { expect(fruta).to eq("banana").or eq("laranja").or eq("uva") }
  it { expect(times).to eq("Palmeiras").or eq("Vasco").or eq("Grêmio") }


  def fruta #helper method arbitrário
    %w(banana laranja uva).sample
  end
end