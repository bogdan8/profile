# frozen_string_literal: true

json.articles do
  json.array!(@articles) do |article|
    json.title article.title
    json.url article_path(article)
  end
end
