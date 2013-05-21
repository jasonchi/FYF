require 'spec_helper'

describe "Home" do
  describe "GET /home/index" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get home_path
      response.status.should be(200)
    end

    it "should have the right content" do
        visit "/home/index"
        page.should have_selector('title',text:"Focusing Your Focus")
        page.should have_selector('h1',text: "Focusing Your Focus")
    end
  end
  
  describe "/home/about" do
    it "should have the right content " do
        visit "/home/about"
        page.should have_selector('title',text:"Focusing Your Focus | About")
        page.should have_selector('h1',text: "About")
    end
  end

  describe "/home/help" do 
    it "should have the right content " do
        visit "/home/help"
        page.should have_selector('title',text:"Focusing Your Focus | Help")
        page.should have_selector('h1',text: "Help")
    end
  end

end
