defmodule BootstrapFormDemo.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      add :password, :string
      add :bio, :string
      add :language, :string
      add :country, :string
      add :favorite_colors, :string
      add :active, :boolean, default: false, null: false

      timestamps()
    end

  end
end
