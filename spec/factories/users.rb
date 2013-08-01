# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:login){ |i| "login_#{i}" }
    sequence(:email){ |i| "mail_#{i}@mail.ru" }
    encrypted_password "password"
    sequence(:name){ |i| "name_#{i}" }
    sequence(:surname){ |i| "surname_#{i}" }
    sequence(:middlename){ |i| "middlename_#{i}" }
    date_of_birth '01-01-1987'
  end
end
