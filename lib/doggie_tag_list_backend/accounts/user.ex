defmodule DoggieTagCx.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias DoggieTagCx.User
  alias Comeonin.Bcrypt

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
    |> put_password_hash()
  end

  defp put_password_hash(
         %Ecto.Changeset{valid?: true, changes: %{password: password}} = changeset
       ) do
    change(changeset, password: Bcrypt.hashpwsalt(password))
  end

  defp put_password_hash(changeset), do: changeset
end
