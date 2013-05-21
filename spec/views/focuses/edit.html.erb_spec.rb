require 'spec_helper'

describe "focuses/edit" do
  before(:each) do
    @focus = assign(:focus, stub_model(Focus,
      :content => "MyString",
      :user_id => 1,
      :position => 1,
      :note => "MyText"
    ))
  end

  it "renders the edit focus form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => focuses_path(@focus), :method => "post" do
      assert_select "input#focus_content", :name => "focus[content]"
      assert_select "input#focus_user_id", :name => "focus[user_id]"
      assert_select "input#focus_position", :name => "focus[position]"
      assert_select "textarea#focus_note", :name => "focus[note]"
    end
  end
end
