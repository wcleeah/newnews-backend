defmodule Newnews do
  use Application
  require Logger

  def start(_, _) do
    { _, q } = Newnews.Crawler.Queries.create(:newsapiai, %Newnews.Crawler.Queries{
      keywords: ["key", "word"],
    })

    Logger.info(q)
    { _, res } = Newnews.Crawler.API.get_news(:newsapiai, q)
    Logger.info(res.body)
    Supervisor.start_link([], strategy: :one_for_one)
  end
end
