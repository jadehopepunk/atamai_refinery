
FactoryGirl.define do
  factory :category, :class => Refinery::References::Category do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

