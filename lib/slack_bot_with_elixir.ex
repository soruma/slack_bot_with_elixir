defmodule SlackBotWithElixir do
  alias SlackBotWithElixir.Slack.Rtm

  use Application

  def start(_type, _args) do
    Slack.Bot.start_link(Rtm, [], System.get_env("SLACK_BOT_API_TOKEN"))
  end
end
