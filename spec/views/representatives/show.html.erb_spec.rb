require 'spec_helper'

describe "representatives/show" do
  before(:each) do
    @representative = assign(:representative, stub_model(Representative))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
