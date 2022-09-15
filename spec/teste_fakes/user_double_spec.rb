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

describe 'as_null_object' do
  # as_null_object, quando der qualquer chamada de erro para o dublê,
  # a mensagem não será exibida.
  let(:user) { double('User').as_null_object }

  before do
    # Classe User não existe no sistema e ainda assim o teste passará
    allow(user).to receive_messages(name: 'Tarcisio')
    allow(user).to receive(:password).and_return('secret')
  end

  it { expect(user.name).to be_eql('Tarcisio') }
  it { expect(user.password).to be_eql('secret') }
  it { user.metodo_que_nao_existe }


  # um dublê de test é um objeto mockado
  # outro bastante utilizado é o stub
end