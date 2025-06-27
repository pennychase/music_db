defmodule MusicDB.Music.Artist do
  use Ecto.Schema

  schema "artists" do
    field :name, :string
    has_many :albums, MusicDB.Music.Album
  end
end
