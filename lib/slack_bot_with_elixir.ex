defmodule SlackBotWithElixir do
  alias SlackBotWithElixir.Slack.Rtm

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false
    children = [SlackBotWithElixir.Scheduler]
    opts = [strategy: :one_for_one, name: SlackBotWithElixir.Supervisor]
    Supervisor.start_link(children, opts)

    Slack.Bot.start_link(Rtm, [], System.get_env("SLACK_BOT_API_TOKEN"))
  end
end
