require 'spec_helper'

describe "focuses/index" do
  before(:each) do
    assign(:focuses, [
      stub_model(Focus,
        :content => "Content",
        :user_id => 1,
        :position => 2,
        :note => "MyText"
      ),
      stub_model(Focus,
        :content => "Content",
        :user_id => 1,
        :position => 2,
        :note => "MyText"
      )
    ])
  end

  it "renders a list of focuses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
