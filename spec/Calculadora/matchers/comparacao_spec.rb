describe "Matchers de Comparação" do
    it { expect(5).to be > 1 }
    it { expect(5).to be >= 1 }
    it { expect(5).to be >= 5 }
    it { expect(5).to be < 6 }
    it { expect(5).to be <= 6 }
    it { expect(5).to be_between(2, 7) }
    it { expect(2).to be_between(2, 7) }
    it { expect(7).to be_between(2, 7) }
    it { expect(2).to be_between(2, 7).inclusive }
    it { expect(7).to be_between(2, 7).inclusive }
    it { expect(7).not_to be_between(2, 7).exclusive }
    it { expect(2).not_to be_between(2, 7).exclusive }
end