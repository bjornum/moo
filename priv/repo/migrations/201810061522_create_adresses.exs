defmodule Moo.Repo.Migrations.CreateAdresses do
  use Ecto.Migration

  def change do
    create table(:adresses) do
      add :adress, :string
      add :post_number, :integer
      add :city, :string
      add :country, :string
      add :user_id, references(:users)
      timestamps()
    end
    create index(:adresses, [:user_id])
  end
end
