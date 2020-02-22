defmodule SlackBotWithElixir do
  use Application

  def start(_type, _args) do
    Slack.Bot.start_link(SlackRtm, [], System.get_env("SLACK_BOT_API_TOKEN"))
  end
end
