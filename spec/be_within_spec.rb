RSpec.describe 'be_within' do
  describe 'simple' do
    it { expect(12.5).to be_within(0.5).of(12) }
    it { expect(12.0).to be_within(0.5).of(12) }
    it { expect(11.5).to be_within(0.5).of(12) }

    it { expect(11.4).not_to be_within(0.5).of(12) }
    it { expect(1.4).not_to be_within(0.5).of(12) }
    it { expect(15.4).not_to be_within(0.5).of(12) }
  end

  describe 'com ALL' do

    it { expect([11.5,12.0,12.5]).to all(be_within(0.5).of(12)) }
  end
end
