RSpec.describe [1,3,5], 'Colecções com is_expected e + all' do
  it { is_expected.to all (be_odd).and be_an(Integer) }
end

RSpec.describe 'Colecções com all dentro do it' do
  it { expect([1,3,5]).to all((be_odd).and be_an(Integer)) }
  it { expect(['Rubys', 'Rails', 'Raios']).to all( start_with('R').and be_an(String).and include('s'))}
end