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

end
