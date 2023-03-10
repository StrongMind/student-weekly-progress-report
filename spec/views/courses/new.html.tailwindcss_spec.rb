require 'rails_helper'

RSpec.describe "courses/new", type: :view do
  before(:each) do
    assign(:course, Course.new(
      grade: 1.5,
      letter_grade: "MyString",
      name: "MyString"
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input[name=?]", "course[grade]"

      assert_select "input[name=?]", "course[letter_grade]"

      assert_select "input[name=?]", "course[name]"
    end
  end
end
