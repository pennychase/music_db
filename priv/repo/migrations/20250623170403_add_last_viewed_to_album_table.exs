defmodule MusicDB.Repo.Migrations.AddLastViewedToAlbumTable do
  use Ecto.Migration

  def change do
    alter table(:albums) do
      add :last_viewed, :utc_datetime, null: true
    end
  end

end
