json.array!(@blogs) do |blog|
  json.extract! blog, :title, :body, :published_date, :author
  json.url blog_url(blog, format: :json)
end