defmodule Forum.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:forum_users) do
      add :fullname, :string, null: false, size: 40
      add :username, :string, null: false, size: 40
      add :email, :string, null: false
      add :password, :string, null: false, size: 10
      add :password_confirmation, :string, null: false, size: 10
      add :contact, :integer, null: false
      add :country, :string, null: false
      add :dob, :date
      add :role, :string
      add :about_me, :string
      add :image_url, :string
      add :follower_id, references(:forum_followers, on_delete: :delete_all)
      add :following_id, references(:forum_followings, on_delete: :delete_all)
    end

    create index(:forum_users, [:fullname])
    create index(:forum_users, [:email])
    create unique_index(:forum_users, [:fullname, :email])
  end
end
