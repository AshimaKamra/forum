defmodule Forum.Repo.Migrations.CreateFollowings do
  use Ecto.Migration

  def change do
    create table(:forum_following) do
      add :count, :integer
      add :user_ids, {:array, :integer}
    end
  end
end
