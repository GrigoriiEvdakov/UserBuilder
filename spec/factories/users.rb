FactoryBot.define do
  factory :user do
    name { 'Иван' }
    patronymic { 'Петрович' }
    surname { 'Иванов' }
    email { 'ivanka@example.com' }
    age { 30 }
    nationality { 'Russian' }
    country { 'RU' }
    gender { 'male' }
  end
end
