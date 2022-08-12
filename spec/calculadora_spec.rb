require 'calculadora'

RSpec.describe Calculadora do
  describe '#sum' do

    it 'positive numbers' do
      calc = Calculadora.new
      result = calc.somar(2, 2)
      expect(result).to be_eql(4)
    end

    it 'positive numbers' do
      calc = described_class.new
      calc.somar(2, 2)
      expect(calc.somar(2, 2)).to be_eql(4)
    end

    it 'positive numbers' do
      expect(described_class.new.somar(2, 2)).to be_eql(4)
    end

    it { expect(described_class.new.somar(2, 2)).to be_eql(4) }
  end
end