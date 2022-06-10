require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should not save and article without a title" do
    article = Article.new
    assert_not article.save
  end

  test "The database is seeded with two articles" do
    article_count = Article.all.size
    assert_equal article_count, 2
  end

  test "should report error" do
    # some_undefined_variable is not defined elsewhere in the test case
    assert_raises(NameError) do
      some_undefined_variable
    end
  end
end
