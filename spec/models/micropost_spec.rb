require 'spec_helper'

	describe Micropost do
		
		let(:user) {FactoryGirl.create(:user)}
		before { @micropost = user.microposts.build(content:"lorem ipsum") }
		

		subject {@micropost}

		it {should respond_to(:content)}
		it {should respond_to(:user_id)}
		it {should be_valid}
		it {should respond_to(:user)}
		its(:user) {should eq user}

		describe "when no user id" do
			before {@micropost.user_id = nil}
			it {should_not be_valid}
		end

		describe "when content blank" do
			before {@micropost.content = " "}
			it {should_not be_valid}
		end

		describe "when content is too long" do
			before {@micropost.content = " x " * 141}
			it {should_not be_valid}
		end
	end