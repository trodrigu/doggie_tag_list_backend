defmodule DoggieTagCx.Repo.Migrations.CreateDoggieTagCx do
  use Ecto.Migration

  def change do
    create table(:orders) do
      add(:contact_number, :string)
      add(:design, :string)
      add(:dog_name, :string)
      add(:phone_number, :string)
      add(:shipping_address, :string)
      add(:size, :string)
      add(:wood, :string)
    end
  end
end
