defmodule Tilex.Repo.Migrations.AddUniqueConstraintToDevelopersGoogleId do
  use Ecto.Migration

  def change do
    create unique_index(:developers, [:google_id])
  end
end
