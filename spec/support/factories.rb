FactoryGirl.define do

  factory :user do
    sequence :username do |i|
      "julirocks#{i}"
    end
    sequence :email do |n|
      "julissa.jansen#{n}@gmail.com"
    end
    password 'password'
    password_confirmation 'password'
  end

  factory :post do
    title 'On the blue line today...'
    content 'it was crazy'
  end

  factory :comment do
    body 'first!'
    post
  end

end
