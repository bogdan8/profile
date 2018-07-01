class ArticleDecorator < ApplicationDecorator
  delegate_all

  def posted_date
    "Posted at #{posted_at}" if posted_at
  end
end
