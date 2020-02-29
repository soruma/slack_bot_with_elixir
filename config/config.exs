import Config

config :goth,
  json: "./config/client_secret.json" |> File.read!
