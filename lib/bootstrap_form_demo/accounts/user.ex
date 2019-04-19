defmodule BootstrapFormDemo.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :active, :boolean, default: false
    field :age, :integer
    field :bio, :string
    field :colors, :string
    field :email, :string
    field :language, :string
    field :country, :string
    field :favorite_colors, :string
    field :name, :string
    field :password, :string

    timestamps()
  end

  @required_fields [:name, :age, :email, :password, :bio, :country, :language, :active, :favorite_colors]

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, @required_fields)
    |> validate_required(@required_fields)
  end
end
