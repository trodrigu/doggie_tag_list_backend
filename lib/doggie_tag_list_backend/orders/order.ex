defmodule DoggieTagCx.Order do
  use Ecto.Schema
  import Ecto.Changeset
  alias DoggieTagCx.Order
  alias DoggieTagCx.Repo

  schema "orders" do
    field(:contact_number, :string)
    field(:design, :string)
    field(:dog_name, :string)
    field(:phone_number, :string)
    field(:shipping_address, :string)
    field(:size, :string)
    field(:wood, :string)
  end

  def changeset(%Order{} = order, params \\ %{}) do
    order
    |> cast(params, [
      :contact_number,
      :design,
      :dog_name,
      :phone_number,
      :shipping_address,
      :size,
      :wood
    ])
  end

  def create(attrs \\ %{}) do
    %Order{}
    |> changeset(attrs)
    |> Repo.insert()
  end
end
