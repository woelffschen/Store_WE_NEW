require 'rails_helper'

RSpec.describe "line_items/show", type: :view do
  before(:each) do
    @line_item = assign(:line_item, LineItem.create!(
      :title => "Title",
      :quantity => 1,
      :price => "9.99",
      :total => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
