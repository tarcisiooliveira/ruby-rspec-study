require 'course'
require 'student'

# Mocks são para a fase de Verify
# são usados para testar comportamentos
# se uma ação foi executada(uma chamada de método)

describe 'Mock' do
  let(:student) { Student.new }

  it 'do método foo sucesso' do
    # Setup
    # student = Student.new
    # Verify
    expect(student).to receive(:foo)

    # Exercice
    student.foo
    # O teste aqui foi do comportamento da chamada do metodo :foo
    # se ele for chamado, o vefify passará

    # O padrão é invertido. Exercice/Verify
  end

  it 'método foo não foi executado' do
    expect(student).not_to receive(:foo)

    # student.foo
    # O teste aqui foi para saber se algum comportamento de chamada
    # do metodo :foo, como não houve a chamada, o teste passará.

    # O padrão é invertido. Exercice/Verify
  end

  it 'do método foo foi chamado duas vezes' do
    expect(student).to receive(:foo)
    expect(student).to receive(:foo)

    student.foo
    student.foo
  end

  it 'do método foo foi chamado duas vezes' do
    expect(student).to receive(:foo)
    expect(student).to receive(:foo)
    expect(student).to receive(:message)

    student.foo
    student.foo
    student.message('asd')
  end
end

describe 'Mock com restrição de argumento' do
  let(:student) { Student.new }

  it 'do método foo foi chamado duas vezes' do
    expect(student).to receive(:foo).twice
    expect(student).to receive(:message).with('asd')
    # expect(student).to not_receive(:message).with('dsa')

    student.foo
    student.foo
    student.message('asd')
    # student.message('asd')
  end

  it 'exatamente 3 vezes' do
    expect(student).to receive(:foo).exactly(3).times

    student.foo
    student.foo
    student.foo
  end

  it 'ao menos 2 vezes' do
    # expect(student).to receive(:foo).at_least(2).times
    expect(student).to receive(:foo).at_least(:twice)

    student.foo
    student.foo
    student.foo
  end

  it 'força retorno com parametro específico' do
    # expect(student).to receive(:foo).at_least(2).times
    expect(student).to receive(:bar).with(123).and_return(true)
    puts student.bar(123)
  end
end
