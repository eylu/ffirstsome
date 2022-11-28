require 'rails_helper'

RSpec.describe Star do
  it "should return ok" do
    expect(Star.read_star).to eq(60)
  end
end
