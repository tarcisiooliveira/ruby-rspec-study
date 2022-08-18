require 'calculadora'

RSpec.describe Calculadora, "Descrição, opcional " do
  describe '#sum' do
    it 'positive numbers' do
      calc = Calculadora.new
      result = calc.somar(2, 2)
      expect(result).to be_eql(4)
    end

    it 'negative numbers' do
      calc = described_class.new
      calc.somar(-2, -2)
      expect(calc.somar(2, 2)).to be_eql(4)
    end

    it 'negative numbers' do
      result = subject.somar(-2, -2)
      expect(result).to be_eql(-4)
    end

    subject(:calc) {described_class.new()}

    it 'negative numbers' do
      result = subject.somar(-2, -2)
      expect(result).to be_eql(-4)
    end

    it 'positive numbers' do
      expect(described_class.new.somar(2, 2)).to be_eql(4)
    end

    it { expect(described_class.new.somar(2, 2)).to be_eql(4) }

    it { expect(described_class.new.somar(2, 2)).to be_eql(4) }
    it { expect(described_class.new.somar(-2, -2)).to be_eql(-4) }
    it { expect(described_class.new.somar(-2, 2)).to be_eql(0) }
  end

  # rspec ./spec/calculadora_spec.rb -e 'positive numbers'
  # rspec ./spec/calculadora_spec.rb:29
end