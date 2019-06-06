require 'rails_helper'

RSpec.describe Coordinate, type: :model do
  it { should have_valid(:column_position).when(1) }
  it { should have_valid(:row_position).when(1) }

  it { should_not have_valid(:column_position).when(nil) }
  it { should_not have_valid(:row_position).when(nil) }

  it { should have_valid(:column_position).when(0) }
  it { should have_valid(:row_position).when(0) }

  it { should_not have_valid(:column_position).when(-1) }
  it { should_not have_valid(:row_position).when(-1) }

  it { should_not have_valid(:column_position).when(1.5) }
  it { should_not have_valid(:row_position).when(1.5) }
end
