require 'rails_helper'

RSpec.describe "line_items/index", type: :view do
  before(:each) do
    assign(:line_items, [
      LineItem.create!(
        :title => "Title",
        :quantity => 1,
        :price => "9.99",
        :total => "9.99"
      ),
      LineItem.create!(
        :title => "Title",
        :quantity => 1,
        :price => "9.99",
        :total => "9.99"
      )
    ])
  end

  it "renders a list of line_items" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
