defmodule Forum.Repo.Migrations.CreateFollowers do
  use Ecto.Migration

  def change do
    create table(:forum_follower) do
      add :count, :integer
      add :user_id, :string
    end

  end
end
