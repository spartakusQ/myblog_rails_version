FactoryGirl.define do
  factory :article do
    #создание новой фабрики article_with_comments
    factory :article_with_comments do
      #после слздания article
      after :create do |article, evaluator|
        #создаём список из 3 комментариев
        create_list :comment, 3, article: article
      end
    end
  end
end
