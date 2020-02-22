import Config

config :slack_bot_with_elixir, SlackBotWithElixir.Scheduler,
  timezone: "Asia/Tokyo",
  jobs: [
    {"*/15 * * * *", fn -> IO.puts "The time has come" end}
  ]
