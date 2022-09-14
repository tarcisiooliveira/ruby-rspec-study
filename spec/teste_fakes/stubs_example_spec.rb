require 'course'
require 'student'

# stub nada mais é do que forçar uma resposta específica para um determinado
# metodo de um objeto

describe 'Stub' do
  before do
    @student = Student.new
    @course = Course.new

    # receive define o metodo stub'ado
    # with restringe os argumentos que serão recebidos
    # with

    allow(@student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)
  end

  it { expect(@student.has_finished?(@course)).to be_truthy }

  it 'Dynamics args' do
    student = Student.new

    allow(student).to receive(:message) do |arg|
     if arg == :hello
      "Hello!"
     elsif arg == :hi
      "Hi!!"
     end
    end

    expect(student.message(:hi)).to eq('Hi!!')
    expect(student.message(:hello)).to eq('Hello!')
  end

  it 'Any Instance of' do
    student = Student.new
    second_student = Student.new

    allow_any_instance_of(Student).to receive(:message).and_return("Hi!!")
    
    expect(student.message(:hi)).to eq('Hi!!')
    expect(second_student.message(:hi)).to eq('Hi!!')
  end

end