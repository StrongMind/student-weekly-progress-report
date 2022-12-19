require 'rails_helper'

RSpec.describe "reports/show", type: :view do
  before(:each) do
    assign(:report, Report.create!(
      comments: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
