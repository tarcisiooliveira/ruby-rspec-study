RSpec.describe (1..5), 'Ranges' do
  it { expect(subject).to cover(2) }
  it { expect(subject).to cover(2,5) }
  it { expect(subject).not_to cover(0,6) }

  # one-lier syntax
  # descrições mais implicitas
  # o is_expected se torna o 'expect(subject)', reduzindo a
  it { is_expected.to cover(2) }
  it { is_expected.to cover(2,5) }
  it { is_expected.not_to cover(0,6) }
end