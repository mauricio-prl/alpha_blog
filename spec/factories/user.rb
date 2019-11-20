FactoryBot.define do
  factory :user do
    username { FFaker::Name.name }
    email { FFaker::Internet.email }
    password { 'password' }
    admin { false }
  end
end
