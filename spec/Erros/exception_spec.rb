# https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/raise-error-matcher
RSpec.describe '' do
  # expect(3 / 0).to raise_exception -> erro por conta que
  # O erro ecorre, a excessão é lançada, mas não consegue ser avaliado pois está dentro
  # dos parenteses ()
  # da mesma forma vai dar erro caso tente fazer
  # result = 3 / 0 -> aqui vai estourar o erro
  # expect(result).to raise_exception -> e não vai conseguir chegar nessa etava de avaliação

  # Dessa forma, com {3/0}, o rspec vai conseguir fazer com que a saída do resultado
  # inclusive os erros, sejam avaliados
  it 'Divide por 0' do
    expect { 3 / 0 }.to raise_exception #Funciona, mas é muito generico.
  end

  it { expect { 3 / 0 }.to raise_error(ZeroDivisionError) } #Pelo tipo
  it { expect { 3 / 0 }.to raise_error("divided by 0") } # Pela mensagem
  it { expect { 3 / 0 }.to raise_error(ZeroDivisionError, "divided by 0") } # os dois juntos
  it { expect { 3 / 0 }.to raise_exception(/divided by 0/) }# por Regex
  end