require 'rails_helper'

RSpec.describe "organizations/new", type: :view do
  before(:each) do
    assign(:organization, Organization.new(
      title: "MyString",
      phone: "MyString",
      email: "MyString",
      website: "MyString",
      description: "MyText",
      status: 1
    ))
  end

  it "renders new organization form" do
    render

    assert_select "form[action=?][method=?]", organizations_path, "post" do

      assert_select "input[name=?]", "organization[title]"

      assert_select "input[name=?]", "organization[phone]"

      assert_select "input[name=?]", "organization[email]"

      assert_select "input[name=?]", "organization[website]"

      assert_select "textarea[name=?]", "organization[description]"

      assert_select "input[name=?]", "organization[status]"
    end
  end
end
