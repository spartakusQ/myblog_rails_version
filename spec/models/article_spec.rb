require "spec_helper"

describe Article do
  it { should have_many :comments }


  describe "#subject" do
    it "return the article title" do

      article = create(:article, title: "Lorem ipsum")

      expect(article.subject).to eq "Lorem ipsum"
    end
  end

  describe "last_comment" do
    it "returns the lasr cmment" do
      #создание статьи с комментариями
      article = create(:article_with_comments)

      #проверка
      expect(article.last_comment.body).to eq "comment body 3"

    end
  end
end
