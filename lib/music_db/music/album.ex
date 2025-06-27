defmodule MusicDB.Music.Album do
  use Ecto.Schema
  import Ecto.Query
  alias MusicDB.Music.{Album, Artist}

  schema "albums" do
    field :title, :string
    belongs_to :artist, Artist
  end

  def search(string) do
    from album in Album,
      where: ilike(album.title, ^"%#{string}%")
   end
end
