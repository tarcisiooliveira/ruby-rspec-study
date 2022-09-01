describe "Test" do
  # subject se refere ao 'Test'
  it 'described class "Test" has size 4' do
    expect(subject.size).to be_eql(4)
  end
  it 'described class "Test" start with T' do
    expect(subject).to start_with("T")
  end
  it 'described class "Test" match patern Test' do
    expect(subject).to match(/Test/)
  end
  it 'described class "Test" be String type' do
    expect(subject.class).to eql(String)
  end
end
