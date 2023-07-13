require 'rails_helper'

RSpec.describe "organizations/edit", type: :view do
  let(:organization) {
    Organization.create!(
      title: "MyString",
      phone: "MyString",
      email: "MyString",
      website: "MyString",
      description: "MyText",
      status: 1
    )
  }

  before(:each) do
    assign(:organization, organization)
  end

  it "renders the edit organization form" do
    render

    assert_select "form[action=?][method=?]", organization_path(organization), "post" do

      assert_select "input[name=?]", "organization[title]"

      assert_select "input[name=?]", "organization[phone]"

      assert_select "input[name=?]", "organization[email]"

      assert_select "input[name=?]", "organization[website]"

      assert_select "textarea[name=?]", "organization[description]"

      assert_select "input[name=?]", "organization[status]"
    end
  end
end
