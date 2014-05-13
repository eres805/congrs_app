require 'spec_helper'

describe "representatives/index" do
  before(:each) do
    assign(:representatives, [
      stub_model(Representative),
      stub_model(Representative)
    ])
  end

  it "renders a list of representatives" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
