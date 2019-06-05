require 'test_helper'

  class CreateNewArticle < ActionDispatch::IntegrationTest

    test "shouldn't create a new article without title and description" do
    article = Article.new()
    assert_not article.save
  end
end
