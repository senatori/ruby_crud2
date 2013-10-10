require 'spec_helper'

describe "Static pages" do

  subject { page }  #replaces expect(page) redundancy crap- see Old way

  describe "Home page" do
    before { visit root_path }  #prevents from having to repeatedly use visit root_path function in each do end clause

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  
end