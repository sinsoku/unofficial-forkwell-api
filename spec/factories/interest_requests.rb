# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :interest_request do
    type 'twitter'
    username 'MyString'
    password 'MyString'
    job_id 0
  end
end
