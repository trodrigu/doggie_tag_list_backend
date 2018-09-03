defmodule DoggieTagCx.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias DoggieTagCx.User

  schema "users" do
    field(:name, :string)
    field(:email, :string)
    field(:password, :string, virtual: true)
    field(:password_hash, :string)
  end

  def changeset(%User{} = user, params \\ %{}) do
    user
    |> cast(params, [:email])
  end

  def registration_changeset(%User{} = user, params) do
    user
    |> changeset(params)
    |> cast(params, [:password, :email, :name])
    |> validate_required(:password)
    |> validate_length(:password, min: 6, max: 100)
    |> validate_confirmation(:password, message: "does not match password!")
    |> unique_constraint(:email)
    |> put_pass_hash()
  end

  def put_pass_hash(changeset) do
    case changeset do
      %Ecto.Changeset{valid?: true, changes: %{password: pass}} ->
        put_change(changeset, :password_hash, Comeonin.Bcrypt.hashpwsalt(pass))

      _ ->
        changeset
    end
  end
end
