# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end
end

FactoryGirl.define do
  factory :user, :class => 'User' do
    email
    password '12345678'
    password_confirmation '12345678'
  end


  factory :ig_user, parent: :user do
    after( :create ) do |user, evaluator|
      user.identities << create( :identity, provider: :instagram )
    end
  end
end