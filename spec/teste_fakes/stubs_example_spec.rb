require 'course'
require 'student'

# stub nada mais é do que forçar uma resposta específica para um determinado
# metodo de um objeto
end
describe 'Stub' do
  before do
    @student = Student.new
    @course = Course.new
    
    allow(@student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)
  end

  it { expect(@student.has_finished?(@course)).to be_truthy }
end