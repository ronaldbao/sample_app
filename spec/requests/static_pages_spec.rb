require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it  "should have the content 'Sample App'"  do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'

      page.should have_content('Sample App')

    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text=>" | Home" )
    end

  end

  describe "Help page " do
    it "should have the content 'Help' " do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have right tilte " do
      visit "/static_pages/help"
      page.should have_selector('title', :text=>"Help")
    end

  end

  describe "About page" do
   it "should have the content 'About us'" do
     visit "/static_pages/about"
     page.should have_content('About us')
    end

    it "should have the title "  do
      visit "/static_pages/about"
      page.should have_selector('title', :text=>'About us')
    end

  end

end
