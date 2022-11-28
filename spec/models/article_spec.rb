require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:article) { Article.new }
  it "should return ok" do
    expect(article.read_star).to eq(60)
  end
end
