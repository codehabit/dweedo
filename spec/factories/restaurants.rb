FactoryGirl.define do
  factory :restaurant do
    sequence(:name) {|n| "Pappas ##{n}"}
  end
end

