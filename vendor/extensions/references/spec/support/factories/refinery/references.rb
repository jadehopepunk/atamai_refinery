
FactoryGirl.define do
  factory :reference, :class => Refinery::References::Reference do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

