defmodule LearningPhoenix.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :email, :string
    field :password, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user, attrs) do
    IO.puts("called")
    user
    |> cast(attrs, [:name, :email, :password])
    |> validate_required([:name, :email, :password])
    |> validate_length(:name, min: 2)
    |> validate_length(:name, max: 30)
    |> validate_format(:email, ~r/.+@.+\.[a-z]+/)
    |> unique_constraint(:email)
  end
end
