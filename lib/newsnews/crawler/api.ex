defmodule Newnews.Crawler.API do
  alias Newnews.Crawler.Constant
  alias Newnews.Crawler.Queries
  require Logger

  def get_news(:newsapiai, %Queries{queries: q}) do
    "#{Constant.api_host(:newsapiai)}#{Constant.get_news_api_url(:newsapiai)}"
    |> Req.post(json: q)
    |> handle_res
  end

  def get_news(:worldnewsapi, %Queries{queries: q}) do
    Constant.api_host(:worldnewsapi) <> Constant.get_news_api_url(:worldnewsapi)
    |> Req.post(json: q)
    |> handle_res
  end

  def get_news(_, _) do
    {:notsupported, %{}}
  end

  def handle_res({:ok, res}) do
    {:ok, res}
  end

  def handle_res({:error, res}) do
    # add a third element for the error message (or describe the error)
    {:error, res}
  end

end
