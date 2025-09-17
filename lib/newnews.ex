defmodule Newnews do
  use Application
  require Logger

  def start(_, _) do
    { _, q } = Newnews.Crawler.Queries.create(:newsapiai, %Newnews.Crawler.Queries{
      keywords: ["qbts"],
    })

    { _, res } = Newnews.Crawler.API.get_news(:newsapiai, q)
    
    res.body
    |> JSON.encode_to_iodata!
    |> then(&(File.write("output", &1)))

    Supervisor.start_link([], strategy: :one_for_one)
  end
end
