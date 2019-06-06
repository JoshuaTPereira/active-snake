require 'rails_helper'

RSpec.describe Snake, type: :model do
  it { should have_valid(:direction).when(FactoryBot.create(:direction)) }
  it { should_not have_valid(:direction).when(nil) }

  it { should have_valid(:user).when(FactoryBot.create(:user)) }
  it { should_not have_valid(:user).when(nil) }

  it { should have_valid(:game).when(FactoryBot.create(:game)) }
  it { should_not have_valid(:game).when(nil) }
end
