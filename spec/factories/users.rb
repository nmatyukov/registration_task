# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:login){ |i| "login_#{i}" }
    sequence(:email){ |i| "mail_#{i}@mail.ru" }
    password 'password'
    sequence(:name){ |i| "name_#{i}" }
    sequence(:surname){ |i| "surname_#{i}" }
    sequence(:middlename){ |i| "middlename_#{i}" }
    date_of_birth '01-01-1987'

    factory :sample_user do
      login 'Nik'
      email 'mail@mail.ru'
      password '123456789'
      name 'Nik'
      surname 'Nik'
      middlename 'Nik'
      date_of_birth '01-01-1987'
    end

    factory :sample_user_another_login do
      login 'Nickname'
      email 'mail@mail.ru'
      password '123456789'
      name 'Nik'
      surname 'Nik'
      middlename 'Nik'
      date_of_birth '01-01-1987'
    end

    factory :sample_user_small_case_login do
      login 'Nickname'
      email 'mail@mail.ru'
      password '123456789'
      name 'Nik'
      surname 'Nik'
      middlename 'Nik'
      date_of_birth '01-01-1987'
    end
  end
end
