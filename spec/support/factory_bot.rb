require 'factory_bot'

FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password { 'password' }
    password_confirmation { 'password' }
  end

  factory :coordinate do
    column_position { Faker::Number.within(1..50) }
    row_position { Faker::Number.within(1..50) }
  end

  factory :direction do
    direction { ["Left", "Right", "Up", "Down"].sample }
  end

  factory :game do

  end

  factory :snake do
    direction { FactoryBot.create(:direction) }
    user { FactoryBot.create(:user) }
    game { FactoryBot.create(:game) }
  end

  factory :snake_coordinate do
    snake { FactoryBot.create(:snake) }
    coordinate { FactoryBot.create(:coordinate) }
    head { [false, true].sample }
  end

  factory :user_game do
    user { FactoryBot.create(:user) }
    game { FactoryBot.create(:game) }
  end
end
