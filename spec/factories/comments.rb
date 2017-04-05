FactoryGirl.define do
  factory :comment do
    author "bob"
    sequence(:body) { |n| "comment body #{n}"}
  end
end
