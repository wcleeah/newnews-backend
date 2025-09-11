defmodule Newnews.Crawler.Queries do
  defstruct keywords: [], queries: %{}
  alias Newnews.Crawler.Constant

  def create(:newsapiai, q) do
    {
      :newsapiai,
      %Newnews.Crawler.Queries{
        keywords: q.keywords,
        queries:
          %{
            keyword: q.keywords,
          }
          |> merge_queries(Constant.default(:newsapiai))
          |> merge_queries(q.queries)
      }
    }
  end

  def create(:worldnewsapi, q) do
    {
      :worldnewsapi,
      %Newnews.Crawler.Queries{
        keywords: q.keywords,
        queries:
          %{
            keyword: q.keywords,
          }
          |> merge_queries(Constant.default(:worldnewsapi))
          |> merge_queries(q.queries)
      }
    }
  end

  def create(_, _) do
    {:notsupported, %{}}
  end

  defp merge_queries(a, b) do
    Map.merge(a, b)
  end

end
