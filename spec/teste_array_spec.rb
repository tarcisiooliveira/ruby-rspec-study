describe Array.new([1,2,3]) do
  it { expect(subject).to include(2) }
  it { expect(subject).to include(2,1) }
  it { expect(subject).to include(2) }
  it { expect(subject).to match_array([1,2,3]) }
  it { expect(subject).to contain_exactly(1,2,3) }

end
