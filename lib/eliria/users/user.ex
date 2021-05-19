defmodule Eliria.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :username, :string

    has_many :assigned_tasks, Eliria.Tasks.Task, foreign_key: :assigned_to_id
    has_many :created_tasks, Eliria.Tasks.Task, foreign_key: :created_by_id

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :username])
    |> validate_required([:name, :username])
    |> unique_constraint(:username)
  end
end
