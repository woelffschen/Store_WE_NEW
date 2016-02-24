require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url",
        :colour => 1,
        :size => 2,
        :price => "9.99"
      ),
      Article.create!(
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url",
        :colour => 1,
        :size => 2,
        :price => "9.99"
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
