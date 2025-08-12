defmodule LearningPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :learning_phoenix,
    adapter: Ecto.Adapters.SQLite3
end
