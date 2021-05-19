defmodule Eliria.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :name, :string
      add :description, :string

      add :assigned_to_id, references(:users)
      add :created_by_id, references(:users)

      timestamps()
    end

  end
end
