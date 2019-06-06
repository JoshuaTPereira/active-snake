require 'rails_helper'

RSpec.describe Direction, type: :model do
  it { should have_valid(:direction).when(FactoryBot.create(:direction, {direction: "Left"})) }
  it { should_not have_valid(:direction).when(nil) }
end
