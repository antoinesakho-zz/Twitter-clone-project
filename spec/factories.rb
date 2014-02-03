FactoryGirl.define do 
	factory :user do
		name "Antoine Test"
		email "antoine@test.com"
		password "foobar"
		password_confirmation "foobar"
	end
end