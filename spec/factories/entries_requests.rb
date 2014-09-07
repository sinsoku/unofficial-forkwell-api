# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry_request do
    type 'twitter'
    username 'MyString'
    password 'MyString'
    job_id 0
    intendment 'join_soon'
    salary '1000'
  end
end
