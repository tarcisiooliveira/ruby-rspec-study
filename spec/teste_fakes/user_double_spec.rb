describe 'Test Double' do
  before do
    # Classe User não existe no sistema e ainda assim o teste passará
    @user = double('User')
    allow(@user).to receive_messages(name: 'Tarcisio')
    allow(@user).to receive(:password).and_return('secret')
  end

  it { expect(@user.name).to be_eql('Tarcisio') }
  it { expect(@user.password).to be_eql('secret') }


  # um dublê de test é um objeto mockado
  # outro bastante utilizado é o stub
end