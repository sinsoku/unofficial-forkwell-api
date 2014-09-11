# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    company nil
    title "MyString"
    raw_description "MyText"
    published_at "2014-09-07 00:00:00"
    address "MyString"
    min_salary 1
    max_salary 1
  end
end
