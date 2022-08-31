
describe '' do
  it 'Divide por 0' do
    expect { 3 / 0 }.to raise_exception #Generico demais
    expect { 3 / 0 }.to raise_exception(/divided by 0/)
    expect { 3 / 0 }.to raise_error(ZeroDivisionError)
  end
  it "matches the error message" do
    expect { raise StandardError, "my message" }.to raise_error(/my mess/)
  end
end