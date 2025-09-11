import Config

config :newnews, :newsapi_ai_api_key, System.get_env("NEWSAPI_AI_API_KEY")
config :newnews, :newsapi_ai_api_host, System.get_env("NEWSAPI_AI_API_HOST")
config :newnews, :world_news_api_api_key, System.get_env("WORLD_NEWS_API_API_KEY")
config :newnews, :world_news_api_api_host, System.get_env("WORLD_NEWS_API_API_HOST")
