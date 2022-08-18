describe "Matchers de Igualdade" do
    let!(:x) {"Ruby"}
    let!(:y) {"Ruby"}

    it '#equal testa igualdade de objeto' do
      expect(x).to equal(x)
      expect(x).not_to equal(y) # Testa se é o mesmo objeto, dessa forma, ele não deve ser igual Y e X
      # expect(x).to equal(y)
      # Compared using equal?, which compares object identity,
      # but expected and actual are not the same object. Use
      # `expect(actual).to eq(expected)` if you don't care about
      # object identity in this example.
    end

    it '#be se é o mesmo objeto' do
      expect(x).to be(x)
      expect(x).not_to be(y)
    end

    it '#be_eql testa igualdade de valores do objeto' do
      expect(x).to be_eql(y)
    end

    it '#eql testa igualdade de valores do objeto' do
      expect(x).to eql(y)
    end

    it '#be_eql testa igualdade de valores do objeto' do
      expect(x).to be_eql(y)
    end
end