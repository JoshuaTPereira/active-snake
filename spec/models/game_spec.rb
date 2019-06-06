require 'rails_helper'

RSpec.describe Game, type: :model do
  it { should have_valid(:id).when(FactoryBot.create(:game)) }
  it { should have_valid(:id).when(nil) }
end
