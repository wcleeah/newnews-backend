defmodule Newnews.Crawler.Constant do
  # maybe turn into json 
  def default(:newsapiai) do
    %{
      apiKey: api_key(:newsapiai),

      # response related config
      includeArticleTitle: true,
      includeArticleBody: false,
      includeArticleConcepts: true,
      includeArticleCategories: true,

      # default filter to only search for us news
      lang: "eng",
      sourceLocationUri: "http://en.wikipedia.org/wiki/United_States",

      # misc filter options
      isDuplicateFilter: "skipDuplicates",
      conceptOper: "or",
      categoryOper: "or",
      keywordOper: "or",
      keywordLoc: "title"
    }
  end

  def default(:worldnewsapi) do
    %{
      :"api-key" => api_key(:worldnewsapi),
      :"source-country" => "us",
      :"sort-direction" => "Desc",
      sort: "publish-time",
      number: 100
    }
  end

  def default(_) do
    {:notsupported, %{}}
  end

  def api_host(:newsapiai) do
    Application.fetch_env!(:newnews, :newsapi_ai_api_host)
  end

  def api_host(:worldnewsapi) do
    Application.fetch_env!(:newnews, :word_news_api_api_host)
  end

  def api_host(_) do
    :notsupported
  end

  def api_key(:newsapiai) do
    Application.fetch_env!(:newnews, :newsapi_ai_api_key)
  end

  def api_key(:worldnewsapi) do
    Application.fetch_env!(:newnews, :word_news_api_api_key)
  end

  def api_key(_) do
    :notsupported
  end

  def get_news_api_url(:newsapiai) do
    "/api/v1/article/getArticles"
  end

  def get_news_api_url(:worldnewsapi) do
    "/api/v1/article/getArticles"
  end

  def get_news_api_url(_) do
    :notsupported
  end
end
