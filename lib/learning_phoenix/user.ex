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
    user
    |> cast(attrs, [:name, :email, :password])
    |> validate_required([:name, :email, :password])
    |> validate_length(:name, min: 2)
    |> validate_length(:name, max: 30)
    |> valid_email(:email)
  end

  def valid_email(changeset, field) do
    value = get_field(changeset, field)
    if value =~ "@" do
      changeset
    else
      add_error(changeset, field, "invalid email")
    end
  end
end
