defmodule Eliria.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :description, :string
    field :name, :string

    belongs_to :assigned_to, Eliria.Users.User, foreign_key: :assigned_to_id
    belongs_to :created_by, Eliria.Users.User, foreign_key: :created_by_id

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:name, :description, :assigned_user_id, :created_by_user_id])
    |> validate_required([:name, :description, :assigned_user_id, :created_by_user_id])
  end
end
