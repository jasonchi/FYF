require 'spec_helper'

describe "focuses/show" do
  before(:each) do
    @focus = assign(:focus, stub_model(Focus,
      :content => "Content",
      :user_id => 1,
      :position => 2,
      :note => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
  end
end
