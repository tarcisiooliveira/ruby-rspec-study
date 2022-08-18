describe "Verdadeiro e Falso" do

    it '#be true' do
      expect(1.odd?).to be(true)
      expect(2.even?).to be(true)
    end

    it '#be false' do
      expect(1.even?).to be(false)
      expect(2.odd?).to be(false)
    end

    it '#be_truethy' do
      expect(1.odd?).to be_truthy
      expect(2.even?).to be_truthy
    end

    it '#be_falsey' do
      expect(1.even?).to be_falsey
      expect(2.odd?).to be_falsey
    end
    it '#be_nil' do
      expect(defined? x).to be nil
      expect(defined? x).to be_nil
    end
end