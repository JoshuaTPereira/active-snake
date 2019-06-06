require 'rails_helper'

RSpec.describe SnakeCoordinate, type: :model do
  it { should have_valid(:coordinate).when(FactoryBot.create(:coordinate)) }
  it { should_not have_valid(:coordinate).when(nil) }

  it { should have_valid(:snake).when(FactoryBot.create(:snake)) }
  it { should_not have_valid(:snake).when(nil) }
end
