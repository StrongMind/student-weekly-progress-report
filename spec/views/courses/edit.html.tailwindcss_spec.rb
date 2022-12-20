require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  let(:course) {
    Course.create!(
      grade: 1.5,
      letter_grade: "MyString",
      name: "MyString"
    )
  }

  before(:each) do
    assign(:course, course)
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(course), "post" do

      assert_select "input[name=?]", "course[grade]"

      assert_select "input[name=?]", "course[letter_grade]"

      assert_select "input[name=?]", "course[name]"
    end
  end
end
