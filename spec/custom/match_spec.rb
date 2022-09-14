RSpec::Matchers.define :be_a_multiple_of do |expected|

  # actual == subject == 18
  # expected == 3
  match do |actual|
    actual % expected == 0
  end

  failure_message do |actual|
    "expected that #{actual} would be multiple of #{expected}"
  end

  description do
    "Custom sucsessful exit --->>> be a multiple of #{expected} <<<--- Custom sucsessful exit"
  end

end
describe 18, 'Custom Matcher' do
  it { is_expected.to be_a_multiple_of(3) }
end