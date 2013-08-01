# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user, :class => 'Users' do
    sequence(:login){ |i| "login_#{i}" }
    sequence(:email){ |i| "mail_#{i}@mail.ru" }
    password 'password'
    sequence(:name){ |i| "Name_#{i}"}
    sequence(:surname){ |i| "Surname_#{i}"}
    sequence(:middlename){ |i| "Middlename_#{i}"}
    date_of_birth '01-01-1987'
  end
end
