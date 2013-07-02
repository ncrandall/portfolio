require 'spec_helper'

describe 'Static Pages' do
	subject { page }

	describe 'Home Page' do
		before { visit root_path }

		it { should have_text "Nicholas Crandall" }

		it { should have_link "Entrepreneur" }
		it { should have_link "Rails Developer" }
		it { should have_link "Freelancer" }
	end
end