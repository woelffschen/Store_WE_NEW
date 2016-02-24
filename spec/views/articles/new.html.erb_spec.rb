require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :colour => 1,
      :size => 1,
      :price => "9.99"
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "textarea#article_description[name=?]", "article[description]"

      assert_select "input#article_image_url[name=?]", "article[image_url]"

      assert_select "input#article_colour[name=?]", "article[colour]"

      assert_select "input#article_size[name=?]", "article[size]"

      assert_select "input#article_price[name=?]", "article[price]"
    end
  end
end
