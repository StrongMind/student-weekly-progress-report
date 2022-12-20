require 'rails_helper'

RSpec.describe "courses/index", type: :view do
  before(:each) do
    assign(:courses, [
      Course.create!(
        grade: 2.5,
        letter_grade: "Letter Grade",
        name: "Name"
      ),
      Course.create!(
        grade: 2.5,
        letter_grade: "Letter Grade",
        name: "Name"
      )
    ])
  end

  it "renders a list of courses" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Letter Grade".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
