require "spec_helper"

describe Article do
  it { should have_many :comments }


  describe "#subject" do
    it "return the article title" do

      article = create(:article, title: "Lorem ipsum")

      expect(article.subject).to eq "Lorem ipsum"
    end
  end
end
