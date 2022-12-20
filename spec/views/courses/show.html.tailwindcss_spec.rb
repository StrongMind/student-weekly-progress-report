require 'rails_helper'

RSpec.describe "courses/show", type: :view do
  before(:each) do
    assign(:course, Course.create!(
      grade: 2.5,
      letter_grade: "Letter Grade",
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Letter Grade/)
    expect(rendered).to match(/Name/)
  end
end
