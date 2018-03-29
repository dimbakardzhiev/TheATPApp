require 'rails_helper'

RSpec.describe User, type: :model do
	describe 'user validations' do
		subject(:user) {User.new}
		before {user.valid?}

		[:name, :email, :password].each do |a|
			it 'should validate presence of #{a}' do
				expect(user.errors[a].size).to be >= 1
				expect(user.errors.messages[a]).to include "can't be blank"
			end
		end
	end
end

RSpec.describe User, type: :model do
	it 'should validate email' do
		user = User.new
		user.valid?
		expect(user.errors.messages[:email]).to include "is invalid"
	end
end

feature 'signing up' do
    scenario "validate email" do
        visit 'users/new'
        expect(page).to have_content('Sign up')
        fill_in 'Name', :with=>'Admin'
        fill_in 'Email', :with=>'admin@theatpapp.com'
        fill_in 'Password', :with=>'foobar'
        fill_in 'Confirmation', :with=>'foobar'
        click_button 'Create my account'
        expect(page).to have_content('Please check your email to activate your account.')
	 end

	 scenario "password error" do
        visit 'users/new'
        expect(page).to have_content('Sign up')
        fill_in 'Name', :with=>'Admin'
        fill_in 'Email', :with=>'admin@theatpapp.com'
        fill_in 'Password', :with=>'foo'
        fill_in 'Confirmation', :with=>'foo'
        click_button 'Create my account'
        expect(page).to have_content('is too short (minimum is 6 characters)')
    end

    scenario "confirmation not match" do
        visit 'users/new'
        expect(page).to have_content('Sign up')
        fill_in 'Name', :with=>'Admin'
        fill_in 'Email', :with=>'admin@theatpapp.com'
        fill_in 'Password', :with=>'foobar'
        fill_in 'Confirmation', :with=>'barfoo'
        click_button 'Create my account'
        expect(page).to have_content('confirmation doesn\'t match Password')
    end
end