require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:orders, Order.new(
      :name => "MyString",
      :address => "MyText",
      :email => "MyString",
      :pay_type => "MyString"
    ))
  end

  it "renders new orders form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_name[name=?]", "orders[name]"

      assert_select "textarea#order_address[name=?]", "orders[address]"

      assert_select "input#order_email[name=?]", "orders[email]"

      assert_select "input#order_pay_type[name=?]", "orders[pay_type]"
    end
  end
end
